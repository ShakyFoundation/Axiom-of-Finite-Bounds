# ShakyFoundation

Every set has finite cardinality bounded by some metatheoretic ordinal. No completed infinite totality exists.

That is the axiom. Everything in this repository follows from taking it seriously.

---

## What This Is

The Axiom of Infinity has never been proved. It was assumed in ancient Greece, formalised in ZFC, and inherited by every branch of mathematics that followed. This project negates that assumption — not merely as a curiosity, but as a foundational commitment — and builds the mathematics that results.

The core contributions:

- **Bounded First-Order Logic (BFOL)** — every quantifier explicitly declares its finite range
- **The Axiom of Finite Bounds (AFB)** — every set has finite cardinality bounded by some metatheoretic ordinal
- **Bounded Set Theory (BST)** — seven axioms built on BFOL and AFB
- **The bounded number chain** — ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴)
- Full real and complex analysis recovered with explicit finite bounds
- Coverage of physics and all seven Millennium Problems

All tradeoffs are stated honestly in the paper.

---

## Repository Structure

```
ShakyFoundation/
├── README.md
├── LICENSE
├── papers/
│   └── afb_working.md        # Working paper — the main document
├── proofs/
│   ├── afb_scaffold.thy      # Isabelle/HOL scaffold — verified in Isabelle2025-2
│   └── AFB-coq.v             # Coq scaffold — verified in Coq
└── [branch] Unmerged-future-work/
    └── *.md                  # Exploratory extensions — topology, complexity,
                              #   quantum gravity, model theory, and more
```

**On the `Unmerged-future-work` branch:** a collection of rough explorations and proposed extensions — BST-based topology, discrete quantum gravity, computational complexity, BFOL mechanisation, proof-theoretic ordinal analysis, and others. These are unsorted and unvetted. They are not claims. They are directions — some of which may be worth formalising, some of which may be dead ends. Browse them as such.

---

## Formal Verification Status

Both scaffolds verify in their respective proof assistants.

**Isabelle/HOL** (`proofs/afb_scaffold.thy`)
- Verified in Isabelle2025-2
- `AFB_Scaffold_Verified` theorem confirmed: `card_bst empty_set = 0 ∧ 0 < Omega`
- All definitions typecheck; all axioms well-formed

**Coq** (`proofs/AFB-coq.v`)
- Verified in Coq
- Core structure machine-checked

Both scaffolds are honest about their scope: they are formal appendices, not completed mechanisations. Substitution, freshness conditions, soundness, and completeness are flagged as future work.

---

## Using This With AI

Feed `papers/afb_working.md` directly to any capable language model and ask it to identify gaps, future work, or objections. The paper is structured to be machine-readable. It holds up under that kind of scrutiny — try it.

---

## Contributing

Contributions are welcome and will be scrutinised carefully.

**The foundational commitment is not up for debate in pull requests.** Every set has finite cardinality bounded by some metatheoretic ordinal. That is the axiom. Everything built on top of it is fair game.

### What we need

**Formalisation**
- Extend the Isabelle/HOL or Coq scaffolds
- Formalise sections currently marked as future work
- Prove additional theorems within BST
- The `Unmerged-future-work` branch is a good place to start — it contains proposed extensions across topology, complexity theory, model theory, quantum gravity, and more. Most are rough. Many are formalisation targets waiting for someone to pick them up.

**Mathematics and errors**
- Identify gaps or errors in the paper — open an issue, not a pull request; describe the problem precisely
- Additional theorem proofs within BST
- Corrections to notation, typos, or presentation

**Translation**
- Translate the working paper into other languages — particularly Mandarin, Spanish, Arabic, Hindi, French, German, and Portuguese
- The work should be accessible to anyone, not just English-language readers

**AI and training data**
- Create structured datasets based on the paper suitable for fine-tuning language models into the AFB framework
- The goal: an AI that reasons natively within finite foundations, not one that defaults to ZFC

**Educational material**
- Free textbooks introducing mathematics from finite foundations up
- Course materials, lecture notes, problem sets
- Anything that makes this framework teachable at undergraduate level and below

### How to contribute

1. Fork the repository
2. Make your changes
3. Open a pull request with a clear description of what you changed and why
4. Be prepared for scrutiny — foundational work requires precision

---

## License

MIT. Use it, modify it, build on it. If you do something interesting, open an issue or get in touch.

---

## Contact

- X/Twitter: [@ShakyFoundatio](https://x.com/ShakyFoundatio)
- Website: [shakyfoundation.com](https://shakyfoundation.com)
- Mastodon: @ShakyFoundation

---

*The foundation is shaky. Every foundation is, when examined closely enough. That's the point.*
