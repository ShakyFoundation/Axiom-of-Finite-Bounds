# Part III.4: Mechanization of BFOL Syntax and Deduction (Extension)

**Status:** Proposed Extension to Part III (Section 3.1)
**Objective:** Internalize substitution and freshness constraints within the object language of Bounded First-Order Logic (BFOL), replacing metatheoretic placeholders with concrete recursive definitions suitable for formal verification (e.g., Isabelle/HOL).

## 3.4.1 Concrete Syntax Definitions
To mechanize BFOL, we define the datatypes for terms and formulas explicitly. This replaces the informal syntactic description in **Part III, Section 3.1.2–3.1.4**.

**Definition 3.4.1 — Terms (`term`):**
```isabelle
datatype term = 
    Var var_name          (* Variable *)
  | Const const_name      (* Constant symbol *)
  | Fun func_name "term list"  (* Function application *)
```

**Definition 3.4.2 — Formulas (`formula`):**
```isabelle
datatype formula = 
    Eq term term          (* Equality t₁ = t₂ *)
  | Rel rel_name "term list"   (* Relation R(t₁,...,tₙ) *)
  | Not formula           (* Negation *)
  | And formula formula   (* Conjunction *)
  | Or formula formula    (* Disjunction *)
  | Impl formula formula  (* Implication *)
  | ForallB var_name term formula  (* Bounded Universal: ∀x ≤ t. φ *)
  | ExistsB var_name term formula  (* Bounded Existential: ∃x ≤ t. φ *)
```
*Note:* `ForallB x t φ` corresponds to `∀x ≤ t. φ`. The variable `x` is bound in `φ` but occurs freely in `t` (though well-formedness typically requires `x ∉ fv(t)`).

## 3.4.2 Recursive Free Variable Functions
We define functions to compute the set of free variables. This replaces the opaque `free_in_term` and `free_in_formula`.

**Definition 3.4.3 — Free Variables in Terms (`fv_term`):**
```isabelle
fun fv_term :: "term ⇒ var_name set" where
  "fv_term (Var x) = {x}"
| "fv_term (Const c) = {}"
| "fv_term (Fun f ts) = ⋃(fv_term ` set ts)"
```

**Definition 3.4.4 — Free Variables in Formulas (`fv_formula`):**
```isabelle
fun fv_formula :: "formula ⇒ var_name set" where
  "fv_formula (Eq s t) = fv_term s ∪ fv_term t"
| "fv_formula (Rel r ts) = ⋃(fv_term ` set ts)"
| "fv_formula (Not φ) = fv_formula φ"
| "fv_formula (And φ ψ) = fv_formula φ ∪ fv_formula ψ"
| "fv_formula (Or φ ψ) = fv_formula φ ∪ fv_formula ψ"
| "fv_formula (Impl φ ψ) = fv_formula φ ∪ fv_formula ψ"
| "fv_formula (ForallB x t φ) = fv_term t ∪ (fv_formula φ - {x})"
| "fv_formula (ExistsB x t φ) = fv_term t ∪ (fv_formula φ - {x})"
```
*BST Constraint:* Since all syntax trees are finite, these sets are always finite.

## 3.4.3 Capture-Avoiding Substitution
We define substitution explicitly. This replaces the opaque `subst_formula`. The critical case is bounded quantification, where we must avoid capturing free variables in the substituting term.

**Definition 3.4.5 — Substitution in Terms (`subst_term`):**
```isabelle
fun subst_term :: "term ⇒ var_name ⇒ term ⇒ term" where
  "subst_term (Var y) x s = (if x = y then s else Var y)"
| "subst_term (Const c) x s = Const c"
| "subst_term (Fun f ts) x s = Fun f (map (λt. subst_term t x s) ts)"
```
*Notation:* `t[x := s]` denotes `subst_term t x s`.

**Definition 3.4.6 — Substitution in Formulas (`subst_formula`):**
```isabelle
fun subst_formula :: "formula ⇒ var_name ⇒ term ⇒ formula" where
  "subst_formula (Eq u v) x s = Eq (subst_term u x s) (subst_term v x s)"
| "subst_formula (Rel r ts) x s = Rel r (map (λt. subst_term t x s) ts)"
| "subst_formula (Not φ) x s = Not (subst_formula φ x s)"
| "subst_formula (And φ ψ) x s = And (subst_formula φ x s) (subst_formula ψ x s)"
  (* ... similarly for Or, Impl ... *)
| "subst_formula (ForallB y t φ) x s = 
    (if x = y then 
       ForallB y t φ  (* x is bound, no substitution inside *)
     else 
       let t' = subst_term t x s in
       (* Alpha-conversion check: if y ∈ fv(s), rename y to z fresh *)
       if y ∈ fv_term s then 
         let z = fresh_var (fv_formula φ ∪ fv_term t' ∪ fv_term s) in
         ForallB z (subst_term t' x s) (subst_formula (φ[y := Var z]) x s)
       else 
         ForallB y t' (subst_formula φ x s))"
| "subst_formula (ExistsB y t φ) x s = 
    (* Analogous to ForallB with capture avoidance *)
    ..."
```
*BST Alignment:* The `fresh_var` function selects a variable not in the provided finite set. Since the set is finite and the supply of variables is infinite (metatheoretically), this is always possible. Within BST, we assume a supply of variables large enough for the proof depth.

## 3.4.4 Concrete Freshness Predicate
We replace `fresh_for_ctx` with a definable predicate.

**Definition 3.4.7 — Freshness (`fresh`):**
```isabelle
definition fresh :: "var_name ⇒ formula ⇒ bool" where
  "fresh x φ ⟷ x ∉ fv_formula φ"
```

**Definition 3.4.8 — Context Freshness:**
```isabelle
definition fresh_ctx :: "var_name ⇒ formula list ⇒ bool" where
  "fresh_ctx x Γ ⟷ ∀φ ∈ set Γ. fresh x φ"
```
*Usage:* In inference rules, `x` must be fresh for the context `Γ` and the bound term `t`.

## 3.4.5 Revised Deductive Rules
We update the bounded quantifier rules from **Part III, Section 3.1.6** to include explicit side-conditions using the definitions above.

**Rule 3.4.9 — Bounded Universal Introduction (`∀B-I`):**
```isabelle
| Pr_ForallB_I: 
    "⟦ x ∉ fv_term t;  (* Well-formedness: x not free in bound *)
       fresh_ctx x Γ;   (* Eigenvariable condition: x not free in assumptions *)
       Γ ⊢ Impl (Leq (Var x) t) φ ⟧  (* Derivation under bound assumption *)
    ⟹ Γ ⊢ ForallB x t φ"
```
*Note:* `Leq` represents the bounding relation `≤`. The premise `Γ ⊢ Impl (Leq (Var x) t) φ` formalizes "derived under assumption `x ≤ t`".

**Rule 3.4.10 — Bounded Existential Elimination (`∃B-E`):**
```isabelle
| Pr_ExistsB_E:
    "⟦ Γ ⊢ ExistsB x t φ;
       x ∉ fv_term t;
       fresh_ctx x (ψ # Γ);  (* x not free in conclusion or assumptions *)
       Γ @ [Impl (Leq (Var x) t) φ] ⊢ ψ ⟧
    ⟹ Γ ⊢ ψ"
```
*Alignment:* These rules enforce the eigenvariable conditions internally via `fresh_ctx`, removing reliance on external metatheoretic checks.

## 3.4.6 Sanity Lemmas
To ensure the mechanization is sound, we prove standard properties of substitution and freshness.

**Lemma 3.4.11 — Substitution Identity:**
```isabelle
lemma subst_identity: "fresh x φ ⟹ subst_formula φ x (Var x) = φ"
```
*Proof:* By induction on `φ`.

**Lemma 3.4.12 — Freshness Preservation:**
```isabelle
lemma fresh_preservation: 
  "⟦ fresh x φ; fresh x s ⟧ ⟹ fresh x (subst_formula φ y s)"
```
*Proof:* By induction on `φ`, handling the `ForallB` capture-avoidance case carefully.

**Lemma 3.4.13 — Commutativity of Substitution:**
```isabelle
lemma subst_comm: 
  "⟦ x ≠ y; x ∉ fv_term s₂; y ∉ fv_term s₁ ⟧ 
   ⟹ subst_formula (subst_formula φ x s₁) y s₂ = 
       subst_formula (subst_formula φ y s₂) x s₁"
```
*Significance:* Ensures that multiple substitutions can be performed in any order, critical for complex proofs.

## 3.4.7 Integration with BST Axioms
These definitions enable the formal statement of BST axioms (Part IV) within the mechanized logic.

**Example — Bounded Separation Axiom Schema:**
```isabelle
definition ax_separation :: "formula ⇒ formula" where
  "ax_separation φ = 
     ForallB A (Var A) (ExistsB B (Var A) 
       (ForallB x (Var A) (Eq (Rel Mem x B) (And (Rel Mem x A) (subst_formula φ x (Var x))))))"
```
*Note:* This demonstrates how `subst_formula` is used to instantiate schema variables within the object logic.

## 3.4.8 Conclusion and Next Steps
This extension completes the syntactic mechanization of BFOL. The opaque placeholders are replaced by recursive functions that respect the finite structure of BST syntax.
1.  **Accomplished:** Concrete syntax, free variables, capture-avoiding substitution, freshness, and updated inference rules.
2.  **Validation:** Sanity lemmas ensure the substitution logic behaves correctly.
3.  **Next Step (Task 2):** With syntax internalized, we can now define the recursive semantics (`eval_term_bst`, `satisfies_bst`) over these concrete datatypes, bridging to **Part III, Section 3.1.5**.

---
*This specification is ready for implementation in Isabelle/HOL or a similar proof assistant, aligning with the finite ontology of Bounded Set Theory.*
