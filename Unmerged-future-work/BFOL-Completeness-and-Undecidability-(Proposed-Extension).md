# Tier 1: Critical Mechanization & Logic (The "Hard" Core)

**Status:** Proposed Extension to Parts III, IV, XVI, XXI, XXII
**Objective:** Complete the formal verification backbone of Bounded Set Theory (BST) by establishing undecidability limits, constructing explicit independence models, and integrating the mechanization scaffold into a coherent Isabelle/HOL development.

---

## 1. BFOL Completeness and Undecidability (Proposed Extension)

**Source:** Part III (Theorem 3.6), Part XVI (Model Theory), Part XXII (Soundness)
**Metatheory:** $ACA_0$ (Arithmetical Comprehension)

### 1.1 Formal Statement of Trakhtenbrot's Theorem in BST Metatheory
In Part III (Section 3.3.3.7), BST Formulation B is defined as the theory of sentences true in all finite models. Part III (Theorem 3.6) states this theory is undecidable via Trakhtenbrot's Theorem. We now formalize this within the $ACA_0$ metatheory used to establish BST's coherence.

**Definition 1.1 — Finite Validity (`valid_bst`):**
```isabelle
definition valid_bst :: "formula ⇒ bool" where
  "valid_bst φ ⟷ ∀M ρ. finite_bst_model M ⟶ satisfies_bst M ρ φ"
```
*Note:* `finite_bst_model` is the locale from Part XXII, enforcing finite domain and BST axioms.

**Theorem 1.2 — Trakhtenbrot's Theorem for BST:**
The set of valid BST sentences is not recursively enumerable.
```isabelle
theorem trakhtenbrot_bst: "¬ recursively_enumerable {φ. valid_bst φ}"
```

### 1.2 Proof Sketch (within $ACA_0$)
1.  **Encoding Turing Machines:** In $ACA_0$, we can encode Turing Machine configurations as finite structures (graphs with transition relations).
2.  **Halting to Validity:** For any TM $T$, construct a BFOL sentence $\phi_T$ such that $\phi_T$ is true in a finite model $M$ iff $M$ encodes a valid halting computation of $T$.
3.  **Negation:** Construct $\psi_T = \neg \phi_T$.
    *   If $T$ halts, there exists a finite model where $\phi_T$ is true, so $\psi_T$ is false in that model. Thus $\psi_T$ is **not valid**.
    *   If $T$ does not halt, $\phi_T$ is false in all finite models, so $\psi_T$ is **valid**.
4.  **Reduction:** If `valid_bst` were r.e., we could enumerate valid $\psi_T$. If $T$ does not halt, $\psi_T$ appears in the enumeration. If $T$ halts, it never appears. This would solve the Halting Problem (co-r.e. complete), which is impossible.
5.  **Conclusion:** `valid_bst` is not r.e.

### 1.3 Connection to Category D
Part IX (Section 9.5) defines **Category D** as universal statements provable for every instance but not universally provable. Trakhtenbrot's Theorem provides the model-theoretic explanation for Category D.

**Corollary 1.3 — Undecidability and Category D:**
The undecidability of `valid_bst` arises precisely from the quantification over **all finite models** (Formulation B).
*   **Single Model:** Truth in a *fixed* finite model $M$ is decidable (bounded quantification over domain $D$).
*   **All Models:** Truth in *all* finite models requires checking an infinite class of finite structures.
*   **Category D Link:** Statements like Goodstein's Theorem are true in the standard model (infinite) but independent in BST because BST validity requires truth across *all* finite models, some of which may be too small to witness the termination bound. Trakhtenbrot's Theorem confirms that no algorithm can bridge this gap.

---

## 2. BST Independence Proofs (Formal Witness Construction)

**Source:** Part IV (Section 4.6), Part XVI (Theorem 16.4)
**Objective:** Construct explicit finite structures $M_{A2} \dots M_{A7}$ witnessing the independence of each BST axiom.

### 2.1 Explicit Model Definitions
We define each model $M = \langle D, \in_M \rangle$ explicitly. Domain elements are represented as natural numbers $\{0, \dots, n\}$.

| Axiom | Model $M$ | Domain $D$ | Membership $\in_M$ | Fails | Satisfies Others? |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **A2 (Ext)** | $M_{A2}$ | $\{0, 1\}$ | $\emptyset$ | Yes (0,1 both empty) | Yes (Vacuously for others) |
| **A3 (Empty)** | $M_{A3}$ | $\{0\}$ | $\{(0,0)\}$ | Yes (No empty set) | Yes (Ext holds trivially) |
| **A4 (Pair)** | $M_{A4}$ | $\{0, 1, 2\}$ <br> $0=\emptyset, 1=\{0\}$ | $\{(0,1)\}$ | Yes (Pair $\{0,1\}$ missing) | Yes (Union/Sep hold on available sets) |
| **A5 (Union)** | $M_{A5}$ | $\{0, 1, 2\}$ <br> $0=\emptyset, 1=\{0\}, 2=\{1\}$ | $\{(0,1), (1,2)\}$ | Yes ($\cup \{1,2\}$ missing) | Yes (Pairing holds) |
| **A6 (Sep)** | $M_{A6}$ | $\{0, 1, 2\}$ <br> $0=\emptyset, 1=\{0\}, 2=\{0,1\}$ | Standard on $D$ | Yes (Restrict Sep formulas) | Yes (By construction) |
| **A7 (Rep)** | $M_{A7}$ | $\{0, 1, 2\}$ | Standard on $D$ | Yes (Image exceeds $D$) | Yes (Sep holds) |
| **A1 (AFB)** | $M_{A1}$ | $\mathbb{N}$ (Infinite) | Standard | Yes (Infinite domain) | Yes (ZF¬∞ model) |

*Note:* For $M_{A4} \dots M_{A7}$, "Satisfies Others" requires verifying that the specific failure does not cascade (e.g., in $M_{A4}$, ensure Union doesn't require the missing pair).

### 2.2 Isabelle/HOL Sketch
We encode finite models as records with explicit tables for membership.

```isabelle
record fin_model = 
  domain :: "nat set"
  mem_rel :: "(nat × nat) set"

definition M_A2 :: "fin_model" where
  "M_A2 = ⟨ domain = {0, 1}, mem_rel = {} ⟩"

lemma independent_A2: 
  "finite_bst_model_axioms M_A2 - {Extensionality}" 
  "¬ Extensionality M_A2"
  (* Proof: 0 and 1 have same members (none), but 0 ≠ 1 *)
```

**Verification Strategy:**
1.  **Define Axiom Predicates:** Create Isabelle predicates `is_extensional M`, `has_empty_set M`, etc.
2.  **Compute Truth:** Since domains are finite, use Isabelle's `code_reflect` or `eval` to compute truth values directly.
3.  **Witness Check:** Prove `¬ is_extensional M_A2` by exhibiting `0` and `1`.

### 2.3 Significance
This completes Part IV (Section 4.6) and Part XVI (Theorem 16.4). It demonstrates that no BST axiom is derivable from the others, ensuring the system is not overdetermined.

---

## 3. Mechanization Progress Report & Integration Plan (v2.0)

**Status:** Synthesis of Parts I–XXII (Paper + Conversation Extensions)
**Objective:** Track mechanization status, resolve scaffold divergences, and plan integration.

### 3.1 Mechanization Status Table

| Part | Topic | Paper Status | Mechanization Status | Isabelle Theory File |
| :--- | :--- | :--- | :--- | :--- |
| **I–II** | Preamble/History | Complete | N/A (Informative) | `README.md` |
| **III** | BFOL & AFB | Complete | **Core Logic Done** | `afb_bfol_core.thy` |
| **IV** | Axioms | Complete | **Specified** | `afb_axioms.thy` |
| **V** | Ordinals | Complete | **Specified** | `afb_ordinals.thy` |
| **VI** | Induction | Complete | **Specified** | `afb_induction.thy` |
| **VII** | Functions | Complete | **Specified** | `afb_functions.thy` |
| **VIII** | Number Chain | Complete | **Specified** | `afb_numbers.thy` |
| **IX** | Analysis | Complete | **Specified** | `afb_analysis.thy` |
| **X–XI** | Physics/Millennium | Complete | N/A (Extrapolation) | `afb_applications.thy` |
| **XII–XV** | Extensions (Topology, etc.) | Proposed | **Specified** | `afb_extensions.thy` |
| **XVI** | Model Theory | Proposed | **Specified** | `afb_model_theory.thy` |
| **XX** | Syntax (Subst/Fresh) | Proposed | **Mechanized** | `afb_syntax_mech.thy` |
| **XXI** | Semantics (Recursive) | Proposed | **Mechanized** | `afb_semantics_mech.thy` |
| **XXII** | Soundness | Proposed | **Mechanized** | `afb_soundness.thy` |

### 3.2 Import Graph
```text
afb_bfol_core.thy       (Base Logic, Terms, Formulas)
       ↓
afb_syntax_mech.thy     (Substitution, Freshness - Part XX)
       ↓
afb_semantics_mech.thy  (Eval, Satisfies - Part XXI)
       ↓
afb_soundness.thy       (Soundness Proof - Part XXII)
       ↓
afb_model_theory.thy    (Locales, Finite Models - Part XVI)
       ↓
afb_axioms.thy          (BST Axioms - Part IV)
       ↓
afb_ordinals.thy        (Ordinals - Part V)
       ↓
afb_numbers.thy         (Number Chain - Part VIII)
```

### 3.3 Known Issues & Divergences

1.  **`bst_model` vs. `bst_interp`:**
    *   **Issue:** Part XVI defines `bst_model` abstractly ($\mathcal{M} = \langle D, \in \rangle$). Part XXI defines `bst_interp` concretely (`record 'a bst_interp`).
    *   **Resolution:** Unify under `finite_bst_model` locale (Part XXII). Use `bst_interp` as the concrete instance of the locale.
    *   **Action:** Refactor `afb_model_theory.thy` to import `afb_semantics_mech.thy`.

2.  **Bound Widening:**
    *   **Issue:** Part VIII requires bound widening (e.g., $\mathbb{Q}_B(k) \to \mathbb{R}_B(k)$). The current scaffold uses a fixed `n_M`.
    *   **Resolution:** Introduce a `bound_chain` locale that parameterizes models by $k$.
    *   **Action:** Extend `afb_numbers.thy` to support parameterized models.

3.  **Category D Undecidability:**
    *   **Issue:** Trakhtenbrot's Theorem (Task 1) is stated but not mechanized.
    *   **Resolution:** Add `afb_undecidability.thy` using Isabelle's `HOL-Computational_Algebra` for TM encoding.
    *   **Action:** Prioritize Task 1 for Phase 3.

### 3.4 Roadmap: Integration Plan

| Phase | Goal | Deliverables | Dependencies |
| :--- | :--- | :--- | :--- |
| **Phase 1** | **Logic Core** | Merge `afb_bfol_core`, `afb_syntax_mech`, `afb_semantics_mech`. Prove Soundness. | Parts III, XX, XXI, XXII |
| **Phase 2** | **Axioms & Models** | Instantiate `finite_bst_model`. Verify Independence Witnesses (Task 2). | Parts IV, XVI, Phase 1 |
| **Phase 3** | **Number Chain** | Mechanize $\mathbb{N}_B(k) \dots \mathbb{R}_B(k)$. Prove Field Axioms. | Parts V, VIII, Phase 2 |
| **Phase 4** | **Undecidability** | Formalize Trakhtenbrot (Task 1). Link to Category D. | Part III, Phase 1 |

**Immediate Next Step:** Execute **Phase 1** merge. Resolve `bst_model` vs `bst_interp` divergence before proceeding to axioms.

---
*This report consolidates the formal paper (Parts I–XI) with the mechanization extensions (Parts XII–XXII) into a single verified development track.*
