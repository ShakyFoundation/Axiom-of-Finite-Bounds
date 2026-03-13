# Bounded Set Theory (BST) & Bounded First-Order Logic (BFOL)

> **"Every set has finite cardinality bounded by some metatheoretic ordinal."**

This repository contains the formal appendix and Coq verification scaffold for **The Axiom of Finite Bounds**, a working paper (2026) proposing a new foundation for mathematics that operates without the Axiom of Infinity.

## 1. Overview

Bounded Set Theory (BST) is a formal system built on the premise that mathematical existence is tied to finite describability. Unlike traditional ZFC, which assumes completed infinite totalities, BST recovers the core of real analysis and arithmetic through **Bounded First-Order Logic (BFOL)** and a metatheoretic bound $\Omega$.

### Key Contributions:

* **Resolution of the Burali-Forti Paradox:** BST avoids the classic paradoxes of bounded theories by treating the maximum bound as a metatheoretic constraint rather than an internal object.
* **Finite Cauchy Completion:** A construction of the "bounded reals" $\mathbb{R}_B(k)$ that allows for differentiation and integration within a finite framework.
* **The Finite Coincidence Theorem:** Formal proof that cardinality and ordinal-membership coincide for all sets within the system.

---

## 2. Repository Structure

* `axiom_of_finite_bounds_paper_scaffold.v`: The core Coq development.
* **Module `BFOL**`: Defines the syntax and inference rules for Bounded First-Order Logic, including primitive bounded quantifiers ($\forall x < k$).
* **Module `BST**`: Implements the seven axioms of Bounded Set Theory (Extensionality, Pairing, Union, Bounded Separation, Bounded Replacement, Foundation, and the Empty Set).
* **Theorems**: Includes the formalization of the `Successor_Condition` and the `Scaffold_Precision_Limit`.



---

## 3. The Formal Foundation

The system replaces the Axiom of Infinity with the **Axiom of Finite Bounds (AFB)**. In the Coq development, this is represented by a meta-level surrogate `Omega` used for cardinal bookkeeping.

```coq
(* Snippet from bst_formulation.v *)
Axiom AFB_Bound : forall s : obj, card s <= Omega.

```

By constraining the domain of discourse to $x < \Omega$, we ensure that all operations—including the power set (which is notably absent as a total operation)—remain within the bounds of constructive, finite mathematics.

---

## 4. Why This Matters

Standard mathematics relies on the assumption of the infinite to guarantee the existence of limits and the continuum. BST challenges this by demonstrating that:

1. **Computational Feasibility:** All mathematical objects in BST are, in principle, representable in finite space.
2. **Logical Consistency:** By bounding quantification, we eliminate the "hidden" infinite assumptions in standard FOL.
3. **Modern Relevance:** Provides a rigorous framework for mathematics in a world of finite computation and discrete physics.

---

## 5. Status & Technical Notes

This is a **working paper scaffold**.

* **Current State:** The Coq file functions as a registry of the paper's core constructions and dependencies.
* **Proof-Theoretic Strength:** Initial estimates place the strength of BST between $PRA$ (Primitive Recursive Arithmetic) and $\varepsilon_0$, depending on the induction schema used.
* **Formal Verification:** The core axioms and the relationship between ordinals and cardinality are verified. Further work is required to internalize freshness conditions in the BFOL inductive system.

## 6. How to Run

Requires **Coq 8.15** or later.

```bash
coqc axiom_of_finite_bounds_paper_scaffold.v

```

---

## 7. Citation & Contact

If you wish to discuss the proof-theoretic implications or the formalization of the Finite Coincidence Theorem, please open an issue in this repository.

*Note: This work is released by [ShakyFoundation] to encourage discussion on the ontological status of completed infinite totalities.*
