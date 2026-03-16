# ShakyFoundation

**A formal alternative foundation for finite mathematics.**

This repository contains the working paper, formal proofs, and scaffolds for the Axiom of Finite Bounds (AFB) — a foundational commitment that every set has finite cardinality bounded by some metatheoretic ordinal — and the mathematics built on top of it.

---

## What This Is

The assumption that infinity exists predates written history. It entered formal mathematics through ancient Greece, became philosophy, became logic, became the Axiom of Infinity in ZFC — and at no point was it proved. It was assumed, formalised, and handed down until it was everywhere.

This project takes the logical consequence of negating that assumption seriously: not just "not infinite," but a positive upper bound. That commitment forces a new logic from scratch — Bounded First-Order Logic (BFOL) — and from there, a complete alternative foundation for finite mathematics.

The result is:

- **Bounded First-Order Logic (BFOL)** — a logic where every quantifier must explicitly declare its finite range
- **The Axiom of Finite Bounds (AFB)** — every set has finite cardinality bounded by some metatheoretic ordinal
- **Bounded Set Theory (BST)** — seven axioms built on top of BFOL and AFB
- **The bounded number chain** — ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴)
- **Full real and complex analysis** recovered with explicit finite bounds

The paper covers mathematics, physics, and all seven Millennium Problems. All tradeoffs are stated honestly.

---

## Repository Structure

```
papers/          Working paper (afb_working.md) — the main document
proofs/          Formal scaffolds
  afb_scaffold.thy    Isabelle/HOL scaffold — verifies in Isabelle2025
  bst_scaffold.v      Coq scaffold — verifies in Coq
LICENSE          MIT
```

---

## Formal Verification Status

Both scaffolds have been verified by proof assistants:

**Isabelle/HOL** (`proofs/afb_scaffold.thy`)
- Verified in Isabelle2025-2
- `AFB_Scaffold_Verified` theorem confirmed: `card_bst empty_set = 0 ∧ 0 < Omega`
- All definitions typecheck, all axioms well-formed

**Coq** (`proofs/bst_scaffold.v`)
- Verified in Coq
- Core structure machine-checked

Both scaffolds are honest about their status: they are publication-facing formal appendices, not completed mechanisations. Substitution, freshness conditions, soundness, and completeness are flagged as future work.

---

## Using This With AI

The full working paper is available as `papers/afb_working.md`. If you want to engage with the paper using an AI assistant, feed it the `.md` file directly and ask it to identify future work, gaps, or objections. The paper is designed to be machine-readable.

---

## Contributing

Contributions are welcome and will be scrutinised carefully.

**What is and isn't up for debate:**

The foundational commitment — that infinity is a metatheoretic constraint rather than an internal object, and that every set has finite cardinality bounded by some ordinal — is the axiom. It is not up for debate in pull requests. Everything built on top of it is.

**Welcome contributions:**

- Formalisation of future work sections
- Extensions to the Isabelle/HOL or Coq scaffolds
- Identified gaps or errors in the mathematics
- Additional theorem proofs within BST
- Corrections to typos, notation, or presentation

**How to contribute:**

1. Fork the repository
2. Make your changes
3. Open a pull request with a clear description of what you've changed and why
4. Be prepared for scrutiny — this is foundational work and precision matters

If you find a genuine error in the paper, open an issue rather than a pull request. Describe the problem precisely.

---

## License

MIT. Everything here is free to use, modify, and build on. If you do something interesting with it, let us know.

---

## Contact

**X/Twitter:** [@ShakyFoundatio](https://twitter.com/ShakyFoundatio)  
**Website:** [shakyfoundation.com](https://shakyfoundation.com)  
**Mastodon:** @ShakyFoundation

---

*Working paper — 2026. The foundation is shaky only in the sense that foundations always are when examined closely.*
