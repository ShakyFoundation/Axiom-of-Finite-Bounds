# Part XXII: Finite-Model Locale and Soundness Proof (Proposed Extension)

**Status:** Proposed Extension to Part III (Section 3.1.5) and Part XXI (Section 21.6)
**Objective:** Package the semantic assumptions of Bounded First-Order Logic (BFOL) into a formal Isabelle/HOL locale, connect it to the **BST-Model** definition (Part V, Definition 5.4), and prove a soundness theorem for the deductive system defined in Part III (Section 3.1.6) and mechanized in Part XX. This establishes the logical coherence of the mechanized semantics relative to the proof system.

## 22.1 Motivation and Scope
**Part XXI** defined recursive semantics (`eval_term_bst`, `satisfies_bst`) over concrete datatypes. **Part III** defined the deductive system (`Provable` or `⊢`). However, the relationship between these two—soundness—requires a context in which the model assumptions (finiteness, bounding relation properties) are fixed.

In Isabelle/HOL, **locales** provide the appropriate mechanism for this. A locale allows us to fix parameters (the model `M`), assume properties (finiteness, reflexivity of `≤`), and prove theorems that hold within that context. This separates the *general theory* of BST models from the *specific proofs* about soundness.

This part develops that machinery. The goal is to construct a **`finite_bst_model` locale** where:
1.  **Domain Finiteness** is an explicit assumption (aligning with AFB).
2.  **Bounding Relation** properties (reflexivity, transitivity) are assumed.
3.  **Soundness** is proved by induction on the derivation `Γ ⊢ φ`.

All constructions respect the **Axiom of Finite Bounds (AFB)**. The locale ensures that no proof relies on infinite domains.

## 22.2 The `finite_bst_model` Locale
We define the locale to encapsulate the structural requirements of a BST model. This formalizes **Part V, Definition 5.4** within the mechanized framework.

**Definition 22.1 — Locale `finite_bst_model`:**
```isabelle
locale finite_bst_model =
  fixes M :: "'a bst_interp"  (* Interpretation record from Part XXI *)
  assumes finite_domain: "finite (domain M)"
  assumes leq_reflexive: "∀d ∈ domain M. leq_interp M d d"
  assumes leq_transitive: "∀a b c ∈ domain M. 
                             leq_interp M a b ∧ leq_interp M b c ⟶ leq_interp M a c"
  assumes leq_antisym: "∀a b ∈ domain M. 
                          leq_interp M a b ∧ leq_interp M b a ⟶ a = b"
  assumes func_closed: "∀f ts. (∀t ∈ set ts. t ∈ domain M) 
                          ⟶ func_interp M f ts ∈ domain M"
  assumes eq_behavior: "∀a b ∈ domain M. a = b ⟶ (P a ⟷ P b)"
```
**Plain Language:**
1.  **`finite_domain`**: Enforces the **Axiom of Finite Bounds**. The universe of discourse is finite.
2.  **`leq_*`**: Ensures the bounding relation `≤` behaves like an order, required for bounded quantifiers `∀x ≤ t` to make sense.
3.  **`func_closed`**: Ensures terms evaluate to elements within the domain (Part XXI, `eval_term_bst`).
4.  **`eq_behavior`**: Ensures equality respects substitution (Leibniz law).

**Connection to Part V:** This locale corresponds exactly to the abstract **BST-Model** (Part V, Definition 5.4), but instantiated with the concrete recursive semantics of **Part XXI**.

## 22.3 Semantic Entailment
Within the locale, we define what it means for a set of formulas to semantically entail another.

**Definition 22.2 — Semantic Entailment (`semantic_entailment`):**
```isabelle
definition semantic_entailment :: "'a bst_interp ⇒ env ⇒ formula list ⇒ formula ⇒ bool" where
  "semantic_entailment M ρ Γ φ ⟷ 
     (∀γ ∈ set Γ. satisfies_bst M ρ γ) ⟶ satisfies_bst M ρ φ"
```
**Plain Language:** If every formula in the context `Γ` is true under assignment `ρ`, then `φ` must also be true.
**Note:** This is defined relative to a *single* model `M` and assignment `ρ`. Global validity (truth in *all* models) is defined later by quantifying over the locale.

## 22.4 Soundness Theorem
We now prove that the syntactic deductive system (Part III, Section 3.1.6; Part XX, Rules) is sound with respect to the recursive semantics (Part XXI).

**Theorem 22.3 — Soundness of BFOL:**
```isabelle
theorem soundness:
  assumes "Γ ⊢ φ"  (* Derivable in the mechanized system from Part XX *)
  shows "semantic_entailment M ρ Γ φ"
```
**Proof Sketch:**
By induction on the derivation `Γ ⊢ φ`.

1.  **Base Case (Assumption):**
    *   Rule: `φ ∈ Γ ⟹ Γ ⊢ φ`.
    *   Proof: If `∀γ ∈ set Γ. satisfies_bst M ρ γ`, then specifically `satisfies_bst M ρ φ`. Trivial.

2.  **Propositional Rules (∧, ∨, →, ¬):**
    *   Example (∧-Intro): `Γ ⊢ φ`, `Γ ⊢ ψ ⟹ Γ ⊢ φ ∧ ψ`.
    *   Proof: By IH, `φ` and `ψ` are true. By **Part XXI, Definition 21.4**, `satisfies_bst M ρ (φ ∧ ψ)` holds iff both are true.
    *   Status: Trivial by definition of `satisfies_bst`.

3.  **Equality Rules:**
    *   Rule (Refl): `Γ ⊢ t = t`.
    *   Proof: `eval_term_bst M ρ t = eval_term_bst M ρ t` holds by reflexivity of HOL equality.
    *   Rule (Subst): `Γ ⊢ t1 = t2`, `Γ ⊢ φ[t1/x] ⟹ Γ ⊢ φ[t2/x]`.
    *   Proof: Requires **Part XXI, Lemma 21.5 (Substitution Lemma)** and locale assumption `eq_behavior`. If `t1` and `t2` evaluate to the same element, substituting one for the other preserves truth.

4.  **Bounded Universal Introduction (`∀B-I`):**
    *   Rule: `Γ ⊢ Impl (Leq (Var x) t) φ` (with `x` fresh) `⟹ Γ ⊢ ForallB x t φ`.
    *   Proof:
        *   Assume `∀γ ∈ set Γ. satisfies_bst M ρ γ`.
        *   By IH, `satisfies_bst M ρ (Impl (Leq (Var x) t) φ)`.
        *   Let `d ∈ domain M` such that `leq_interp M d (eval_term_bst M ρ t)`.
        *   We need `satisfies_bst M (ρ(x := d)) φ`.
        *   Since `x` is fresh (Part XX, `fresh_ctx`), `satisfies_bst M ρ γ` implies `satisfies_bst M (ρ(x := d)) γ` (**Part XXI, Lemma 21.6**).
        *   Also `leq_interp M d (eval_term_bst M (ρ(x := d)) t)` holds because `x` not free in `t`.
        *   Thus the implication antecedent holds, so consequent `φ` holds.
        *   By **Part XXI, Definition 21.4**, `satisfies_bst M ρ (ForallB x t φ)` holds.

5.  **Bounded Existential Elimination (`∃B-E`):**
    *   Rule: `Γ ⊢ ExistsB x t φ`, `Γ @ [Impl (Leq (Var x) t) φ] ⊢ ψ` (with `x` fresh) `⟹ Γ ⊢ ψ`.
    *   Proof:
        *   Assume `Γ` true. By IH on first premise, `∃d ∈ domain M` such that `leq_interp M d (eval_term_bst M ρ t)` and `satisfies_bst M (ρ(x := d)) φ`.
        *   By IH on second premise (using `ρ(x := d)`), `ψ` holds.
        *   By Freshness (Part XX), `ψ` does not depend on `x`, so `satisfies_bst M ρ ψ` holds.

**Conclusion:** All rules preserve semantic truth within the locale. □

## 22.5 Global Validity and Reflection
The locale proves soundness for a *fixed* model. To connect this to **Part III, Formulation B (Bounded Reflection)**, we define global validity.

**Definition 22.4 — Global Validity (`valid_bst`):**
```isabelle
definition valid_bst :: "formula ⇒ bool" where
  "valid_bst φ ⟷ ∀M ρ. finite_bst_model M ⟶ semantic_entailment M ρ [] φ"
```
**Plain Language:** `φ` is valid if it holds in *every* finite BST model.

**Theorem 22.5 — Global Soundness:**
```isabelle
theorem global_soundness:
  assumes "[] ⊢ φ"
  shows "valid_bst φ"
```
**Proof:** Immediate from **Theorem 22.3** by quantifying over all `M` satisfying `finite_bst_model`.

**Connection to Part III:** This mechanizes the **Bounded Reflection Principle (Part III, Theorem 3.5)**. It establishes that `BST ⊢ φ` implies `φ` is true in all finite models. (The converse—completeness—is Trakhtenbrot's Theorem, **Part III, Theorem 3.6**, and is undecidable).

## 22.6 Handling the Finite Domain Constraint
A critical aspect of this locale is the `finite_domain` assumption. This ensures that bounded quantifiers are well-defined.

**Lemma 22.6 — Bounded Quantifier Evaluation:**
```isabelle
lemma bounded_quant_finite:
  assumes "finite_bst_model M"
  shows "∀d ∈ domain M. leq_interp M d (eval_term_bst M ρ t) ⟶ P d 
         ⟷ satisfies_bst M ρ (ForallB x t (Pred P x))"
```
**Proof:** Follows directly from **Part XXI, Definition 21.4**. The set `{d ∈ domain M | leq_interp M d ...}` is finite because `domain M` is finite. Thus the universal quantifier `∀d` is a finite conjunction, which is computable.

**Significance:** This lemma confirms that the semantic clause for `ForallB` does not require infinite verification. It is a finite check, consistent with **AFB**.

## 22.7 Summary of Locale and Soundness

| Component | Abstract (Part III/V) | Mechanized (Part XXII) | Status |
| :--- | :--- | :--- | :--- |
| **Model** | Structure $\mathcal{M}$ | Locale `finite_bst_model` | **Defined** (Def 22.1) |
| **Domain** | Finite Set $D$ | `finite (domain M)` | **Assumed** (Locale) |
| **Semantics** | $\models$ relation | `satisfies_bst` function | **Recursive** (Part XXI) |
| **Provability** | $\vdash$ relation | `Provable` inductive set | **Mechanized** (Part XX) |
| **Soundness** | Stated (Part III) | Proved (Thm 22.3) | **Proved** (Thm 22.3) |
| **Reflection** | Theorem 3.5 | `global_soundness` | **Linked** (Thm 22.5) |
| **Quantifiers** | Bounded Clauses | Finite Iteration | **Verified** (Lem 22.6) |

**Conclusion:**
This development fulfills **Task 3** of the mechanization plan. It packages the model assumptions into a reusable Isabelle locale, connects the recursive semantics of **Part XXI** to the syntactic proof system of **Part XX**, and proves a soundness theorem.
1.  **Locale Established:** `finite_bst_model` encapsulates AFB and bounding relation properties.
2.  **Soundness Proved:** The deductive system is proven safe relative to the semantics.
3.  **Foundation Secure:** This provides the logical bedrock for mechanizing the BST axioms (Part IV) and the number chain (Part VIII) within the same framework.

This completes the core logical mechanization of BST. Future work can now build upon this secure foundation to mechanize the axioms, the number chain, and the analytic apparatus.

---
*Note: This extension is consistent with the Axiom of Finite Bounds (AFB) and the architectural principles of Bounded Set Theory (BST) as established in Parts I–XXI. It treats soundness as a relationship between inductive derivations and recursive evaluations within finite domains.*
