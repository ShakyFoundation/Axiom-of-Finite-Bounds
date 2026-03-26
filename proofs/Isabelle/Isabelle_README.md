# The Axiom of Finite Bounds — Isabelle/HOL Formalization

A machine-verified formalization of Bounded Set Theory (BST) as developed in the paper *The Axiom of Finite Bounds*.

**Paper:** [https://www.shakyfoundation.com/topic-infinity.html](https://www.shakyfoundation.com/topic-infinity.html)

## What this is

`axiom_of_finite_bounds.thy` is a single, self-contained Isabelle/HOL theory file that formalizes the entire foundational development of BST — from the axioms through the bounded number chain to the Millennium Problems. It imports only `Main`. There are no sorry's.

BST begins from a single ontological commitment: **there is no infinity, and there is an upper bound.** From this, the paper constructs a complete axiomatic system for finite mathematics, develops the bounded number chain ℕ\_B(k) ↪ ℤ\_B(k) ↪ ℚ\_B(k²) ↪ ℝ\_B(k) ↪ ℂ\_B(k⁴), and recovers real analysis, complex analysis, functional analysis, representation theory, and computational complexity — all within the bound.

This file turns those claims into verified computation.

## What has been verified

| Part | Content | Method |
|------|---------|--------|
| III–IV | BFOL deep embedding, bst\_model, six axioms, V3 model | eval |
| IV | 84 valid BST models among 65,535 V3 subdomains | 84 individual eval checks |
| IV | Independence of A2, A4, Separation | eval on witnesses |
| V | Bounded Burali-Forti theorem | Structured proof from locale |
| V–VI | Choice, Foundation, Separation, pigeonhole, bounded Cantor | Proved in locale |
| VII | Kuratowski pairs, FA-BST, Schroeder-Bernstein | Proved and verified |
| VIII | ℕ\_B, ℤ\_B, ℚ\_B, ℝ\_B, ℂ\_B — full bounded number chain | eval |
| IX | Finite-difference derivatives, Riemann sums, IVT, EVT | eval |
| X | Bounded contour integration over ℂ\_B(k⁴) | eval |
| XI | Inner product, matrix multiply, adjoint, Cauchy-Schwarz | eval |
| XII | Bounded strings, BST-P computation (primality) | eval |
| XIII | ℤ/3ℤ actions, orbit-stabiliser, Burnside, characters | eval |
| XIV | All 7 Millennium Problems — finite analogs verified | eval |

## Statistics

- **Lines:** ~2,910
- **sorry's:** 0
- **eval proofs:** 220
- **Imports:** Main (only)

## How to run

1. Install [Isabelle 2025-2](https://isabelle.in.tum.de/)
2. Open `axiom_of_finite_bounds.thy` in Isabelle/jEdit
3. Wait for the progress bar to go fully green

Every `by eval` lemma is checked by Isabelle's code generator — the kernel evaluates compiled ML code and confirms the result. No external oracles, no trust assumptions beyond Isabelle's kernel.

Recommended JVM settings for the 84-model exhaustive verification:

```
ISABELLE_TOOL_JAVA_OPTIONS="-Xms4g -Xmx8g"
```

## Architecture

The file is organized in layers:

- **Layer 0:** Deep embedding of Bounded First-Order Logic (BFOL)
- **Layer 1:** `bst_model` record with domain as `nat list` (structurally finite)
- **Layer 2:** Partial successor via `List.find` (returns `None` at ceiling)
- **Layer 3:** Computable axiom checkers `check_A1` through `check_A5` (pure list operations)
- **Layer 4:** `BST_Axioms` locale with six axioms + well-foundedness + model closure
- **Layer 5:** Bounded Fundamental Theorems proved inside the locale
- **Layer 6:** V3 explicit model (16 elements, rank-3 hereditarily finite sets)
- **Parts VIII–XIV:** Bounded number chain, analysis, and applications

## Design principles

- **Domain = list, never set.** Finiteness is structural, not an assumption.
- **Everything computable has `[code]` and is checked with `by eval`.** If eval fails, the definition is wrong.
- **No set comprehensions in executable definitions.** All axiom checkers use `list_all`, `list_ex`, and `mem_rel` — pure list operations.
- **The paper is the authority.** Every definition references the paper's numbering. Every eval lemma is hand-traced before writing.

## The 84 models

The paper claims exactly 84 valid BST models exist among the 65,535 non-empty subdomains of V3. This file verifies all 84 individually by eval. Each model is encoded as a bitmask over the paper's element ordering (e0–e15), decoded to a domain list, and checked against axioms A1–A5.

The bitmasks were computed by exhaustive enumeration over all 65,535 subsets, checking all 9 conditions (A1–A6, BFT 4.2, BFT 4.3, BFT 4.4). The Python script that performed this enumeration uses the paper's element ordering, verified to match the Isabelle `v3_mem` table exactly.

## License

This formalization accompanies the paper. See the paper for terms.
