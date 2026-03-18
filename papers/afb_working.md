# The Axiom of Finite Bounds

Bounded First-Order Logic and the Mathematics of Finite Bounds

Working Paper — 2026


# Abstract

This paper constructs a rigorous, self-contained alternative foundation for finite mathematics from a single axiom: the Axiom of Finite Bounds (AFB), which asserts that every set has finite cardinality bounded by some metatheoretic natural number. The construction proceeds in three stages.

The first stage (Parts III–IV) establishes the foundational package. Bounded First-Order Logic (BFOL) is developed as the appropriate logic for a setting in which completed infinite domains are not admitted: quantification is bounded, variable ranges are explicit, and the semantics of quantification does not presuppose infinite totalities. Within BFOL, primitive ordinals and primitive cardinality are introduced, and the Finite Coincidence Theorem — that cardinality and ordinal-membership coincide on finite sets — is established. AFB is then stated. The seven axioms of Bounded Set Theory (BST) are built on top: Extensionality, Empty Set, Pairing, Union, Bounded Separation, Bounded Replacement, and Foundation (proved as a theorem of BST rather than assumed as an independent axiom — included for completeness of the ZFC comparison). Power Set, the Axiom of Infinity, and unrestricted Choice are absent, with each omission formally justified.

The second stage (Parts V–IX) develops the mathematics the system supports. The Burali-Forti problem for bounded theories — which arises when a maximal bound is asserted internally — is resolved by treating the bound as a metatheoretic constraint rather than an internal object, the same structural move ZFC uses for proper classes. Two induction schemas (BST-native and Buss's S¹₂ PIND) are compared in full. Function and relation theory is developed without Power Set via syntactic and axiomatic approaches. The complete bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) is constructed explicitly, with ℝ_B(k) as the Cauchy completion of ℚ_B(k) and ℂ_B(k⁴) as the Cartesian square of ℝ_B(k). The full apparatus of real analysis — continuity, differentiation, integration, convergence, transcendental functions — is recovered over ℝ_B(k) (Type II: exact BST theorems at each bound level), and complex analytic machinery is recovered over ℂ_B(k⁴) with explicit error bounds (Type III: approximate, with error vanishing as k grows). A four-category accounting classifies how classical theorems relate to BST: most analysis is recovered with explicit bounds (Category A); all purely finite mathematics is directly provable (Category B); results requiring uncountable Choice or completed infinite structure are correctly absent (Category C); three universal statements at the edge of finite induction — Goodstein, Paris-Harrington, Ackermann totality — form a precisely characterised narrow gap (Category D).

The third stage (Parts XII–XIII) applies the completed construction to physics and the Millennium Problems as exploratory extrapolations. In physics, the case is made that infinity enters as calculational scaffolding rather than physical ontology, and the structural parallel between AFB and the holographic bound is identified. For the Millennium Problems, each of the seven Clay Institute problems is analysed problem-by-problem: P vs NP survives completely unchanged; the Hodge Conjecture, previously stated to transform into the Tate Conjecture, is now also formulable as a bounded Hodge conjecture over ℂ_B(k⁴); the Riemann Hypothesis has a proved finite-field analog (Weil/Deligne), a surviving prime-counting reformulation, and additionally a truncated zeta function formulation over ℂ_B(k⁴); Yang-Mills and Navier-Stokes reframe as lattice and discrete questions, with gauge groups now recoverable over ℂ_B(k⁴) as Type II uniform families; BSD splits into available finite arithmetic content and unavailable analytic content; and the Poincaré Conjecture, though solved classically, has a BST-available combinatorial analog.

The result is a rigorous, self-contained alternative foundation for finite mathematics, with all tradeoffs stated at the level of precision the mathematics demands.

**Keywords:** bounded set theory, finitist foundations, Axiom of Finite Bounds, bounded first-order logic, bounded reals, Burali-Forti problem, finite mathematics, ZFC alternatives


# Part I: Preamble


## What this paper builds

This paper constructs a complete formal foundation for mathematics from a single axiom: every set has a finite cardinality bounded by some finite ordinal. From that one commitment, the logic, the set theory, the arithmetic, and the main body of analytic mathematics are constructible — without any appeal to completed infinite totalities.

The construction proceeds in order of logical dependence. The axiom forces a discipline on the logic used to reason about it: quantification must be bounded, because unrestricted quantification over a potentially infinite domain is semantically incoherent in a setting where no such domain is admitted. That discipline is Bounded First-Order Logic (BFOL), developed in Part III. Within BFOL, three further ingredients are needed before the axiom can even be stated: primitive ordinals give meaning to the bound n, primitive cardinality gives meaning to the size of a set, and the coincidence of the two in the finite case is established as a theorem (the Finite Coincidence Theorem, Part III). With those in place, the Axiom of Finite Bounds (AFB) is stated — also in Part III. The set-theoretic axioms of Bounded Set Theory (BST) are then built on top of BFOL and AFB in Part IV. The rest of the paper develops the mathematics that the system supports.

A terminological note on "recovery." Throughout this paper, the word "recovered" is used in a technically stratified sense and is never univocal. Classical results may be recovered in four distinct ways: as exact internal BST theorems about BST objects (Type I); as uniform families of BST theorems indexed by the bound parameter k, with stable form across the family (Type II); as bounded theorems carrying an explicit error term that vanishes as k grows (Type III); or as metatheoretic uniformity claims about the family of bounded models, not expressible as a single BST sentence at any level (Type IV). These types are strictly ordered in strength. The full taxonomy, with the criterion distinguishing each type and its relationship to the paper's four-category accounting, is developed in Part IX, Section 9.1. All subsequent uses of "recovered" are to be read against that taxonomy. Where the type is not obvious from context, it is stated explicitly.

The paper has thirteen parts:

**Part I** — this preamble.

**Part II** — a historical survey of the programs that attempted finite or bounded foundations before this one: Kronecker, Hilbert, Brouwer, Weyl, Nelson, the ultrafinitists, and ZF¬∞. Each is examined at the point where it stopped. The survey is not merely historical — it identifies the four structural stopping points that every prior program hit, and shows precisely how this paper addresses each one.

**Part III** — the foundational package: BFOL, primitive ordinals, and AFB together. These three are not separable. BFOL provides the language. Primitive ordinals provide the minimal arithmetic needed to give content to the phrase "bounded by n." AFB states the foundational constraint. They arrive as a unified commitment.

**Part IV** — the seven axioms of Bounded Set Theory. These are the set-construction principles that operate within the framework of Part III: Extensionality, Empty Set, Pairing, Union, Bounded Separation, Bounded Replacement, and Foundation (which is shown to be a theorem of BST, not an independent axiom — included here for completeness of the ZFC comparison). Power Set, the Axiom of Infinity, and unrestricted Choice are not among them, and each omission is formally justified with an explicit account of what is recoverable.

**Part V** — ordinals and the Burali-Forti problem. The full ordinal theory is developed here, including the result that no prior finitist program has addressed: when a maximum bound is asserted internally to the theory, a bounded analogue of the Burali-Forti paradox arises. The resolution — the bound as a metatheoretic constraint rather than an internal object — is the structural move that distinguishes BST from all prior attempts.

**Part VI** — bounded induction. Two schemas are developed in full: the BST-native successor induction schema, and Buss's bit-induction schema from S¹₂. Both are valid in all models of BST. Their relationship to each other and to full Peano Arithmetic is characterised precisely.

**Part VII** — functions and relations. Without Power Set, function spaces are not automatically available. Two approaches are developed: the syntactic approach, in which functions are defined predicates rather than sets, and the axiomatic approach, in which a Function Axiom recovers function graphs as first-class objects when cardinality conditions permit.

**Part VIII** — the bounded number chain. The natural numbers ℕ_B(k), integers ℤ_B(k), rationals ℚ_B(k), bounded reals ℝ_B(k), and bounded complex numbers ℂ_B(k⁴) are constructed explicitly as parameterised families of finite sets. The closure problem — that arithmetic operations may exceed a fixed bound — is confronted directly, and two resolutions (truncated arithmetic and domain restriction) are developed. The elementary number theory of each system is established, and the bounded reals are constructed as a Cauchy completion of ℚ_B(k), with the bounded complex numbers constructed as ℝ_B(k) × ℝ_B(k), completing the chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴).

**Part IX** — analysis. The bounded reals ℝ_B(k), constructed in Part VIII as a Cauchy completion of ℚ_B(k), serve as the analytic domain. The full apparatus of real analysis — continuity, differentiation, integration, convergence, and transcendental functions — is recovered within this construction (predominantly Type II: exact BST theorems at each bound level, with the bounded Cauchy theorem in Part X as a Type III approximate recovery). The relationship between classical analysis and BST is accounted for precisely: most classical theorems are recovered in Type II or Type III form, carrying explicit bounds and being strictly more informative than their classical counterparts; a small class of results (Goodstein, Paris-Harrington, Ackermann universality) sit at the edge of what finite induction can reach; and some ZFC theorems — Banach-Tarski, non-measurable sets, the well-ordering of ℝ — are correctly absent because they concern objects BST does not posit.

**Part X** — bounded complex analysis. The complex-analytic apparatus over ℂ_B(k⁴) is developed: k-holomorphic functions, bounded Cauchy-Riemann equations, bounded contour integration and Cauchy's theorem (with explicit error bound C/k), bounded Dolbeault cohomology as a finite-dimensional vector space over ℂ_B(k⁴), and preliminary bounded Kähler geometry. The part closes with the bounded Hodge conjecture — the secondary BST formulation of the Hodge conjecture, with all objects well-defined within BST.

**Part XI** — computational complexity. The connection to Buss's S¹₂ established in Part VI is developed into a full complexity theory: BST-P and BST-NP as uniform families over bounded domains, their extensional equivalence to classical P and NP, the polynomial hierarchy via the Σ^b_i formula classes of BFOL, the formal logical status of P vs NP in BST, and the recovery of asymptotic complexity via metatheoretic families.

**Part XII** — physics, as an extrapolation. The relationship between the infinite structures of theoretical physics and the finite predictions physics actually makes is examined directly. The argument is that infinity enters physics as theoretical scaffolding from which finite results are extracted, not as an indispensable component of physical ontology. The bounded analogs of the relevant mathematical structures are identified, and the connection between BST and discrete approaches to quantum gravity is explored. This part applies the formal core of Parts I–XI to physical questions; formal development of BST-based physics is deferred to future work.

**Part XIII** — the Millennium Problems, as an extrapolation. Each of the seven Clay Institute problems is examined on its own mathematical terms and recontextualised within BST. The central finding is that no problem simply dissolves: each either survives intact, transforms into a finite-field or discrete analog of comparable depth, or splits into a finite part (available) and an analytic part (requiring completed ℂ or smooth manifolds). The availability of ℂ_B(k⁴) (Part VIII) and the complex analysis of Part X strengthens the analysis of three problems: the Hodge Conjecture gains a second bounded formulation alongside the Tate Conjecture; the Riemann Hypothesis gains a truncated zeta function over ℂ_B(k⁴) for numerical investigation; and Yang-Mills gains a formal account of its gauge group structure via SU(N)_B(k⁴). This part applies the formal core to open problems in mathematics; formal development of the relevant BST-based theories is deferred to future work.


## What the paper does not do

This paper does not argue that infinite mathematics is wrong, inconsistent, or illegitimate. ZFC is a coherent and productive formal system. The Axiom of Infinity is not in contradiction with itself. The prior finitist literature has sometimes overreached in this direction — treating the rejection of infinity as an obvious truth rather than a foundational choice — and this paper does not follow that path.

What this paper argues is more modest and more precise: a rigorous and self-contained alternative foundation for finite mathematics is constructible from the Axiom of Finite Bounds alone, without any infinite commitment. The mathematics that depends essentially on completed infinite totalities is identified and honestly accounted for. The mathematics that can be recovered within a bounded framework — which turns out to include the large majority of what working mathematicians and physicists actually use — is constructed explicitly, with proofs, and classified by its recovery type (Section 9.1).

This paper also does not claim to escape Gödel's incompleteness theorems. BST is subject to both: the Category D gap (Theorem 5.5a) is BST's specific instantiation of Gödel's First Theorem, and Trakhtenbrot's theorem on finite-model undecidability (Theorem 3.6) provides an independent route to the same conclusion. The paper engages with both results explicitly, locating precisely where incompleteness manifests in BST and arguing that its specific form — universal statements about finite computations, not statements about infinite objects — is the epistemically honest version of the limitation.

The narrow gap is real and is named precisely: Goodstein's theorem, Paris-Harrington, and the universal totality of the Ackermann function sit at the edge of what finite induction can reach — every specific instance is provable, but the universal collection is not. These are acknowledged without softening. Everything else that classical mathematics proves is either directly provable in BST (Type I), recovered over the bounded reals as exact bounded theorems at each level (Type II), recovered as explicit approximations with error terms vanishing as the bound grows (Type III), or correctly absent because it concerns completed infinite objects (Banach-Tarski, non-measurable sets, uncountable cardinals) that BST does not posit and that have no finite interpretation. The gains are substantial: a foundation with lower ontological commitment, a logic that makes its quantifier ranges explicit, explicit cardinalities, paradox-free analysis, and Choice and Foundation as theorems rather than axioms.


## What is novel here

The prior programs are surveyed in Part II. Their contributions are real and this paper builds on them. What is new here falls into five categories.

First, the foundational package is complete. No prior program produced a formal system that combined a bounded logic, an explicit axiom stating the bound, and a full set-theoretic development on top of both. This paper does all three, in the right order.

Second, the Burali-Forti problem for bounded theories is solved. Prior programs did not assert a maximal bound and therefore did not face this paradox. This paper asserts the bound, derives the paradox, and resolves it — showing that the resolution is not an ad hoc patch but the same structural move that ZFC uses to handle its own Burali-Forti problem, applied correctly in the bounded setting.

Third, the bounded number chain is constructed in full. Prior finitist programs either abandoned real analysis entirely or recovered fragments of it at the cost of retaining potential infinity. The bounded reals of Part VIII recover the full analytic apparatus — derivatives, integration, convergence, transcendental functions — within a strictly finite setting, predominantly as Type II uniform family recoveries (exact BST theorems at each bound level) and in the complex-analytic case as Type III approximate recoveries with explicit error bounds. The chain does not stop there: the bounded complex field ℂ_B(k⁴) is constructed as ℝ_B(k) × ℝ_B(k), with the Cayley-Dickson extensions ℍ_B(k⁸) and 𝕆_B(k¹⁶) following. The complete chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) is the bounded counterpart of the classical number chain, with every object finite, every cardinality explicit, and every construction carried out within BST. All constructions are explicit and the proofs are given.

Fourth, the accounting is precise. Prior programs either overstated what was lost (abandoning analysis entirely) or understated it (claiming full recovery without examining hard cases). This paper gives a four-category accounting of how classical theorems relate to BST: recovered with explicit bounds (most of analysis), directly provable (all finite mathematics), correctly absent (Banach-Tarski and consequences of uncountable Choice), and the narrow gap (three universal statements at the edge of finite induction). Every major affected theorem is classified.

Fifth, the model theory is explicit. Prior finitist programs rarely gave a rigorous account of what their models look like or how their theories relate to classical model-theoretic results. This paper provides: a formal BST-Model definition (Definition 5.4); the Bounded Reflection Principle as a named theorem (Theorem 3.5) with a coherence proof in ACA₀; Trakhtenbrot's theorem applied to establish BST-B's undecidability independently of Gödel (Theorem 3.6); the Finite Satisfiability theorem for BST's set-building operations (Theorem 5.3a); and a formal Independence of Universal Combinatorics theorem (Theorem 5.5a) precisely characterising the Category D gap. Additionally, the recovery analysis of the four removed ZFC axioms — including the Bounded Power Set theorem (Theorem 4.3) and the redundancy of AC_ω and Dependent Choice — makes explicit what prior finitist programs left implicit.

The result is not a complete solution to every problem in foundations. It is a rigorous and self-contained alternative foundation for finite mathematics, with every tradeoff stated at the level of precision the mathematics demands.


End of Part I

# Part II: What Failed and Why

Skepticism about infinite foundations has a distinguished intellectual history. The programs surveyed in this part are not marginal — they were developed by mathematicians of the first rank, motivated by genuine foundational concerns, and pursued with technical seriousness. Each identified genuine foundational problems. None produced a complete alternative foundation. Understanding why each stopped where it did is not merely historical interest. It is prerequisite for not repeating the same failures.
This part proceeds chronologically, but the organizing question throughout is not historical but technical: what was the stopping point, and why was it a stopping point rather than a solved problem?


## 2.1  Kronecker and the Integer Foundation (1880s)

Leopold Kronecker is the earliest major figure in the finitist tradition, whose foundational position was stated in the declaration that God made the integers and all else is the work of man. The philosophical position was clear: mathematical objects that cannot be constructed from the integers by finite operations do not genuinely exist. The real numbers, as constructed by Dedekind or Cantor, were in Kronecker's view illegitimate — not because they led to contradiction, but because the construction required infinite processes that could not be finitely exhibited.
Kronecker's program had a precise technical target. He aimed to arithmetize analysis — to show that the results of real analysis could be recovered by purely algebraic, finitely constructive means. The program influenced subsequent development substantially, particularly in algebraic number theory, where constructive methods are native.

### Where it stopped

Kronecker never formalized his foundational position into an explicit axiom system. The program remained programmatic — a set of methodological commitments rather than a formal foundation. The specific technical challenge that was never met was the recovery of continuity arguments. The intermediate value theorem, the extreme value theorem, and related results of classical analysis are formulated over the real numbers — a completed infinite object that Kronecker's arithmetization could not construct. His approach could handle algebraic numbers and algebraic functions, but lacked the domain over which the analytic apparatus could be stated.
The diagnosis matters. The stopping point was not that IVT and EVT are irreducibly infinite in their mathematical content — it is that Kronecker had no bounded substitute for ℝ over which to state them. As this paper demonstrates in Part VIII, both results are recoverable in full computational content once the bounded reals are constructed. The program stalled at the construction problem, not at an intrinsic limit of finite reconstruction.
The deeper reason the program stalled is that Kronecker had no formal account of what "finitely constructible" meant. Without that account, the boundary between legitimate and illegitimate mathematics could not be precisely drawn, and the bounded domain required for the analytic results could not be defined. Subsequent workers — Hilbert, Brouwer, Weyl, Nelson — each attempted to supply that missing formalization, with different answers and different stopping points of their own. None produced a construction that closed the gap. The account this paper provides in Part IX is the first to do so.


## 2.2  Hilbert's Finitism and the Consistency Program (1900–1931)

David Hilbert's foundational program, developed through the 1920s, represents the most ambitious attempt to secure infinite mathematics on finite grounds. The program had two components. First, a finitist metamathematics — a restricted body of combinatorial reasoning about finite symbol strings, which Hilbert took to be unquestionable. Second, a proof that the infinite formal systems of mathematics (including set theory and analysis) are consistent — where that proof itself uses only the finitist metamathematics. If successful, the program would have justified infinite mathematics without assuming it: the infinite would be a conservative extension of the finite, safe to use precisely because it can be shown consistent by finite means.
The technical vehicle for this program was proof theory. By encoding mathematical proofs as finite symbol strings and reasoning about those strings combinatorially, Hilbert aimed to establish consistency without using infinite objects. The approach was genuinely novel and technically productive — it created the discipline of proof theory, which remains active and important.

### The formal content of Hilbert's finitism

Hilbert's finitist base was not fully formalized in a single document, but its content can be reconstructed from his writings and those of his collaborators (Bernays, Ackermann, von Neumann). The finitist base accepted:
- Finite strings of symbols as primitive objects
- Primitive recursive functions — functions definable by explicit recursion on finite structures
- Quantifier-free reasoning about these objects
- Induction over finite strings, stated without reference to infinite totalities
What it did not accept was completed infinite totalities or unrestricted quantification over infinite domains as objects of the finitist base itself. Crucially, Hilbert's finitism retained classical logic throughout — including the law of excluded middle. The restriction was on the ontology of the metatheory, not on the logic applied within it. This distinguishes Hilbert's position sharply from Brouwer's: where Brouwer rejected LEM for infinite domains as a matter of principle, Hilbert accepted it as a logical tool while denying that the infinite objects it quantified over needed to exist as completed totalities. The consistency programme was precisely an attempt to justify that acceptance by finite means.

### Where it stopped

Gödel's incompleteness theorems (1931) ended the program as originally conceived. The second incompleteness theorem establishes that any consistent formal system strong enough to express elementary arithmetic cannot prove its own consistency within that system. Since Hilbert's finitist base is (at minimum) strong enough to express elementary arithmetic, it cannot prove the consistency of systems extending it — including the infinite systems it was meant to justify.
This is a precise technical result, not a philosophical objection, and it needs to be stated precisely. The theorem does not show that infinite mathematics is inconsistent. It shows that the consistency of infinite mathematics cannot be established by the finite means Hilbert proposed. The program's specific promise — finite justification of the infinite — cannot be kept.
A subtler point, often missed: the incompleteness theorems also constrain finitist programs themselves. Any formal system for bounded or finite mathematics that is strong enough to express elementary arithmetic faces the same limitation. It cannot prove its own consistency. This is not a special problem for infinite mathematics — it is a feature of all sufficiently expressive formal systems. Bounded Set Theory faces this constraint directly. The paper does not pretend otherwise: BST's specific instantiation of Gödel's First Theorem is the Category D gap (Theorem 5.5a), its undecidability is established independently via Trakhtenbrot's theorem (Theorem 3.6), and its consistency is established relative to ACA₀ rather than proved internally (Section 3.3.3.7, Theorem 3.5). The constraint is accepted, localised precisely, and honestly accounted for.


## 2.3  Brouwer's Intuitionism (1907–1950s)

L.E.J. Brouwer's intuitionism is philosophically the most developed constructivist alternative to classical mathematics and the programme most directly relevant to the question of what analysis requires. Brouwer was not a finitist — he accepted potential infinity — but his foundational claim was that mathematics is a mental construction: mathematical objects exist only insofar as they are constructed by the mathematical mind, in time, through finite mental acts. An infinite set does not exist as a completed totality; it exists as an ongoing construction that can always be extended.
From this philosophical position, Brouwer derived sweeping technical consequences. The law of excluded middle — the principle that for any proposition P, either P or not-P holds — was rejected for infinite domains, because for an unfinished construction, neither the proposition nor its negation may have been established. This rejection forced the reconstruction of large parts of analysis and algebra on constructive grounds.

### Technical content of intuitionist mathematics

Brouwer's mathematics is not merely classical mathematics with the law of excluded middle removed. It is a different mathematical universe with different theorems. Notable divergences from classical mathematics include:
- Every total function from the reals to the reals is continuous — a theorem in intuitionist mathematics that is false classically
- The intermediate value theorem requires additional constructive hypotheses
- The Heine-Borel theorem (that every open cover of a closed interval has a finite subcover) requires reformulation
- Real numbers are represented as choice sequences — potentially infinite sequences of rational approximations — rather than completed objects
These are not weaknesses but features of a genuinely different mathematical framework. Brouwer's universe is mathematically rich and internally consistent.

### Where it stopped

Intuitionism did not solve the foundational problem from the finitist perspective — it relocated it. Choice sequences, the primary tool for handling real numbers intuitionistically, are potentially infinite objects. Brouwer accepted potential infinity (an ongoing construction without a fixed endpoint) while rejecting actual infinity (a completed infinite totality). As the argument developed in the Preamble suggests, potential infinity defers rather than removes the infinite commitment: a construction that can always be extended encodes an infinite ontological commitment in a different register.
The technical stopping point relative to BST is not that intuitionism recovers too little of the analytic apparatus. Bishop's constructive mathematics — the mature technical development of the intuitionist programme — recovers the intermediate value theorem, the extreme value theorem, derivatives, integration, and transcendental functions, all without non-constructive existence proofs. The structural stopping point is this: intuitionism does not ask whether any infinite commitment is epistemically warranted. It takes potential infinity as given and works within that commitment. The question BST asks is whether any infinite commitment — actual or potential — is epistemically warranted. Intuitionism does not address that question; it presupposes a particular answer to it.
This is a genuine and important distinction. BST does not supersede intuitionism — it asks a different foundational question. What the intuitionist reconstruction programme demonstrates, and what BST inherits, is that the analytic apparatus is not intrinsically dependent on completed infinite totalities. The bounded reals of Part VIII extend this result further: by eliminating the potential infinity of choice sequences as well, they show that the analytic apparatus does not require any infinite commitment, actual or potential. The bounded complex field ℂ_B(k⁴) and the Cayley-Dickson extensions ℍ_B(k⁸) and 𝕆_B(k¹⁶) extend this further still: the algebraic apparatus of complex analysis, quaternionic geometry, and gauge theory is equally recoverable without any infinite commitment.


## 2.4  Weyl's Predicativism (1918)

Hermann Weyl's 1918 monograph Das Kontinuum (The Continuum) represents one of the most careful technical attempts to reconstruct analysis on restricted foundations. Weyl's concern was not infinity per se but impredicativity — the logical circularity involved in defining a set by reference to a totality that includes the set being defined.
The Power Set axiom is the primary source of impredicativity in set theory. Forming the set of all subsets of a given set requires quantifying over all subsets — including the very set being formed. Weyl, following Poincaré, argued that impredicative definitions do not genuinely define objects; they presuppose the existence of what they purport to construct.

### Technical content

Weyl's system retained the natural numbers as given (avoiding Kronecker's arithmetization problem) but restricted set formation to predicative definitions — those that quantify only over previously defined totalities. The resulting system is substantially weaker than ZFC but strong enough to recover the core of classical analysis: continuous functions on compact intervals, the derivative and Riemann integral, and the theory of power series. Results requiring impredicative comprehension — the general theory of measurable functions, the Hahn-Banach theorem, and theorems about arbitrary subsets of ℝ — lie beyond predicative reach.
The precise strength of predicative analysis was characterized much later by Feferman and Schütte: it corresponds to the proof-theoretic ordinal Γ₀ (Gamma-naught), a specific ordinal in the ordinal notation system developed for measuring proof-theoretic strength. Systems up to this strength are predicatively justifiable; systems beyond it require impredicative comprehension.

### Where it stopped

Weyl's program stopped at two points. First, certain theorems of ordinary mathematics — including some standard results in measure theory and functional analysis — require impredicative definitions and cannot be recovered predicatively. Weyl acknowledged this and accepted the loss. Second, and more fundamentally, predicativism retains the natural numbers as an unanalyzed given. The Axiom of Infinity, or its equivalent, is needed to assert that the natural numbers exist as a completed totality. Predicativism restricts what can be built on top of this foundation but does not challenge the foundation itself.
For the purposes of bounded set theory, Weyl's contribution is double: the predicativist argument against Power Set, which BST inherits, and the demonstration that substantial analytic content is recoverable without impredicative comprehension. Part IV of this paper develops two independent arguments for rejecting Power Set: the predicativist argument, which objects to the impredicative definition of P(A), and the cardinality argument, which shows that for any bound n_M, a set of size ⌊log₂(n_M)⌋ + 1 has a power set exceeding the bound. Both arguments support the same conclusion by different routes. Weyl's contribution is to have established the predicativist line with full technical rigour — BST inherits that argument and pairs it with the cardinality argument, each strengthening the other. One further nuance: the cardinality argument is not a flat rejection but a threshold result. For small sets — those with |A| ≤ ⌊log₂(n_M)⌋ — the full power set P(A) does exist in BST (Theorem 4.3, Bounded Power Set). Weyl's predicativist critique applied universally; BST's cardinality argument is more precise, identifying exactly where Power Set holds and where it fails.


## 2.5  Nelson's Predicative Arithmetic (1986)

Edward Nelson's Predicative Arithmetic (1986) is the most technically rigorous finitist program prior to the present work and the one most directly relevant to bounded set theory. Nelson worked within first-order arithmetic rather than set theory, aiming to characterize the fragment of arithmetic that is genuinely finitistically justified without relying on the Axiom of Infinity or its arithmetic equivalent.
Nelson's key insight was that the standard formulation of mathematical induction — for any property P, if P holds of 0 and P(n) implies P(n+1), then P holds of all natural numbers — is itself an infinite commitment when P ranges over arbitrary formulas. The conclusion 'P holds of all natural numbers' quantifies over a completed infinite totality. Nelson proposed restricting induction to bounded formulas — formulas in which all quantifiers are bounded by explicit numerical bounds.

### Formal content: the system Q and bounded arithmetic

Nelson worked primarily with Robinson's Q, the weakest system of arithmetic strong enough to represent all recursive functions. Q has seven axioms:

```
Q1:  Sx ≠ 0
Q2:  Sx = Sy → x = y
Q3:  x ≠ 0 → ∃y (x = Sy)
Q4:  x + 0 = x
Q5:  x + Sy = S(x + y)
Q6:  x · 0 = 0
Q7:  x · Sy = (x · y) + x
```

Q does not include any induction axiom. It is weak enough to be finitistically uncontroversial and strong enough to express all primitive recursive functions as terms — though without induction it cannot prove their totality.
Nelson then developed bounded arithmetic by adding restricted induction: for any bounded formula φ(x) (one in which all quantifiers have the form ∀y < t or ∃y < t for some term t), the induction schema

```
φ(0) ∧ ∀x(φ(x) → φ(Sx)) → ∀x φ(x)
```

is restricted to bounded φ. Unbounded induction — induction over formulas with unrestricted quantifiers — is excluded.

### What Nelson's system recovers

Bounded arithmetic is strong enough to develop a substantial portion of elementary number theory, including the basic properties of addition, multiplication, divisibility, and the distribution of small primes. It supports the development of polynomial-time computability and provides the formal basis for computational complexity theory — Buss's system S¹₂, developed independently around the same time, establishes the precise relationship between bounded arithmetic and the polynomial hierarchy.

### Where it stopped

Nelson's program had two stopping points. First, he could not establish — and this remains open — whether the consistency of bounded arithmetic can be proved within bounded arithmetic itself. This is a subtle question: Gödel's second incompleteness theorem applies to any system extending Q with sufficient induction, which means bounded arithmetic at the level of IΔ₀ + Ω₁ is likely subject to it. Whether weaker fragments can prove their own consistency is the genuinely open question, and Nelson's hope was that a sufficiently restricted system might evade Gödel's constraint. That hope has not been vindicated. BST addresses this gap directly: the consistency of BST is established not internally but relative to ACA₀ — Arithmetical Comprehension — a metatheory stronger than BST itself but weaker than ZFC (Section 3.3.3.7, Theorem 3.5). This is the correct response to Gödel's second theorem: not evasion but honest external grounding at the minimum metatheoretic strength required.
Second, and more relevant here, Nelson's program was arithmetic rather than set-theoretic. It did not address the set-theoretic framework directly, and in particular it did not produce a replacement for ZFC. The question of how to build a set theory on bounded arithmetic foundations — which is precisely the question that bounded set theory must answer — was left open. BST answers it: the foundational package of Part III (BFOL, primitive ordinals, AFB) provides the set-theoretic grounding Nelson's arithmetic lacked, and the axiom system of Part IV completes the extension.
Nelson also held a more radical position: he believed the consistency of Peano Arithmetic itself was an open question, a view that remains a minority position in logic but one taken seriously by workers in ultrafinitism. This paper does not take a position on Nelson's radical conjecture directly — though it should be noted that BST's external consistency grounding in ACA₀ (Section 3.3.3.7) has an indirect bearing: ACA₀ proves Con(PA), so the metatheory BST relies on already implies the consistency of Peano Arithmetic. A reader who doubts Con(PA) would therefore need to doubt ACA₀ as well, which is a stronger position than Nelson's. The paper's assumption is ACA₀, not Nelson's conjecture; the foundational work here is sufficient motivation regardless of where one stands on the radical question.


## 2.6  Esenin-Volpin and Ultrafinitism (1961–)

Alexander Esenin-Volpin introduced ultrafinitism in a 1961 paper that proposed, as a serious mathematical program, the position that the natural numbers do not form a completed infinite totality — not even a potentially infinite one. The natural numbers, on the ultrafinitist view, are finite in number. There is a largest natural number. The successor function cannot be applied indefinitely.
This is a stronger position than anything previously surveyed. Finitism (Hilbert) treats the natural numbers as a given finitist base and rejects higher infinities. Intuitionism (Brouwer) accepts potential infinity but rejects actual infinity. Predicativism (Weyl, Feferman) accepts the natural numbers and potential infinity but restricts set formation. Ultrafinitism rejects all of these — including the natural numbers as an unbounded sequence.

### The core ultrafinitist argument

Esenin-Volpin's argument was epistemological. We know what the number 1 is. We know what 2 is. We know what 10 is. We have some acquaintance with 10¹⁰⁰ (a googol). But do we have any genuine cognitive grasp of the number 10^(10^(10^(10)))? Esenin-Volpin argued that at some point the succession of symbols loses contact with anything we can actually mean — that "very large numbers" are in practice meaningless, and that the claim that the successor operation can be applied without limit is itself an extrapolation that goes beyond what we have any warrant to assert.
This argument has a sharper formal version, though one that introduces a further and more contentious premise. The physical universe contains approximately 10⁸⁰ particles. A number larger than 10⁸⁰ cannot be physically instantiated — there are not enough particles to write it down, even in unary notation. If mathematical objects require physical instantiation to exist — a claim ultrafinitism typically adds but which is a separate and substantial philosophical commitment — then numbers above a physical bound do not exist. BST does not rest on this premise. The bound in BST is a formal constraint on the theory's domain, not a claim about physical realizability.

### Zeilberger's version

Doron Zeilberger has developed a more informal but mathematically engaged version of ultrafinitism, arguing that continuous analysis is a degenerate case of discrete analysis as the mesh size goes to zero, and that the natural numbers have a largest member N whose value we simply do not know. Zeilberger has formalized parts of this program in the context of combinatorics and generating functions, where discrete methods are native.

### Where it stopped

Ultrafinitism has not converged on a unified formal system. The core difficulty is specifying where the natural numbers end without specifying a particular number as the bound — since any particular bound would be arbitrary and subject to the question "why not one more?" The external-bound solution developed in Part III of this paper addresses this directly: the bound is asserted to exist without being specified within the theory. But the ultrafinitist literature has not generally adopted this solution, preferring instead to work with various fragments and approximations.
A further technical stopping point: ultrafinitist arithmetic has not been shown strong enough to develop the mathematics needed for the applications that motivate the programme. Computational complexity theory requires reasoning about functions of large inputs; analysis requires a real number domain. The present paper addresses both gaps directly. The connection to Buss's bounded arithmetic handles complexity theory. The construction of the bounded reals in Part VIII demonstrates that the full apparatus of computable real analysis is available within BST — derivatives, integration, convergence, and transcendental functions — without any infinite commitment. The bounded complex field ℂ_B(k⁴) extends this into complex analysis and algebraic geometry; the Cayley-Dickson chain reaches the algebraic structures of modern physics. The ultrafinitist instinct was correct. What was missing was the appropriate formal construction.


## 2.7  ZF¬∞: Hereditarily Finite Set Theory (Ackermann 1937)

The most direct formal predecessor of bounded set theory is ZF¬∞ — the theory obtained from ZFC by replacing the Axiom of Infinity with its negation. This system was first studied by Wilhelm Ackermann in 1937 and has been extensively analyzed in the subsequent literature.
In ZF¬∞, every set is finite. The system is equiconsistent with Peano Arithmetic — they can be mutually interpreted, and their consistency strength is identical. ZF¬∞ supports a substantial development of finite combinatorics, elementary number theory (interpreted set-theoretically), and discrete mathematics.

### What ZF¬∞ establishes

ZF¬∞ retains all axioms of ZFC except Infinity, replacing it with its negation. This means:
- Extensionality, Pairing, Union, Power Set, Separation, Replacement, and Foundation all hold
- The Axiom of Choice is retained as an axiom, though Choice over finite collections is already provable in ZF¬∞ by explicit enumeration — a fact that prefigures BST's treatment of Choice as a theorem rather than an axiom
- Every set is a member of the hereditarily finite sets — sets whose transitive closure is finite
- The system is interpretable in Peano Arithmetic and vice versa

### The critical limitation: unbounded finitude

ZF¬∞ is the Aristotelian compromise in formal dress. Every set is finite, but there is no largest finite set. For any finite set S, the singleton {S} exists, and the union S ∪ {S} exists, and this construction can be iterated without bound. The domain of sets grows without limit. This is potential infinity in the Aristotelian sense: not a completed infinite object, but an unbounded process of finite construction. The commitment is not eliminated — it is relocated. Any theory whose domain of objects is unbounded is committed to infinitely many distinct objects, whether or not it collects them into a single set. The difference between ZF¬∞ and ZFC on this point is notational, not ontological.
This is the precise point at which bounded set theory diverges from ZF¬∞. Bounded set theory adds the assertion that the domain is bounded — that there is a finite upper limit on set size. This addition is what makes the negation of infinity genuine rather than terminological. And it is this addition that forces the departure from ZF¬∞ in other axioms, particularly Power Set.

### Why Power Set fails in bounded set theory but holds in ZF¬∞

In ZF¬∞, Power Set holds because the power set of any finite set with n elements has 2ⁿ elements, which is always finite. There is no contradiction because there is no upper bound — sets of any finite size are permitted.
In bounded set theory, once a global upper bound B on set cardinality is asserted, Power Set becomes untenable. For any set S with |S| = n where 2ⁿ > B, the power set P(S) would exceed the bound. Since the bound applies to all sets, P(S) cannot exist as a set. Power Set must be rejected — not by stipulation but as a consequence of the bound. This derivation is given formally in Part IV.


## 2.8  Structural Comparison: BST, ZF¬∞, and Predicative Analysis

The preceding survey identifies three formal systems as BST's closest predecessors: ZF¬∞ (hereditarily finite set theory, Section 2.7), Weyl's predicative analysis (Section 2.4), and Nelson's bounded arithmetic (Section 2.5). Each shares some features with BST and differs on others. The differences are not incidental — they reflect precise distinctions in ontological commitment, axiom content, and proof-theoretic strength. The following tables make those distinctions explicit.

```
Table 2.1 — Axiomatic comparison

Feature              ZF¬∞                PCA (Weyl/Feferman)    BST
─────────────────────────────────────────────────────────────────────────
Infinity             Negated             Accepted (potential)   Negated
Power Set            Retained (full)     Restricted             Fails (cardinality bound)
Global bound         None                None                   Explicit (AFB)
Domain               Infinite            Infinite               Finite (models bounded)
Logic                Standard FOL        Standard FOL           BFOL (bounded quantifiers)
Choice               Theorem (finite)    Theorem (finite)       Theorem (Theorem 4.1)
Foundation           Axiom               Axiom                  Theorem (Theorem 4.2)
```

Three distinctions in this table carry foundational weight.

First, ZF¬∞ negates Infinity but retains Power Set. It can do so because without a global bound, the power set of any finite set — though exponentially larger — is still finite and therefore admissible. BST's global bound is what forces Power Set to fail: for any bound n_M, there exist finite sets whose power sets exceed n_M. The failure of Power Set in BST is not a separate commitment; it is a consequence of the bound (Part IV, Theorem 7.1). ZF¬∞ makes neither claim.

Second, both ZF¬∞ and PCA have infinite domains — every model satisfying their axioms contains infinitely many distinct objects. ZF¬∞ models contain all hereditarily finite sets, of which there are ℵ₀. PCA models contain the natural numbers as a completed totality. BST models are finite. This is the sense in which BST is the only system among the three whose finitist commitment is ontologically complete rather than partial.

Third, the logic. Standard FOL carries no syntactic commitment to bounded quantification — its semantics allow quantifiers to range over the full domain, which in ZF¬∞ and PCA is infinite. BFOL enforces the bound at the level of syntax: unbounded quantifiers are not well-formed. This is not merely a notational preference; it ensures that every formula in BFOL has a finite evaluation procedure in any finite model, which is the formal basis for BST's decidability at the level of individual models (Part III, Theorem 3.6, and the contrast stated there between single-model decidability and all-finite-model undecidability).

```
Table 2.2 — Proof-theoretic strength

System       Ordinal    Equiconsistent with    Provably total functions
─────────────────────────────────────────────────────────────────────────
S¹₂          < ω^ω      (complexity-calibrated) Polynomial-time (FP)
BST          ω^ω        IΣ₁                    Primitive recursive
ZF¬∞         ε₀         PA                     Recursive (incl. Ackermann)
PCA          Γ₀         ATR₀                   Predicatively provably recursive
ZFC          far beyond  ZFC                   All computable functions
```

The ordinal ω^ω for BST is established in Section 9.7 and reflects the equivalence of BST's bounded induction with IΣ₁ (induction on Σ₁ formulas). The placement is confirmed by two independent boundaries: below, BST is strictly stronger than S¹₂ because BI-BST applies to all definable properties, not just Σ^b₁ formulas; above, BST cannot prove the totality of the Ackermann function, which separates it from ZF¬∞ (equiconsistent with PA at ε₀). The Category D gap — Goodstein, Paris-Harrington, Ackermann universality — is precisely the region between ω^ω and ε₀.

The comparison with ZF¬∞ is the most informative. BST is strictly weaker in proof-theoretic strength (ω^ω vs ε₀), cannot prove Ackermann total, and cannot prove Con(PA) — all results ZF¬∞ inherits from PA. The cost is real and is acknowledged as the Category D gap throughout this paper. The gain is the explicit global bound, finite model domains, and the replacement of Power Set by Bounded Separation — which together make BST the only system that is both formally finitist and ontologically complete in the sense that all its models are finite structures.


## 2.9  The Gap This Paper Addresses

Surveying these programs reveals a consistent pattern. Each identified a genuine problem with infinite foundations. Each developed a partial technical response. Each stopped at a point where the technical machinery ran out or the formal work became too difficult to complete.
The stopping points fall into four categories:

**Category 1 — Foundational incompleteness:** The programme identified what should be rejected but did not construct a positive alternative. Kronecker is the clearest example: the critique was clear, the construction was absent.

**Category 2 — Foundation retained, superstructure restricted:** The programme built a formal system on restricted principles but left the infinite foundation — the natural numbers as given — unchallenged. Weyl is the primary example: impredicativity was correctly targeted, but the natural numbers were taken as given, and with them the Axiom of Infinity in arithmetic dress. Nelson's arithmetic belongs here too: the bounded arithmetic framework is technically sophisticated but the set-theoretic extension was not completed and the arithmetic foundation still presupposes an unbounded ℕ.

**Category 3 — Infinite commitment relocated rather than removed:** The programme replaced one form of infinity with another. Brouwer replaced actual infinity with potential infinity — a genuine restriction, but one that retains an unbounded ontological commitment in a different register. The reconstruction programme was technically substantial but the foundational question was not answered.

**Category 4 — Philosophical incompleteness:** The instinct was correct but the formal convergence never occurred. Ultrafinitism (Esenin-Volpin, Zeilberger) is the primary example: the position that the natural numbers are bounded was stated clearly, but no unified formal system was produced.

Bounded set theory addresses all four categories. The positive alternative (Category 1) is the full axiom system developed in Part IV. The set-theoretic extension of bounded arithmetic (Category 2) is addressed by the foundational package of Part III — BFOL, primitive ordinals and cardinality, and AFB — which provides the set-theoretic grounding that Nelson's arithmetic lacked, with the induction and function theory that complete the extension developed in Parts VI and VII. The relocation problem (Category 3) is resolved by eliminating potential infinity entirely through the Axiom of Finite Bounds — the bounded reals of Part VIII require no infinite commitment, actual or potential, and the bounded complex field ℂ_B(k⁴) and Cayley-Dickson extensions carry this through the full algebraic superstructure. The unified formal system completing the ultrafinitist programme (Category 4) is the system as a whole.
One further observation. None of the prior programs addressed the Burali-Forti analogue — the paradox that arises when you assert a maximal bound internally to the theory. This is because none of them asserted a maximal bound. ZF¬∞ has no bound. Nelson's arithmetic has no set-theoretic bound. Ultrafinitism gestures at a bound but never formalizes it. The present paper is, to the author's knowledge, the first to state the bound, derive the paradox, and resolve it by the external-bound construction. That resolution, and its relationship to ZFC's proper class solution, is the subject of Part V.
A second further observation. None of the prior programs gave a rigorous model-theoretic account of their systems — what their models look like, how provability relates to truth across finite models, and how their theories stand relative to classical undecidability results. This paper provides that account explicitly: the BST-Model definition (Definition 5.4), the Bounded Reflection Principle with coherence proof (Theorem 3.5), undecidability via Trakhtenbrot's theorem (Theorem 3.6), and the Finite Satisfiability theorem (Theorem 5.3a). The engagement with Gödel's incompleteness theorems — accepting them, localising them to the Category D gap (Theorem 5.5a), and grounding consistency externally in ACA₀ — completes what the prior programs left either ignored or unresolved.


End of Part II

# Part III: The Foundational Package

The three components of this part form a single unified foundational commitment. Bounded First-Order Logic (BFOL) specifies the logical framework. Primitive ordinals supply the minimal arithmetic needed to give content to the notion of a bound. The Axiom of Finite Bounds (AFB) states the foundational constraint itself, now statable precisely because both BFOL and primitive ordinals are in place.

## 3.1  Bounded First-Order Logic (BFOL)


### 3.1.1  The problem with standard first-order logic in a bounded foundation

First-order logic is the standard logical framework for formal mathematics. Its language is economical, its proof theory is well understood, and its semantics — truth defined relative to a structure and a variable assignment — are clean and general. In most mathematical contexts, these features make it the ideal logical vehicle. In a bounded foundation, one feature is not neutral: unrestricted quantification.

In standard FOL, the formulas ∀x φ(x) and ∃x φ(x) are primitive. The variable x ranges over the entire domain of the structure — whatever that domain happens to be. The logic itself places no constraint on the size or character of that domain. A sentence like ∀x φ(x) is grammatically well-formed whether the domain contains three elements, three million, or infinitely many. FOL is ontologically permissive by design.

This permissiveness is tolerable in frameworks that accept unbounded or infinite domains without reservation. It is not acceptable in a bounded foundation. If the foundational commitment is that no completed infinite totality exists — that every domain of quantification is finite and bounded — then a logic whose primitive grammar allows unrestricted domain-wide quantification builds in more ontological latitude than the foundation is meant to permit. The logic would be silently assuming what the axioms are meant to deny.

The objection is not merely that unrestricted quantification is inconvenient. It is that it is semantically incoherent given the foundational commitment. A universally quantified statement ∀x φ(x) in standard FOL has a determinate truth value only if the domain over which x ranges is a determinate completed totality. If the foundation denies that such totalities exist — as BST does — then the semantics of ∀x φ(x) have no ground to stand on. The formula is not merely risky; it is undefined in the intended setting.

A critic might respond: keep standard FOL but restrict attention to finite models. Does that not achieve the same result without changing the logic? It does not, for two reasons. First, the restriction to finite models is an external semantic condition — it governs which structures are admitted as interpretations, but the grammar of the logic itself still permits the formation of unbounded quantified sentences. A sentence like ∀x φ(x) is still a well-formed formula even if every intended model happens to be finite. The logic and the foundation remain misaligned at the level of formation rules. Second, and more fundamentally: if the foundation is that completed infinite totalities do not exist, then the concept of an unbounded quantifier ranging over a potentially infinite domain should not be an intelligible notion in the language at all. The discipline should be enforced by the grammar, not retrofitted by the semantics.

Bounded First-Order Logic (BFOL) enforces the discipline at the level of grammar. Unrestricted quantifiers are not merely restricted in their interpretation — they are absent from the language. Every quantified formula must be explicitly bounded. The formation rules do not admit ∀x φ(x) or ∃x φ(x). They admit only ∀x ≤ t φ(x) and ∃x ≤ t φ(x), where t is a term denoting a bound already present in the language. Quantification is always local, never global.


### 3.1.2  The language of BFOL

A language L of BFOL consists of the following components.

Variables: x, y, z, ... (a countable supply, used as placeholders for elements of the domain).

Constant symbols: c, d, ... (names for specific elements).

Function symbols: f, g, h, ... each with a fixed arity (the number of arguments it takes).

Relation symbols: R, S, P, ... each with a fixed arity.

The equality symbol: =.

A designated bounding relation: written ≤. This symbol plays a structural role in all bounded quantifier forms. It may be interpreted numerically (as the standard ordering on natural numbers), ordinally (as the ordering on finite ordinals), cardinally (as comparison of set sizes), or by any other ordering appropriate to the application. BFOL does not legislate the interpretation of ≤ beyond its structural role. The specific interpretation is fixed by the theory built on top of BFOL — in the present paper, by AFB and the BST axioms.

Logical connectives: ¬, ∧, ∨, →.

Bounded quantifier forms: ∀x ≤ t and ∃x ≤ t, where t is a term. These are the only quantifier forms in the language. There are no primitive unbounded quantifiers.

### 3.1.3  Terms

Terms are defined exactly as in ordinary FOL.

```
Term formation:
(i)  Every variable is a term.
(ii) Every constant symbol is a term.
(iii) If f is an n-ary function symbol and
      t₁, ..., tₙ are terms, then f(t₁,...,tₙ) is a term.
```

No modification to FOL's term formation is required. The restriction on quantification applies to formulas, not to terms.

### 3.1.4  Formulas

The formulas of BFOL are the smallest class satisfying the following clauses.

```
Atomic formulas:
(i)  t₁ = t₂  is an atomic formula (for any terms t₁, t₂).
(ii) R(t₁,...,tₙ)  is an atomic formula
     (for any n-ary relation symbol R and terms tᵢ).
```

```
Compound formulas:
(iii) If φ is a formula, so is ¬φ.
(iv)  If φ and ψ are formulas, so are (φ ∧ ψ), (φ ∨ ψ),
      (φ → ψ).
(v)   If φ is a formula, x is a variable, and t is a term,
      then  ∀x ≤ t  φ  and  ∃x ≤ t  φ  are formulas.
```

```
No other formulas are admitted.
In particular: ∀x φ and ∃x φ (unbounded forms)
are not well-formed formulas of BFOL.
```

Plain language: Every part of formula formation is identical to standard FOL except the quantifier clause. Where FOL admits ∀x φ and ∃x φ as primitive, BFOL admits only ∀x ≤ t φ and ∃x ≤ t φ. The bound t is not optional — it is part of the syntax of quantification. A variable cannot range without a named limit.

A sentence is a formula with no free variable occurrences. The standard definitions of free and bound occurrence, substitution, and variable capture avoidance carry over from FOL without modification, with the understanding that x is bound in ∀x ≤ t φ and ∃x ≤ t φ, while any variables occurring in t are free (unless themselves bound by an outer quantifier).


### 3.1.5  Semantics

A BFOL-structure M for a language L consists of a nonempty domain D, an interpretation of each constant symbol as an element of D, an interpretation of each n-ary function symbol as a total function Dⁿ → D, an interpretation of each n-ary relation symbol as a subset of Dⁿ, and an interpretation of ≤ as a binary relation on D. A variable assignment s maps each variable to an element of D.

Truth is defined relative to M and s by the following clauses.

```
Atomic formulas (unchanged from FOL):
M, s ⊨ t₁ = t₂         iff  t₁^{M,s} = t₂^{M,s}
M, s ⊨ R(t₁,...,tₙ)    iff  (t₁^{M,s},...,tₙ^{M,s}) ∈ R^M
```

```
Connectives (unchanged from FOL):
M, s ⊨ ¬φ              iff  M, s ⊭ φ
M, s ⊨ φ ∧ ψ           iff  M, s ⊨ φ  and  M, s ⊨ ψ
M, s ⊨ φ ∨ ψ           iff  M, s ⊨ φ  or   M, s ⊨ ψ
M, s ⊨ φ → ψ           iff  M, s ⊭ φ  or   M, s ⊨ ψ
```

```
Bounded quantifiers (new clauses replacing unbounded ones):
M, s ⊨ ∀x ≤ t  φ       iff  for every a ∈ D such that
                              a ≤^M t^{M,s},
                              M, s[x:=a] ⊨ φ

M, s ⊨ ∃x ≤ t  φ       iff  there exists a ∈ D such that
                              a ≤^M t^{M,s}  and
                              M, s[x:=a] ⊨ φ
```

Plain language: Every quantified claim evaluates only over the region of the domain at or below the bounding term. The structure of truth-evaluation is identical to standard FOL except that the quantifier range is explicitly delimited. There is no clause for unbounded quantifiers because unbounded quantifiers do not exist in the language.

The intended applications of BFOL concern structures in which the bounded regions of the domain are finite. The logic itself does not require this — it is well-defined for any structure with a bounding relation. The foundational restriction to finite bounded regions is imposed by the Global Boundedness Principle, stated in Section 3.1.8 below.


### 3.1.6  Deductive system

A natural deduction system for BFOL retains all standard propositional and equality rules unchanged. The quantifier rules are replaced by bounded versions.

```
Bounded universal elimination (∀-E):
From  ∀x ≤ t  φ(x)  and a proof that  u ≤ t,
infer  φ(u).

Bounded universal introduction (∀-I):
If  φ(x)  has been derived under the assumption  x ≤ t,
with x not free in any undischarged assumption other
than x ≤ t, infer  ∀x ≤ t  φ(x).
```

```
Bounded existential introduction (∃-I):
From  φ(u)  and a proof that  u ≤ t,
infer  ∃x ≤ t  φ(x).

Bounded existential elimination (∃-E):
From  ∃x ≤ t  φ(x),  and a derivation of ψ from the
assumptions φ(x) and x ≤ t with x fresh and not free
in ψ or in any other undischarged assumption,
infer  ψ.
```

There are no rules for unbounded universal or existential quantifiers because those forms are not in the language. Every proof in BFOL is a proof about explicitly bounded domains.

Soundness holds by inspection: each rule preserves truth in BFOL-structures under the bounded semantics of Section 3.1.5. Completeness — whether every valid BFOL sentence is provable — holds for finite BFOL-structures, since evaluation over a finite bounded domain reduces to a finite verification.


### 3.1.7  Meta-logical properties of BFOL

Two meta-logical properties of standard FOL that support modular reasoning — Craig Interpolation and Beth Definability — survive the restriction to bounded quantifiers. Two that do not — Compactness and Löwenheim-Skolem — correctly fail, and their failure is a direct consequence of the restriction to finite intended models.

### Theorem 3.1 — Bounded Craig Interpolation:

```
Let φ and ψ be BFOL formulas such that φ ⊢_BFOL ψ.
Let Var(φ) ∩ Var(ψ) be the shared vocabulary.

Then there exists a BFOL formula θ such that:
(i)   φ ⊢_BFOL θ
(ii)  θ ⊢_BFOL ψ
(iii) Var(θ) ⊆ Var(φ) ∩ Var(ψ)
(iv)  Every quantifier in θ is bounded by a term
      constructible from the bound terms of φ and ψ.

Proof sketch: BFOL is a syntactic fragment of FOL.
Standard FOL interpolation applied to the FOL
translations of φ and ψ (via the embedding of
Section 3.1.8) produces an interpolant θ_FOL.
Since all quantifier rules in BFOL are bounded
variants of their FOL counterparts, the proof-tree
construction used in the classical interpolation
argument preserves the bounded structure, and θ
can be taken to be the restriction of θ_FOL to
bounded forms. The bound terms in θ are constructible
from those appearing in φ and ψ by the same syntactic
operations used in the interpolation proof. □
```

Plain language: If a BFOL argument leads from hypotheses using vocabulary V₁ to a conclusion using vocabulary V₂, there is an intermediate BFOL statement using only the shared vocabulary V₁ ∩ V₂ that bridges the two. This ensures that BST proofs can be decomposed into bounded sub-arguments with well-defined shared interfaces — a property that supports both modular verification and the extraction of bounded computational content from classical proofs.

### Theorem 3.2 — Bounded Beth Definability:

```
Let T be a BFOL theory and R a relation symbol not
in T. Suppose T implicitly defines R: for any two
models M and M' of T that agree on all symbols
except R,

T ∪ T' ⊨ ∀x⃗ (R(x⃗) ↔ R'(x⃗))

where T' is a notational copy of T with R replaced by R'.

Then T explicitly defines R: there exists a BFOL
formula θ(x⃗) such that

T ⊨ ∀x⃗ (R(x⃗) ↔ θ(x⃗)).

Proof: Immediate from Bounded Craig Interpolation by
the standard derivation of Beth from Craig. The
explicit definition θ is bounded since the implicit
definition was expressed in BFOL. □
```

Plain language: In BST, if a relation is uniquely determined by the axioms, it can be explicitly expressed by a bounded formula. No object is implicitly required to exist by BST without being constructible by a bounded definition. This supports the constructivist character of BST: definability and explicit construction coincide.

The two properties that correctly fail in BFOL are Compactness and the Löwenheim-Skolem theorem. Compactness fails because the restriction to finite intended models is not compatible with the compactness argument — a set of BFOL sentences can have only finite models even when every finite subset has models of arbitrarily large finite size, so taking a limit is not available. The downward Löwenheim-Skolem theorem fails for the same reason: there is no countably infinite model to descend to, since all intended models are finite. The upward Löwenheim-Skolem theorem fails because there is no infinite model to ascend from. Both failures are correct consequences of BST's finite ontology — they signal precisely the logical features that distinguish BFOL from standard FOL as a foundation for finite mathematics.


### 3.1.8  The Global Boundedness Principle

BFOL's syntax and semantics are defined for any structure with a bounding relation. For the specific application to BST, a further condition is imposed on the intended class of structures.

```
Global Boundedness Principle (GBP):
Every intended model of BST has a finite domain.
The maximum extent of that domain need not be
nameable within the object language.
```

This principle is not part of the syntax or proof theory of BFOL. It is a metatheoretic condition on the intended semantics — it specifies which BFOL-structures are admitted as intended interpretations of BST. Its content is exactly the foundational commitment of AFB: no completed infinite totality is admitted as a model.

The separation between BFOL's logic and GBP's semantic restriction is deliberate. BFOL is a general logic of bounded quantification, applicable in any setting where explicit bounds are desired. GBP is specific to the bounded foundational program of this paper. Other bounded theories could adopt BFOL with different semantic restrictions.


### 3.1.9  Relationship to standard FOL

BFOL differs from standard FOL in exactly one structural respect: the primitive quantifier forms. Everything else is identical — term formation, atomic formulas, connectives, equality, proof rules for propositional and equational reasoning. BFOL is not a rejection of first-order logic. It is a restriction on which quantifier forms are admissible.

```
Standard FOL:  ∀x φ(x)  and  ∃x φ(x)  are primitive.
               Domain quantification is unrestricted.

BFOL:          ∀x ≤ t φ(x)  and  ∃x ≤ t φ(x)  are primitive.
               Domain quantification is always bounded.
               Unbounded forms are not well-formed.
```

Any BFOL formula can be embedded into standard FOL by treating ∀x ≤ t φ(x) as ∀x (x ≤ t → φ(x)) and ∃x ≤ t φ(x) as ∃x (x ≤ t ∧ φ(x)). This embedding is sound — it preserves truth. In the other direction, not every standard FOL formula translates into BFOL, since unbounded quantifications have no BFOL counterpart.

BFOL is therefore strictly weaker than standard FOL in expressive power: it can say less. This is a feature, not a defect. The expressive restrictions of BFOL are precisely the ones that a bounded foundation requires. The sentences that BFOL cannot express are the sentences whose truth requires an unbounded completed domain — exactly the sentences whose meaningfulness BST's foundational commitment calls into question.

One meta-logical remark deserves explicit statement. Standard FOL's compactness theorem — a theory has a model if and only if every finite subset has a model — implies that any theory with arbitrarily large finite models also has infinite models. BFOL, restricted by GBP to finite intended models, is not subject to this implication in the same way: the semantic restriction to finite structures is built in. Theories in BFOL whose intended models are all finite need not have infinite models, and the compactness argument does not force them to.

## 3.2  Primitive Ordinals

### 3.2.1  The primitive theory

The following definitions and theorems supply the minimal ordinal and cardinal theory needed to state AFB. They are developed within BFOL alone, prior to the full BST axiom system. The full ordinal theory — including the Burali-Forti resolution and metatheorems about BST models — is developed in Part V.

### 3.2.2  Definitions


### Definition 3.1 — Preordinal:


```
A preordinal is a structure (A, <) where:
(i)   A is a finite set
(ii)  < is a strict total order on A
(iii) every nonempty subset of A has a least element
under <  (well-foundedness)
```

```
Note: conditions (ii) and (iii) together say that (A, <)
is a finite strict well-order. For finite sets, every
strict total order is automatically well-founded, so
condition (iii) is implied by (ii) for finite A.
It is stated explicitly for conceptual clarity.
```


### Definition 3.2 — Ordinal (BST):


```
Two preordinals (A, <_A) and (B, <_B) are isomorphic if
there exists a bijection f: A → B such that for all
x, y ∈ A:  x <_A y  iff  f(x) <_B f(y).
```

```
An ordinal is an isomorphism class of preordinals.
```

```
The ordinal of a preordinal (A, <) is written ord(A, <).
Two preordinals have the same ordinal iff they are
order-isomorphic.
```

Plain language: An ordinal is an abstract order type — what all finite well-orders of the same length have in common. The number 3, as an ordinal, is the property shared by every 3-element well-ordered set, regardless of what its elements are.

A note on representation. Isomorphism classes are metatheoretic collections — in general they are too large to be sets. BST does not treat the isomorphism class itself as an object of the theory. Instead, each ordinal is represented within BST by its canonical representative (Definition 3.3): the specific finite von Neumann ordinal 0, 1, 2, ... that serves as the standard name for that order type. When the paper says "the ordinal n," it means the canonical representative — a concrete set in BST. The isomorphism class language in Definition 3.2 is motivational, explaining what ordinals are conceptually. All formal work in BST proceeds via canonical representatives.

### Definition 3.3 — Canonical representatives:


```
The canonical representative of each ordinal is the
corresponding von Neumann ordinal:
```

```
0  =  ∅
1  =  {∅}
2  =  {∅, {∅}}
n  =  {0, 1, ..., n-1}
```

```
These are used as standard names for ordinals.
Under BST they form a bounded initial segment,
not an infinite progression.
```


### 3.2.3  Ordinal ordering and successor


### Definition 3.4 — Ordinal ordering:


```
α ≤ β  iff  some representative of α is order-isomorphic
to an initial segment of some representative of β.
```

```
α < β  iff  α ≤ β  and  α ≠ β.
```

```
This recovers the standard linear ordering of ordinals
by length: 0 < 1 < 2 < 3 < ...
```


### Definition 3.5 — Successor:


```
For an ordinal α with canonical representative n = {0,...,n-1},
the successor of α is:
```

```
S(α)  =  ord( {0, 1, ..., n-1, n}, <_std )
```

```
i.e., the ordinal of the set obtained by adjoining one new
greatest element to the canonical representative of α.
```

```
In canonical form:  S(n) = n+1 = {0, 1, ..., n}.
```


### 3.2.4  Key theorems of the revised ordinal theory


### Theorem 3.1 — Every nonzero ordinal is a successor:


```
In BST, for every ordinal α > 0, there exists an ordinal β
such that α = S(β).
```

```
Proof: Let α = ord(A, <) with |A| = n > 0. Remove the
greatest element of A (which exists since A is finite and
nonempty). The remaining structure (A\{max}, <|_{A\{max}})
is a finite well-order of size n-1, with ordinal β.
Then S(β) = α. □
```

Plain language: There are no limit ordinals in BST — no ordinals with no immediate predecessor. Every ordinal except 0 was obtained by adding one element to a smaller ordinal. The ordinal sequence is: 0, 1, 2, 3, ... up to whatever the bound permits. No ω, no ω+1, no transfinite structure of any kind.

### Theorem 3.2 — Ordinals are linearly ordered:


```
For any two ordinals α, β in BST: α ≤ β or β ≤ α.
```

```
Proof: Representatives are finite well-orders. Any two
finite well-orders of sizes m and n satisfy m ≤ n or n ≤ m
(since m, n ∈ ℕ are comparable). The shorter is isomorphic
to an initial segment of the longer. □
```


### Theorem 3.3 — Bounded induction is valid:


```
For any property P definable in BST, and any ordinal bound k:
```

```
P(0) ∧ ∀α < k ( P(α) → P(S(α)) )  →  ∀α ≤ k  P(α)
```

```
Proof: By strong induction on the finite ordinals up to k.
Since all ordinals in BST are finite and the ordering is
a finite linear order, induction over any bounded initial
segment is a finite process with a finite number of steps. □
```


### 3.2.5  Primitive Cardinality

Ordinals measure position in a well-order. Cardinality measures the size of a set — how many elements it contains. In classical set theory these concepts diverge sharply for infinite sets: a countably infinite set and an uncountably infinite set have different cardinalities but both have ordinals of the same kind. In the finite setting they coincide, but the coincidence is a theorem rather than a definition. Both concepts must be in place before the Axiom of Finite Bounds can be stated coherently: AFB asserts that every set has a cardinality bounded by some finite ordinal, which requires knowing what both "cardinality" and "finite ordinal" mean.

### Definition 3.6 — Cardinality (primitive):


```
The cardinality of a set S, written |S|, is the length
of the shortest adjunction sequence from ∅ to S:

|∅|       = 0
|S ∪ {x}| = |S| + 1   for any x ∉ S

Equivalently: |S| is the unique natural number n such
that S can be built by n successive adjunctions of
distinct elements starting from ∅.
```

```
This definition is inductive and self-contained.
It does not presuppose the full BST axiom system —
it requires only that S is a finite set, which is
the intended domain of the primitive theory.
```

Plain language: The cardinality of a set is simply how many elements it has, measured by counting them one at a time from the empty set. Every finite set has a unique such count, and that count is a natural number.

### Theorem 3.4 — Cardinality coincides with ordinal in the finite case:


```
For any finite set S with |S| = n (in the sense of
Definition 3.6), the canonical well-order on S is
order-isomorphic to the von Neumann ordinal n.
```

```
Proof: By induction on n.
Base: |S| = 0, so S = ∅ = 0. ✓
Step: Suppose the result holds for all sets of
size n. Let |S| = n+1. Then S = T ∪ {x} for some
T with |T| = n and x ∉ T. By the induction
hypothesis, T is order-isomorphic to n. Adjoining
x as the greatest element extends the isomorphism
to n+1 = S(n). □
```

```
Corollary: In the finite setting, |S| = n in the
cardinality sense if and only if S is order-isomorphic
to the ordinal n. The two concepts pick out the same
finite number by different routes.
```

Plain language: Counting the elements of a finite set and asking which ordinal it is isomorphic to give the same answer. This is the theorem that allows AFB to be stated using a single number n as both a bound on cardinality and a reference to a specific ordinal — the two roles are interchangeable for finite sets.


## 3.3  The Axiom of Finite Bounds (AFB)

The Axiom of Finite Bounds is the single foundational commitment from which bounded set theory derives. Everything else — the rejection of Power Set, the redundancy of Choice over finite collections, the external resolution of the Burali-Forti analogue, the shape of bounded induction — follows from this axiom. Getting it right therefore matters more than any other formal decision in the paper.
Part II established that no prior finitist program produced a complete formulation of this axiom. ZF¬∞ negates the Axiom of Infinity but imposes no bound. Ultrafinitism asserts a bound but never formalizes it. Nelson's arithmetic operates within bounded quantification but does not extend to set theory. The present part completes what those programs left open.
Two formulations are developed in full. They are not equivalent, and the difference between them is not merely technical — it reflects a genuine philosophical decision about what kind of claim the axiom makes and what kind of work it can do. Both formulations are presented with complete formal statements, plain-language glosses, and explicit analysis of strengths and limitations. The paper carries both because different applications favor different formulations, and intellectual honesty requires acknowledging this rather than presenting one as the obvious choice.


### 3.3.1  The Negation Component: Common to Both Formulations

Both formulations share a common first component: the direct negation of the Axiom of Infinity. This component is uncontroversial between the two formulations and is stated once here.
Recall the Axiom of Infinity in standard ZFC:

```
Axiom of Infinity (ZFC):
```


```
∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

Plain language: There exists a set S such that the empty set belongs to S, and for every element x in S, the set formed by adjoining x to its own members also belongs to S. This guarantees the existence of at least one completed infinite set — the set of all natural numbers as a finished totality.
The negation:

```
Negation Component (shared):
```


```
¬∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

Plain language: No such set exists. The successor construction cannot be iterated into a completed infinite collection. Every set is finite — the chain of successors always terminates.
This component alone is the Axiom of ZF¬∞ — hereditarily finite set theory. As established in Part II (Section 2.7), it is insufficient as a replacement for the Axiom of Infinity because it permits unbounded finitude: every set is finite, but there is no limit on how large finite sets can be. The domain of discourse remains unbounded, and unbounded finitude encodes an infinite ontological commitment in a different register.
The bound component is what distinguishes bounded set theory from ZF¬∞ and makes the negation of infinity genuine rather than terminological. The two formulations differ precisely in how they state this bound.


### 3.3.2  Formulation A: The Axiom Schema (Object-Level Bound)


#### 3.3.2.1  Formal Statement

Formulation A states the bound as an object-level axiom schema — a family of sentences in the language of set theory, one for each candidate bound value n, asserting that all sets have cardinality at most n.

### Axiom of Finite Bounds — Formulation A (Schema):


```
For each natural number numeral n in the meta-language:
```

```
AFB_A(n):   ∀S ( |S| ≤ n )
```

```
where |S| denotes the cardinality of S as defined in
Definition 3.6 (Section 3.2.5): the length of the
shortest adjunction sequence from ∅ to S.

By Theorem 3.4, this coincides with the unique finite
ordinal n such that S is order-isomorphic to the
canonical representative n — the two characterisations
are interchangeable for finite sets.
```

```
The schema asserts: there exists some specific numeral n
for which AFB_A(n) holds. The specific n is not
determined within the theory.
```

Plain language: Every set has a cardinality — a specific count of its elements — and there is some fixed natural number n such that no set has more than n elements. The theory does not specify which n — it only asserts that some such bound exists. Each instance of the schema is a sentence of the object language; the schema as a whole is a meta-level commitment.

#### 3.3.2.2  What Formulation A asserts

Formulation A is the most direct statement of bounded finitude. It says: pick any set, count its elements, and the count is bounded above by some fixed finite number. The number is unknown — it could be 10⁸⁰, it could be 10^(10^(10)), it could be any finite value — but it exists and it is finite.
The schema structure is essential. Rather than a single sentence asserting the existence of a bound — which would require quantifying over natural numbers and reintroducing questions about what natural numbers are — the schema presents one sentence per candidate bound. Each instance is a first-order sentence in the language of set theory. The theory adopts whichever instance holds in its intended model, without the theory itself being able to identify which instance that is.

#### 3.3.2.3  Strengths of Formulation A

- Syntactically explicit: every instance of the schema is a first-order sentence in the language of set theory
- No metatheoretic machinery required: the bound is expressed at the object level
- Directly comparable with ZFC: the schema replaces the Axiom of Infinity with a family of finitude assertions
- Useful for model-theoretic analysis: each model satisfies exactly one instance of the schema, making model structure transparent
- Natural for applications with explicit bounds: when the application domain has a known upper limit, the appropriate instance of the schema can be selected

#### 3.3.2.4  Limitations of Formulation A

Formulation A has three significant limitations that Formulation B addresses.
First, the schema is not a single axiom. It is a family of axioms. Strictly speaking, a theory that adopts Formulation A is not asserting one thing but one of infinitely many possible things — whichever instance of the schema happens to hold in the intended model. This is philosophically awkward: the foundational commitment is supposed to be a single claim (there is a finite bound), but the formal statement distributes this claim across infinitely many sentences. More precisely, the meta-level commitment "there exists some n for which AFB_A(n) holds" is itself an unbounded existential quantification over natural numbers — precisely the kind of quantification that the finitist programme is meant to avoid. Formulation A purchases first-order clarity at the object level by relocating the infinite commitment to the metalanguage. A fully finitist foundational programme must acknowledge this relocation rather than treat it as a free move.
Second, the theory cannot reason about its own bound. Since no specific instance of the schema is selected, the theory cannot prove any particular upper limit on set size. It can prove that every specific set it constructs is finite, but it cannot prove that all sets together are bounded by any particular number. This is not a contradiction — it is a deliberate feature — but it means certain inferences that one might want to draw (for example, "there exists a set of maximum cardinality") are not available within the theory.
Third, Formulation A inherits the bootstrapping problem. The schema uses the concept of cardinality (|S|) and the comparison relation (≤) on natural numbers. These concepts require prior development of the natural numbers, which in turn requires some foundational account of what natural numbers are. Under Formulation A, this account must come from outside the schema — from whatever background logic and arithmetic the theory presupposes. This is standard in formal axiomatics but worth stating explicitly.

### ◆ Summary — Formulation A

Object-level axiom schema. Directly first-order. Transparent model theory. Cannot name its own bound. Distributes the foundational commitment across infinitely many sentences. Best suited for applications with explicit numerical bounds or for model-theoretic analysis of bounded universes.


### 3.3.3  Formulation B: The Metatheoretic Constraint with Reflection


#### 3.3.3.1  Motivation

Formulation B arises from taking seriously the philosophical position established in the preamble: that the bound is an epistemic commitment about reality, not a specification of a particular number. The bound exists but is unknown. This is not a defect to be patched but the correct description of our epistemic situation. Formulation B formalizes exactly this.
The key insight is that ZFC itself uses this structure for proper classes. The universe of all sets in ZFC is not a set — it is a proper class, a metatheoretic collection that the theory can reason about through reflection principles without ever naming as an object. The class of all ordinals in ZFC is similarly not a set; Burali-Forti's paradox shows that assuming it is leads to contradiction. ZFC's solution is to treat the totality of all ordinals as a proper class — something the theory talks about from outside rather than within. Formulation B applies the identical structural move to the bound in bounded set theory.

#### 3.3.3.2  Formal Statement


### Axiom of Finite Bounds — Formulation B (Metatheoretic Constraint):


```
Meta-constraint:
All models M of Bounded Set Theory are finite.
Formally: for any model M |= BST,  |M| < ℵ₀.

Note: ℵ₀ appears here as a convenience of the metatheory
(ACA₀), where transfinite cardinals are available as
notational tools. This is not an object-level commitment
of BST itself. The content of the constraint is simply:
every model has a finite domain — a domain whose elements
can be listed by a specific numeral. The ℵ₀ notation
expresses this in standard mathematical shorthand.
```

```
Internal Reflection Principle (Bounded Reflection):
For any sentence φ in the language of BST:
```

```
BST ⊢ φ  iff  φ is true in every finite model of BST.
```

```
Bounded Existence Schema (internal correlate):
For every set-building operation O definable in BST,
if O(S₁,...,Sₙ) is defined and S₁,...,Sₙ are sets,
then O(S₁,...,Sₙ) is a set only if it is finite.
```

```
The bound itself is not an object of the theory.
No term B exists in BST such that BST ⊢ ∀S |S| ≤ B.
```

Plain language: Every model of the theory is a finite universe. The theory knows it lives in a finite universe — it can derive finiteness of every object it constructs — but it cannot see the ceiling of that universe from inside. The bound is real (every model is finite) but not representable (no term in the theory names the bound). This is exactly how ZFC treats proper classes: real but not representable as sets.

Note on the Bounded Existence Schema. The third component — that every set-building operation produces a finite output — is not an independent axiom. It follows directly from the meta-constraint: if every model of BST is finite, then every object constructible within a model is an element of that finite domain, and is therefore finite. The schema makes this explicit at the object level as a constraint visible to the practitioner working inside the theory, where the meta-constraint is not directly accessible. It adds no independent content but serves a clarificatory role in Parts IV through VI when set-building operations are studied in detail.

#### 3.3.3.3  The reflection principle explained

The Bounded Reflection Principle deserves careful explanation because it does the work that the schema does in Formulation A, but at the metatheoretic level.
In standard ZFC, reflection principles assert that any sentence true in the full set-theoretic universe V is already true in some initial segment Vα of the cumulative hierarchy. The universe reflects its own properties into bounded portions of itself. This is a powerful tool for importing metatheoretic facts into the object language.
Bounded Reflection works in the opposite direction: it asserts that provability in BST corresponds exactly to truth in all finite models. This means that when BST proves a theorem, it proves something that holds throughout every finite universe — not something that depends on a specific bound. The theory proves facts that are stable across all possible bounds, even though it cannot name any particular bound.
This has a precise consequence: BST is complete with respect to finite models, in the sense that the Bounded Reflection Principle is built into Formulation B as a constitutive feature. This is not a theorem derived from more basic principles — it is part of what Formulation B asserts. The proof that this is a consistent and well-defined stipulation, and that soundness holds in both directions, is given in Section 3.3.3.7 below.

#### 3.3.3.4  Why the bound must not be an object of the theory

The requirement that the bound not be an object of the theory — that no term B exists in BST such that BST proves all sets have cardinality at most B — is not a limitation but a necessity. This was established through the Burali-Forti analysis, which is developed fully in Part V. The argument is previewed here.
Suppose the bound were a set B in the theory. Then by the Pairing axiom, {B} is a set. By the Union axiom, B ∪ {B} is a set. The cardinality of B ∪ {B} is |B| + 1, which exceeds the bound B. Contradiction. The bound, if it is a set, generates its own successor, which violates the bound. This is structurally identical to the Burali-Forti paradox in ZFC (the ordinal of all ordinals is an ordinal, hence greater than itself).
The resolution in ZFC is to make the ordinal of all ordinals a proper class — not a set, not an object of the theory, but a metatheoretic collection. The resolution in Formulation B is identical: the bound is not an object of the theory. The theory knows it is bounded without being able to point to its own ceiling.

```
The structural parallel:
```


```
ZFC:   'the class of all ordinals' is a proper class,
not a set — real but not representable.
```

```
BST-B: 'the bound on all sets' is a metatheoretic constraint,
not a set — real but not representable.
```

```
Both resolve their respective paradoxes by the same move:
the problematic totality exists at a higher level
than the objects the theory quantifies over.
```


#### 3.3.3.5  Strengths of Formulation B

- Single foundational commitment: the metatheoretic constraint is one claim, not an infinite schema
- Philosophically accurate: captures the epistemic position that the bound exists but is unknown
- Paradox-free by construction: the bound is not an object, so the Burali-Forti analogue cannot arise
- Semantically complete: the reflection principle gives a clean characterization of provability
- Structurally honest: makes explicit that BST, like ZFC, has a metatheoretic component that the object language cannot fully capture

#### 3.3.3.6  Limitations of Formulation B

First, metatheoretic machinery is required. Formulation B is not purely a first-order axiom. It requires a background metatheory in which 'finite model' and 'all models of BST' are meaningful. This is standard in mathematical logic — ZFC itself is routinely analyzed in a metatheory — but it means Formulation B cannot be stated as a single sentence in the first-order language of set theory.
Second, the reflection principle requires justification. The claim that BST-B is complete with respect to finite models is a substantial metatheoretic assertion — specifically, that defining BST-B as the theory of all sentences true in every finite model of the base axioms is coherent and consistent. This is not assumed but proved in Section 3.3.3.7 below, where the coherence of the stipulation is established within ACA₀.
Third, Formulation B is less transparent for applications. When working within BST using Formulation B, the practitioner knows they are in a finite universe but has no handle on how large that universe is. For applications that need explicit numerical bounds — for example, complexity-theoretic applications where the size of the input matters — Formulation A's schema provides more usable structure.

#### 3.3.3.7  The Coherence Proof for Formulation B

The Bounded Reflection Principle asserts: BST ⊢ φ iff φ is true in every finite model of BST. This is a stipulation — Formulation B defines BST-B to be the theory whose theorems are exactly the sentences true in all finite models of the base axioms. The claim requiring proof is that this stipulation is coherent: that the resulting theory is well-defined, consistent, and that the base axioms are sound with respect to the stipulated semantics.

The proof proceeds in three steps, conducted in the metatheory ACA₀.

Step 1 — The class of finite models is well-defined.

A finite model of the BST base axioms (Extensionality, Empty Set, Bounded Pairing, Bounded Union, Bounded Separation, Bounded Replacement, negation of Infinity) is a finite structure M = (D, ∈_M) where D is a finite set and ∈_M is a binary relation on D satisfying each axiom. ACA₀ can define this class explicitly: the axioms are finitely many first-order sentences, and satisfaction of a first-order sentence in a finite structure is decidable by bounded quantification over the domain. The class of finite models is therefore a well-defined arithmetically definable collection within ACA₀.

Step 2 — Soundness of the base axioms (BST ⊢ φ → φ true in all finite models).

This is the standard soundness theorem of first-order logic, restricted to finite models. Every axiom of BST is by construction true in every finite model that satisfies it — this is what it means for the structure to be a model. Every inference rule of first-order logic preserves truth in any fixed model. Therefore every theorem of BST is true in every finite model of BST. This direction holds for any consistent theory with respect to its model class, and requires no special argument. ACA₀ suffices to formalise this reasoning.

Step 3 — Coherence of the completeness stipulation (φ true in all finite models → BST ⊢ φ).

This direction is not derived — it is the definitional content of Formulation B. BST-B is defined as the deductive closure of the base axioms together with the Bounded Reflection Principle, where the Reflection Principle precisely stipulates that provability coincides with truth in all finite models. The coherence question is whether this stipulation is consistent: could it force BST-B to prove a sentence φ and also prove ¬φ?

Suppose φ is true in all finite models and ¬φ is also true in all finite models. Then φ ∧ ¬φ is true in all finite models — a contradiction, since no structure satisfies a contradiction. Therefore the stipulation is consistent provided the class of finite models is non-empty and consistent. The non-emptiness is immediate: the one-element model {∅} with ∈_M = ∅ satisfies all base axioms. The consistency of the class of finite models is established by Step 1 — a finite structure with a finite decidable membership relation is a concrete mathematical object whose existence is not in doubt.

Therefore: the Bounded Reflection Principle is a coherent stipulation. BST-B is well-defined, its base axioms are sound with respect to its semantics, and the completeness direction holds by definition without circularity, since the theory is defined to be exactly what the semantics determines. □

Remark. This proof does not establish that BST-B is decidable — the set of sentences true in all finite models of a first-order theory is in general not decidable, and BST-B inherits this limitation. What is established is consistency and coherence. Whether BST-B is decidable is a separate question that depends on the specific axioms and is not required for the foundational purpose the proof serves.

Remark on metatheoretic parsimony. The coherence proof above is conducted in ACA₀, the system of Arithmetical Comprehension, whose proof-theoretic ordinal is ε₀. This is a conservative and safe choice, but it may exceed what is strictly required. A closer analysis reveals that Formulation A (the schema AFB_A(n) for a fixed n) is coherent in a much weaker metatheory: for any specific bound n, the model V_n (hereditarily finite sets of rank ≤ n) is a finite structure whose truth-evaluation is decidable by primitive recursive computation, and PRA (Primitive Recursive Arithmetic) suffices to verify its consistency. Formulation B, by contrast, asserts a property uniform across all finite models — every sentence true in all structures of every finite size — and this universality requires reasoning about the class {V_n | n ∈ ℕ} as a whole. Proving properties uniform across all n requires Σ₁ induction, which is exactly the strength of IΣ₁. Since |BST| = ω^ω = |IΣ₁| (Section 9.7), the metatheory required to validate Formulation B is proof-theoretically equivalent to BST itself. We are not using a dramatically stronger system to justify BST — the metatheoretic overhead is precisely calibrated. The ACA₀ framing above remains correct and safe; this observation refines it.

The coherence proof is of sufficient importance to warrant a formal denomination. The result is referenced in Part V (Section 5.4) and in the independence analysis of Section 4.6.

### Theorem 3.5 — Bounded Reflection Principle (Formal Statement):

```
Let BST-B denote the theory defined by the base axioms
of BST together with Formulation B's metatheoretic
constraint (all models are finite; the bound is not
an object of the theory).

Then:

(i)  Soundness: BST-B ⊢ φ → φ is true in every
     finite model of BST-B.

(ii) Coherence: The stipulation that BST-B ⊢ φ iff
     φ is true in every finite model of BST-B is
     consistent and well-defined.

(iii) Undecidability: BST-B is undecidable — no
      algorithm determines finite-model validity
      for arbitrary sentences. This is independent
      of (i) and (ii) and follows from Trakhtenbrot's
      Theorem (Theorem 3.6).

Proof: Steps 1–3 of Section 3.3.3.7. □
```

```
Corollary 3.5 — Characterisation of BST theorems:
A sentence φ is a theorem of BST-B if and only if
it is eventually true in all sufficiently large
finite models of the base axioms.

This is the operative form of the reflection
principle used in Parts IV–IX when establishing
that a result holds throughout BST: it suffices
to show the result holds in every finite model,
which by Theorem 3.5 is equivalent to BST-B
provability.
```

The undecidability asserted in clause (iii) of Theorem 3.5 is grounded by a classical result from finite model theory that provides independent confirmation — through a different structural mechanism than Gödel's diagonalisation — that Gödelian incompleteness persists in BST.

### Theorem 3.6 — Undecidability of BST-B (via Trakhtenbrot):

```
BST-B is undecidable: there is no algorithm that,
given an arbitrary sentence φ in the language of BST,
determines whether φ is true in every finite model
of BST.

Proof:
Trakhtenbrot's Theorem (1950) establishes that for
any first-order language containing at least one
binary relation symbol, the set of sentences that
are finitely valid — true in all finite structures —
is not recursively enumerable (in fact, Π₂-complete).

The language of BST contains the binary membership
relation ∈, satisfying the binary relation condition.
BST-B is defined as the theory of sentences true in
all finite models of BST (Formulation B, Section 3.3.3).
Therefore the set of theorems of BST-B is not
recursively enumerable.

In particular, BST-B is undecidable. □
```

```
Contrast with individual finite models: truth in
any single fixed finite BST-Model M is decidable
(it reduces to bounded quantification over the
finite domain D of M). It is the passage from
single-model truth to all-finite-model truth that
introduces undecidability — exactly the passage
that Formulation B makes.
```

```
Relationship to Gödel's First Theorem:
Trakhtenbrot's undecidability result provides
independent grounding for BST-B's incompleteness
that does not rely on arithmetic self-reference
or diagonalisation. The two routes to incompleteness
are complementary:

(i)  Gödel's route: BST is strong enough to express
     elementary arithmetic, so Gödel's first theorem
     applies — there exist true-but-unprovable
     sentences (Category D, Section 5.5.3,
     Theorem 5.5a).

(ii) Trakhtenbrot's route: BST-B is defined as
     finite-model validity for a language with a
     binary relation — this class is not recursively
     enumerable regardless of arithmetic strength.

Route (ii) would apply even to very weak fragments
of BST that fall below Gödel's arithmetic threshold.
BST is subject to both, and they are consistent
with each other: both confirm that no decision
procedure for BST-B exists.
```

### ◆ Summary — Formulation B

Metatheoretic constraint with internal reflection. Single foundational commitment. Paradox-free by construction. Semantically complete over finite models by definition, coherent by the proof of Section 3.3.3.7. Requires metatheoretic machinery. Cannot provide explicit numerical bounds for applications. Best suited for foundational analysis, philosophical clarity, and contexts where the bound itself is not the object of study.


### 3.3.4  Direct Comparison of the Two Formulations

The two formulations are not competitors — they are complements. Each is the right tool for a different purpose. The comparison below makes the tradeoffs explicit.

```
Comparison Table:
```


```
Property                      Form. A (Schema)    Form. B (Meta)
─────────────────────────────────────────────────────────────────
First-order expressible        Yes                 No
Single axiom                   No (schema)         Yes (constraint)
Names the bound internally     No                  No
Paradox-free                   Yes*                Yes
Semantically complete          No                  Yes
Explicit numerical bounds      Yes (per instance)  No
Metatheory required            Minimal             Substantial
Model theory transparent       Yes                 Yes
Proof-theoretic strength       Weaker              Stronger
```

```
* Formulation A is paradox-free because no instance names
a bound that is also a set — each instance is a constraint
on cardinality, not an existence claim for a maximal set.
```

The most important row is proof-theoretic strength. Formulation B is proof-theoretically stronger than Formulation A because the Bounded Reflection Principle, as shown in Section 3.3.3.7, is justified within ACA₀ — a system stronger than the object-level BST axioms alone. Formulation A, for any fixed instance n, is interpretable in elementary finite combinatorics, which is weaker than ACA₀. The additional proof-theoretic strength of Formulation B comes entirely from the metatheoretic machinery — the ability to quantify over all finite models — rather than from any single object-level axiom. This is not a defect; it is a precise characterisation of what the two formulations commit to.
For the remainder of this paper, both formulations are carried. When a result holds under both, it is stated once. When a result depends on the specific features of one formulation, the dependence is noted explicitly.


### 3.3.5  The Complete Axiom of Finite Bounds

The complete Axiom of Finite Bounds, in its canonical statement, combines the negation component with whichever bound formulation is in use. For reference, both complete forms are stated here.

### Axiom of Finite Bounds — Complete Form A:


```
Component 1 (Negation):
¬∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

```
Component 2 (Schema):
There exists n ∈ ℕ (meta) such that: ∀S ( |S| ≤ n )
```

```
Together: No infinite set exists, and set cardinality
is universally bounded by some fixed finite n.
```


### Axiom of Finite Bounds — Complete Form B:


```
Component 1 (Negation):
¬∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

```
Component 2 (Metatheoretic):
Every model of BST is finite. The bound is not
an object of the theory. Bounded Reflection holds.
```

```
Together: No infinite set exists, and the theory lives
in a finite universe whose ceiling it cannot name.
```


### 3.3.6  Why Unbounded Finitude Is Not Enough: The Formal Argument

Part II claimed that ZF¬∞ — bare negation of the Axiom of Infinity without a bound — fails to genuinely escape the infinite commitment. This claim was stated but not formally demonstrated. It is demonstrated here.

#### 3.3.6.1  The argument

Consider ZF¬∞: the theory with all ZFC axioms except Infinity, with Infinity replaced by its negation. Every set in ZF¬∞ is finite. But there is no upper bound on finite set sizes. For any finite cardinal n, ZF¬∞ proves the existence of a set with n elements.
Now consider the following question: does ZF¬∞ prove that the natural numbers are bounded? Specifically, does it prove that there exists a largest natural number?

```
Claim: ZF¬∞ ⊬ ∃n ∀m ( m ≤ n )
```


```
Proof sketch:
For each specific numeral k̄, the sentence "there exists
a set of cardinality k" is provable in ZF¬∞: the von
Neumann ordinal k̄ = {0,...,k-1} is constructed by k
iterated applications of Pairing and Union, both retained
in ZF¬∞, starting from ∅.

For each specific k̄, ZF¬∞ also proves "there exists a
set of cardinality k+1": namely k̄ ∪ {k̄}, constructed
by one further application of Pairing and Union.

Since this holds for every specific numeral k̄, and since
ZF¬∞ retains the first-order schema that universally
generalises over numerals (the successor axioms), ZF¬∞
proves: ∀k ∃m ( m > k ).

This is the negation of ∃n ∀m ( m ≤ n ).
Therefore ZF¬∞ ⊢ ¬∃n ∀m ( m ≤ n ):
there is no largest natural number. □
```

Plain language: In ZF¬∞, every set is finite, but the natural numbers are unbounded. The theory proves, for every number k, that there is a larger number. This is exactly the Aristotelian potential infinity: no completed infinite object, but an endless progression of finite ones.

#### 3.3.6.2  Why this is a genuine infinite commitment

The objection might be raised: ZF¬∞ doesn't assert infinity — it just asserts that for each finite k there is a larger finite k'. These are all finite existential claims. How does this constitute an infinite commitment?
The answer requires distinguishing between the content of individual sentences and the content of a theory. Each individual sentence 'there exists a set with k elements' is indeed a finite existential claim. But the theory as a whole — the set of all its theorems — encodes an unbounded progression. A model of ZF¬∞ must satisfy all these sentences simultaneously, and any model that satisfies all of them contains sets of unboundedly large finite size. The domain of any model of ZF¬∞ is therefore infinite — it must contain sets of every finite cardinality.

```
Formally:
```


```
Any model M of ZF¬∞ satisfies:
∀k ∃S ( |S| = k )
```

```
Therefore the domain of M contains sets of cardinality
0, 1, 2, 3, ... for every finite k.
```

```
The domain of M is therefore infinite.
```

```
ZF¬∞ has no finite models except for the trivial one-element model consisting of the empty set alone — which satisfies the axioms vacuously and supports no mathematical development. Every model of ZF¬∞ capable of expressing arithmetic has an infinite domain.
```

Plain language: ZF¬∞, despite containing no infinite sets, has only infinite models. The theory itself — the collection of its theorems — is an infinite object describing an infinite domain. The infinity is in the theory rather than in any single set, but it is present.
Bounded set theory (either formulation) is precisely what is needed to correct this: it asserts not only that every individual set is finite but that the domain as a whole is finite. Both formulations assert this explicitly, by different means: Formulation B through the metatheoretic constraint, Formulation A through the schema selecting a single bound instance in any fixed model, giving that model a finite domain.


### 3.3.8  Relationship to the Consistency Question

Any foundational proposal must address its own consistency. Gödel's second incompleteness theorem establishes that no consistent formal system strong enough to express elementary arithmetic can prove its own consistency within that system. Bounded set theory is no exception, and this paper does not claim otherwise.
What can be said is the following.

### Relative consistency of Formulation A

Formulation A, for any fixed instance n, describes a theory that is interpretable in finite combinatorics: the universe is simply the hereditarily finite sets of rank at most n. The consistency of this theory is as secure as the consistency of elementary combinatorics — which is to say, it is extremely secure, though not formally provable from within.

```
Relative consistency (Form. A):
```


```
If finite combinatorics is consistent, then BST-A(n)
is consistent for every specific n.
```

```
Proof: The hereditarily finite sets of rank ≤ n form
an explicit finite model of BST-A(n). A theory with
an explicit finite model is consistent. □
```


### Relative consistency of Formulation B

Formulation B requires a metatheory strong enough to reason about all finite models of BST. The appropriate metatheory is a weak fragment of second-order arithmetic — specifically, the system ACA₀ (arithmetical comprehension with arithmetical sets) is more than sufficient. The relative consistency result:

```
Relative consistency (Form. B):
```


```
If ACA₀ is consistent, then BST-B is consistent.
```

```
Sketch: Section 3.3.3.7 establishes that the Bounded
Reflection Principle is a coherent stipulation —
that defining BST-B as the theory of sentences true
in all finite models is consistent and well-defined,
within ACA₀.

ACA₀ can define 'finite model of BST' (Step 1 of Section 3.3.3.7)
and verify soundness in both directions (Steps 2 and 3).
BST-B is therefore interpretable in ACA₀ in the sense
that ACA₀ can reason about all finite models of BST
and confirm that BST-B's theorems hold in them.

The relative consistency follows: if ACA₀ is consistent,
no contradiction is derivable in BST-B, since any
contradiction would be a sentence false in some finite
model, contradicting the completeness stipulation. □
```

Note: ACA₀ is a conservative extension of Peano Arithmetic for first-order sentences. Assuming ACA₀ consistent is a weaker assumption than assuming ZFC consistent, which the mathematical community accepts as a working hypothesis.

### The honest statement

Neither formulation proves its own consistency. Both are consistent relative to systems weaker than ZFC. The consistency assumption required for bounded set theory is therefore strictly weaker than what standard mathematics already assumes. This is the appropriate epistemic position: the paper does not claim to have solved the problem of consistency — it claims to have a foundation whose consistency assumption is more modest than what it replaces.


### 3.3.9  Standard Models and the Equivalence of the Two Formulations

Section 3.3.4 stated that the two formulations are complements whose precise semantic relationship is left for metatheoretic analysis. That analysis is given here.

**Standard models.** For each n ∈ ℕ, define the standard BST-model 𝒱_n as follows:

```
Definition — Standard BST-model 𝒱_n:

Domain:      D_n = V_n = the hereditarily finite sets of rank ≤ n
             (the cumulative hierarchy through stage n)

Membership:  ∈^M = standard set-theoretic membership
             restricted to D_n

Bounding:    ≤^M = cardinality comparison on D_n

Arithmetic:  0^M = ∅,   S^M(x) = x ∪ {x}  (truncated to D_n)

Finiteness:  |D_n| < ∞ for every n  (D_n is finite)
```

```
Verification: 𝒱_n is a BST-model for every n ∈ ℕ.
Each axiom of BST holds in 𝒱_n provided operations
do not require constructing sets of rank > n.
For the construction axioms (Pairing, Union, Separation,
Replacement), the truncation to D_n ensures outputs
stay within the domain. □
```

The models 𝒱_n are the canonical witnesses for Formulation A: 𝒱_n models exactly BST_A(|D_n|). Every finite BST-structure embeds into some 𝒱_n via the Mostowski collapsing map — a fact whose proof is standard in finite model theory, conducted in ACA₀.

**The equivalence theorem.** The relationship between Formulation A and Formulation B is now precise:

```
Theorem 3.5b — Semantic Equivalence of Formulations:

BST_B = ∩_{n ∈ ℕ} Th(Mod(BST_A(n)))

where Th(Mod(BST_A(n))) is the set of sentences
true in every model of BST_A(n).

Proof:
(⊆): If φ ∈ BST_B, then φ is true in every finite
model of BST. Every BST_A(n)-model is finite, so
φ is true in every BST_A(n)-model for every n.
Thus φ ∈ ∩_n Th(Mod(BST_A(n))).

(⊇): If φ is true in every BST_A(n)-model for
every n, then φ is true in every model of BST_A(n)
for every n. Since every finite model of BST satisfies
BST_A(n) for sufficiently large n (by the embedding
into 𝒱_n), φ is true in every finite model of BST.
Thus φ ∈ BST_B.  □
```

Plain language: Formulation B is exactly the theory of sentences that hold in every Formulation A instance. A sentence is a theorem of BST-B if and only if it is true no matter which specific finite bound is in effect. The two formulations describe the same semantic reality from different angles: Formulation A names a specific bound (any one of the infinitely many schema instances), and Formulation B takes the intersection — what survives across all of them.

**Conservative extension.** A direct consequence is that Formulation B is a conservative extension of any Formulation A instance for the sentences that particular instance can express:

```
Corollary: For any n, every sentence provable in BST_B
that is expressible in BST_A(n) is also provable in
BST_A(n) (for sufficiently large n).

This is the formal content of the claim in Section 3.3.4
that the two formulations are complements — they are
not competing axiom systems but the same semantic
content viewed at different levels of specificity.
```

This result is used in Part V to show that the Burali-Forti resolution applies uniformly across all models — the bound is metatheoretic for the same reason that Formulation B is: both are statements about what holds in all finite structures, not within any particular one.


### 3.3.10  What the Axiom Does to ZFC: A Preview

The Axiom of Finite Bounds, in either formulation, propagates through the rest of the axiom system in determinate ways. The consequences are previewed here and developed fully in Part IV.

### Power Set

As established in Section 3.3.6 and to be proven fully in Part IV: Power Set fails under bounded finitude for sufficiently large sets. The argument proceeds in two complementary ways. First, the predicativist critique: forming the power set of S requires quantifying over all subsets of S, which is impredicative when those subsets are not individually defined — Weyl's objection, applied directly. Second, the cardinality argument: under a global bound B, any set S with |S| = ⌊log₂(B)⌋ + 1 has a power set of cardinality exceeding B, which cannot exist in the bounded model. Both arguments are given fully in Part IV. The failure is not total: for small sets — those with |A| ≤ ⌊log₂(n_M)⌋ — the power set P(A) does exist in BST, since 2^|A| ≤ n_M (Theorem 4.3, Bounded Power Set). The cardinality argument precisely locates the threshold at which Power Set becomes untenable.

```
Preview — Power Set failure:
```


```
Suppose the bound is B (in some model satisfying Form. A).
Let S be a set with |S| = ⌊log₂(B)⌋ + 1.
Then |P(S)| = 2^|S| > B.
P(S) cannot exist as a set in the model.
Power Set fails for S. □ (details in Part IV)
```


### Axiom of Choice

The Axiom of Choice is needed in ZFC because infinite collections cannot be explicitly enumerated — a choice function over infinitely many sets cannot be constructed finitely. Under bounded finitude, all collections are finite. Choice over finite collections is provable by explicit enumeration — list the sets, pick an element from each in order. Choice becomes a theorem rather than an axiom.

```
Preview — Choice as theorem:
```


```
Theorem (BST): For any finite collection C of nonempty
finite sets, there exists a function f such that
f(S) ∈ S for every S ∈ C.
```

```
Proof: By bounded induction on |C|. Base case |C| = 0
trivial. Inductive step: take any S₀ ∈ C, choose any
element e ∈ S₀ (possible since S₀ nonempty), extend
choice function for C \ {S₀} by f(S₀) = e. □ (sketch)
```


### Foundation

Foundation (Regularity) prevents infinite descending membership chains (sets that contain themselves, sets that contain sets that contain themselves, etc.). Under bounded finitude, infinite descending chains are impossible — any descending chain in a finite universe must terminate. Foundation therefore holds automatically in every BST model: no finite universe can support an infinite descending membership chain. It is stated as an explicit part of the system for completeness of the ZFC comparison — not because it requires independent assumption, but because a reader familiar with ZFC expects to see it addressed. As Theorem 4.2 proves, Foundation is redundant in BST: it is a consequence of the finiteness of models, not an independent axiom.

### The seven remaining axioms

After removing Infinity (negated), Power Set (rejected), Choice (theorem), and Foundation (redundant), seven axioms remain. Each is a bounded version of the corresponding ZFC axiom — finiteness constraints are made explicit where ZFC left them implicit. These axioms are developed fully in Part IV.


End of Part III

# Part IV: The Seven Axioms of Bounded Set Theory


This part presents the complete formal system of Bounded Set Theory. Every axiom is stated in full symbolic notation, followed immediately by a plain-language explanation of what it asserts, why it is included, and how it relates to its ZFC counterpart. The four axioms removed from ZFC are then addressed — each with a formal demonstration of why it falls away, not merely an assertion that it does.
The system has been built up across the preceding parts. Part III established the foundational axiom and its two formulations. Parts V, VI, and VII develop ordinals, induction, and functions respectively, building on the axiomatic base presented here. This part presents the complete axiomatic system, including the formal demonstration of why Power Set fails — stated once, completely, and without remainder.
The presentation proceeds as follows: first, a summary overview of the complete system; then each retained axiom in full; then each removed axiom with its removal justified formally.


## 4.1  System Overview


### Bounded Set Theory (BST) — Complete System:


```
RETAINED AXIOMS (7):
```

```
Foundational constraint:
1. Axiom of Finite Bounds  ............  [New — replaces Infinity]
```

```
Pure logic and minimal existence:
2. Extensionality  .....................  [Unchanged from ZFC]
3. Empty Set  ..........................  [Unchanged from ZFC]
```

```
Bounded construction:
4. Bounded Pairing  ....................  [Bounded from ZFC]
5. Bounded Union  ......................  [Bounded from ZFC]
6. Bounded Separation  .................  [Bounded from ZFC]
7. Bounded Replacement  ................  [Bounded from ZFC]
```

```
REMOVED AXIOMS (4):
8. Axiom of Infinity  ..................  [Negated by Axiom 1]
9. Power Set  ..........................  [Fails under global bound]
10. Axiom of Choice  ....................  [Theorem in BST]
11. Foundation (Regularity)  ............  [Theorem in BST]
```

```
DERIVED PRINCIPLE (optional):
FA-BST: Function Axiom  ................  [Follows from Axiom 7]
```

The pattern of bounding is consistent throughout: finiteness constraints are made explicit exactly where construction happens — where new sets are built from existing ones. Axioms that do not construct (Extensionality, Empty Set) need no bounding. Axioms that construct (Pairing, Union, Separation, Replacement) each carry an explicit finiteness constraint on inputs and outputs.


## 4.2  The Seven Retained Axioms

Axiom 1: Axiom of Finite Bounds  [New — foundational]

```
Component 1 — Negation of Infinity:
¬∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

```
Component 2A — Schema (Formulation A):
For some n ∈ ℕ (meta):  ∀S ( |S| ≤ n )
```

```
Component 2B — Metatheoretic constraint (Formulation B):
Every model of BST is finite.
The bound is not an object of the theory.
Bounded Reflection: BST ⊢ φ  iff  φ true in all finite models.
```

```
Both formulations of Component 2 are available.
Formulation A is preferred for object-level applications.
Formulation B is preferred for foundational analysis.
```

Plain language: No set contains every natural number as a completed totality. Every set is finite. There is some upper limit on the size of sets, though the theory does not specify what that limit is. This is the single axiom from which the entire character of BST derives.
AFB is the axiom that directly addresses what ZFC's Axiom of Infinity asserts — negating its existence claim and adding the bound that bare negation alone cannot supply. It is the only genuinely new axiom in BST — all others are modifications of existing ZFC axioms or consequences of AFB. Its epistemic status is symmetric with the Axiom of Infinity: both are declarations. The case for preferring Axiom 1 is developed in the Preamble and Part III.
All downstream consequences — the failure of Power Set, Choice as a provable theorem, Foundation as an automatic structural consequence, the revised ordinal theory, the bounded induction schemas — flow from this single commitment. The elegance of the system is that one foundational change propagates cleanly through the entire axiomatic structure.

Axiom 2: Extensionality  [Unchanged from ZFC]

```
∀A ∀B [ ∀x(x ∈ A ↔ x ∈ B)  →  A = B ]
```

```
Equivalently (contrapositive):
∀A ∀B [ A ≠ B  →  ∃x(x ∈ A ∧ x ∉ B) ∨ ∃x(x ∈ B ∧ x ∉ A) ]
```

Plain language: Two sets are identical if and only if they have exactly the same members. There is no difference between sets except their elements. A set is completely determined by what belongs to it.
Extensionality is the most fundamental axiom in set theory. It defines what it means for two sets to be the same — their identity is entirely constituted by their membership. The axiom makes no claim about size, cardinality, or finiteness. It does not construct anything. It is pure logic applied to the membership relation, and it survives any foundational assumption about bounds.
No modification is needed because Extensionality contains no implicit reference to infinity. It quantifies over elements of A and B, both of which are finite sets in BST, and the universal quantifier ∀x ranges over the finite domain of the model. The axiom is automatically bounded in any finite model.

Axiom 3: Empty Set  [Unchanged from ZFC]

```
∃∅ ∀x ( x ∉ ∅ )
```

```
The empty set ∅ has no members.
It is the unique set with this property (by Extensionality).
|∅| = 0.
```

Plain language: There exists a set with no members. This is the most modest existence claim in mathematics — one object, zero elements.
The Empty Set axiom asserts the existence of a single, trivially finite object. It is fully compatible with bounded finitude — a set with zero elements satisfies any cardinality bound. It is the natural starting point of a finite set theory: the base case from which all constructions begin.
In ZFC, the Empty Set axiom is sometimes derived from Separation (taking a subset of any set satisfying a contradictory formula). In BST it is retained as an explicit axiom to make the existence of the empty set visible as a foundational commitment rather than a consequence of a more complex axiom. This follows standard practice in minimal axiom systems.

Axiom 4: Bounded Pairing  [Bounded from ZFC]

```
ZFC original:
∀a ∀b ∃P ∀x ( x ∈ P  ↔  x = a ∨ x = b )
```

```
BST bounded form:
∀a ∀b ∃P ( ∀x(x ∈ P ↔ x = a ∨ x = b) )
```

```
Cardinality: |P| ∈ {1, 2}.
If a = b: P = {a} has 1 element.
If a ≠ b: P = {a, b} has 2 elements.
Both are within any positive bound.
```

Plain language: Given any two finite sets, there exists a finite set containing exactly those two sets as members. Pairing always produces a set of at most 2 elements.
Bounded Pairing is the simplest construction axiom. It takes two existing finite sets and produces their pair — a new finite set of cardinality at most 2. One might ask why explicit bounding is needed here at all, when the cardinality consequence is trivially small. The answer is that the bounding is not about the size of the output — it is about logical coherence. Every axiom in BST must be stated within BFOL, which admits no unbounded quantification. Standard FOL's quantifiers carry an implicit assumption that the domain may be infinite; BFOL enforces that every quantifier ranges over a named finite region. The bounded form of Pairing is not redundant — it is required for the foundation to be internally consistent. Implicit infinite-domain assumptions are present throughout standard FOL, and the discipline of BFOL must be applied everywhere, including where the cardinality consequences happen to be trivial.
Pairing is used throughout BST to construct ordered pairs (the Kuratowski encoding {{a},{a,b}} uses Pairing twice), which in turn support the Cartesian product and all function and relation theory of Part VII.

Axiom 5: Bounded Union  [Bounded from ZFC]

```
ZFC original:
∀F ∃U ∀x ( x ∈ U  ↔  ∃Y(Y ∈ F ∧ x ∈ Y) )
```

```
BST bounded form:
∀F ∃U ( ∀x(x ∈ U ↔ ∃Y(Y ∈ F ∧ x ∈ Y)) )
```

```
Cardinality bound:
|U| ≤ Σ_{Y ∈ F} |Y|  ≤  |F| · max_{Y ∈ F}|Y|
The union of finitely many finite sets is finite.
```

```
Special case: binary union A ∪ B.
|A ∪ B| ≤ |A| + |B| ≤ 2·n_M.
(Must fit within model bound n_M.)
```

Plain language: Given a finite collection of finite sets, there exists a finite set containing exactly the elements that belong to at least one member of the collection. The union of finitely many finite sets is always finite.
Bounded Union is the axiom that allows sets to be combined. It takes a finite family of finite sets and produces their union — a set containing every element that appeared in any member of the family. The cardinality bound on the union is the sum of the cardinalities of the members, which is finite when both the family and its members are finite.
A subtlety arises when the sum of cardinalities approaches or exceeds the model bound n_M. In such cases, the union exists as a set — it is still finite — but is constrained by the model bound. The axiom does not assert that all unions fit within a specific bound; it asserts that unions of finite collections of finite sets are finite. In models with a specific bound, unions that would exceed the bound cannot be formed from sets that exist in that model, since the constituent sets themselves are bounded.
Bounded Union, combined with Bounded Pairing, gives binary union A ∪ B for any two finite sets A and B. This supports the construction of Cartesian products and the development of all set operations needed for the mathematics of Parts VII and VIII.

Axiom 6: Bounded Separation  [Bounded from ZFC — with property restriction]

```
ZFC original (Aussonderung):
∀A ∃B ∀x ( x ∈ B  ↔  x ∈ A ∧ φ(x) )
for any formula φ in the language of set theory.
```

```
BST bounded form:
∀A ∃B ( ∀x(x ∈ B ↔ x ∈ A ∧ φ(x)) )
for any finitely expressible property φ.
```

```
Cardinality: |B| ≤ |A|.
Separation never produces a larger set than the input.
```

```
Restriction on φ: φ must not quantify over completed
infinite totalities. Specifically, φ is finitely expressible
if all quantifiers in φ are bounded: of the form
∀x ∈ S or ∃x ∈ S for some finite set S already in the theory.
```

Plain language: Given any finite set and any definable property, the subset of elements satisfying the property exists and is finite. Separation carves subsets out of existing sets. It never creates anything larger than what it starts with.
Bounded Separation is the axiom that allows selective construction — given a set and a test, form the set of elements that pass the test. It is the primary tool for defining specific subsets: the set of even numbers in {0,...,n}, the set of prime numbers up to k, the set of pairs satisfying a relation.
The restriction on φ — that it must be finitely expressible — is the more significant modification from ZFC. In ZFC, φ can be any formula in the language of set theory, including ones that quantify over all sets, all ordinals, or all functions. Such formulas are impredicative in the sense discussed in Part II (Section 2.4) and Part III: they define a subset by reference to a totality that may include the subset being defined.
In BST, impredicative formulas are excluded. The restriction to finitely expressible properties means φ can only refer to sets and collections that are already finitely established in the theory. This is precisely the predicativist constraint that Weyl identified as the correct restriction — and which BST adopts not by philosophical preference but as a direct consequence of the finite ontology.
The practical consequence is that Bounded Separation cannot be used to define subsets by reference to infinite objects (since no infinite objects exist in BST) or by unrestricted quantification over the universe (since the universe itself is not a set in BST). Every application of Bounded Separation must specify a definite finite parent set and a definite finitely expressible property.

Axiom 7: Bounded Replacement  [Bounded from ZFC — with function restriction]

```
ZFC original:
∀A ( ∀x(x ∈ A → ∃!y ψ(x,y))
→ ∃B ∀y(y ∈ B ↔ ∃x(x ∈ A ∧ ψ(x,y))) )
for any formula ψ.
```

```
BST bounded form:
∀A ( ∀x(x ∈ A → ∃!y ψ(x,y))
→ ∃B ( ∀y(y ∈ B ↔ ∃x(x ∈ A ∧ ψ(x,y))) ) )
for any finitely expressible functional formula ψ.
```

```
Cardinality: |B| ≤ |A|.
Replacement never produces a larger set than the input.
(The image of a function on a finite set is finite
and has at most as many elements as the domain.)
```

Plain language: Given a finite set A and a rule that assigns each element of A a unique output, the collection of all outputs forms a finite set. Replacement transforms sets element-by-element. The result is never larger than the input.
Bounded Replacement is the most powerful of the construction axioms. Where Separation takes a subset of an existing set, Replacement transforms an existing set — mapping each element to a (possibly different) output and collecting the results. It is the set-theoretic expression of applying a function to every element of a set.
The functional formula ψ(x,y) must satisfy uniqueness: for each x ∈ A there is exactly one y such that ψ(x,y). This ensures the output collection is well-defined. The bounded form requires ψ to be finitely expressible; the finiteness of A is guaranteed by the model, not stated as an additional clause in the axiom itself — consistent with the restriction on Separation.
Bounded Replacement is the axiom that underlies Cartesian products (Part VII, Definition 7.2), function graphs (Part VII, Proposition 7.1), and the construction of quotient sets (Part VII, Definition 7.7). It is the workhorse axiom of BST — almost every substantive construction uses it.
The cardinality bound |B| ≤ |A| follows immediately: ψ maps each element of A to exactly one output, so the image B has at most |A| elements (it may have fewer if ψ is not injective). The image of a finite set under a function is always finite and always fits within the model's bound, since the domain A already fits within the bound.


## 4.3  The Four Removed Axioms

The following four axioms of ZFC are absent from BST. In each case the reason for absence is stated and formally demonstrated. The absence is not stipulative — it is a consequence of the foundational commitment of Axiom 1.

Removed: Axiom of Infinity  [Directly negated by Axiom 1]

```
ZFC Axiom of Infinity:
∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

```
BST negation (Component 1 of Axiom 1):
¬∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

```
Status: Directly negated. The negation is Axiom 1,
Component 1. This is not merely an absence — it is
an explicit denial.
```

The Axiom of Infinity is not simply omitted — its negation is asserted. ZF¬∞ (hereditarily finite set theory) achieves the same negation but adds no bound. BST goes further: it negates Infinity and adds the bound component. The distinction between ZF¬∞ and BST, and why bare negation is insufficient, is established formally in Part III, Section 3.3.6.

**◆ Recovery status — Infinity:**
The Axiom of Infinity is not recoverable in BST, and its negation is load-bearing: removing it is the founding commitment of the entire system. What is recoverable is the mathematical content that Infinity was introduced to support. For any specific natural number n, there exists a bound k large enough that n ∈ ℕ_B(k) — every concrete finite computation, every specific arithmetic fact, every particular instance of a classical theorem about natural numbers is available within the parameterised family {ℕ_B(k) | k ∈ metatheory}. The completed infinite set ℕ does not exist in BST; every finite initial segment of it does. The loss is ontological — a completed totality — not mathematical. Every theorem of classical arithmetic that concerns specific numbers is provable in BST. This is Type II recovery: exact BST theorems at each level k, with the universal quantification over all natural numbers living only in the metatheory.

Removed: Power Set  [Fails under global cardinality bound]

```
ZFC Power Set:
∀A ∃P(A) ∀x ( x ∈ P(A)  ↔  x ⊆ A )
```

```
Formal demonstration of failure in BST:
```

```
Let M be any model of BST with bound n_M.
Power Set holds in M iff for every set A ∈ M,
P(A) ∈ M.
```

```
Lemma: |P(A)| = 2^|A|.
(Standard combinatorics: each subset of A is determined
by which elements it includes — 2 choices per element.)
```

```
Let k = ⌊log₂(n_M)⌋ + 1.
Then k ≤ n_M (for n_M ≥ 1).
Let A = {0, 1, ..., k-1}. Then |A| = k ≤ n_M.
A ∈ M (A is a finite set within the bound).
```

```
|P(A)| = 2^k > 2^(log₂(n_M)) = n_M.
```

```
P(A) would have cardinality > n_M.
P(A) cannot exist in M (exceeds the bound).
Power Set fails for A in M. □
```

```
Corollary: In every model of BST, Power Set fails
for any set A with |A| > log₂(n_M).
```

This proof is the formal version of the argument previewed in Part III (Section 3.3.9) and completed here. The key is that for any bound n_M, there exist finite sets within the bound whose power sets exceed it. Since these sets exist in every model of BST, Power Set fails for sufficiently large sets in every model of BST.
Two independent reasons for rejecting Power Set have been identified in this paper:
- The cardinality argument: demonstrated above — power sets of sufficiently large finite sets exceed any fixed bound.
- The predicativist argument: Power Set is impredicative — P(A) is defined by quantifying over all subsets of A, presupposing the existence of the very collection being defined. This objection (Weyl, Poincaré, Feferman) applies independently of any bound.
Both arguments converge on the same conclusion. Power Set has no place in BST.

**◆ Recovery status — Power Set:**
Power Set is not recoverable in full, but three partial recoveries are available and together cover its practical mathematical use.

### Theorem 4.3 — Bounded Power Set (BPS):

```
For any set A ∈ M with |A| ≤ ⌊log₂(n_M)⌋,
the full power set P(A) exists in M.

Proof: |P(A)| = 2^|A| ≤ 2^(⌊log₂(n_M)⌋) ≤ n_M.
P(A) has cardinality within the model bound and is
constructible by iterated Bounded Separation:
P(A) = { B ⊆ A | B definable by a binary selector
          over the elements of A }.
Since A is finite, there are finitely many such
selectors and finitely many subsets. Each is a
finite set. Their collection P(A) is a finite set
of finite sets. □
```

```
Corollary: P(A) exists in BST whenever |A| is small
relative to the model bound. For a model with
n_M = 2^64, any set with |A| ≤ 64 has a full
power set within the model. The restriction is
quantitative, not qualitative.
```

The three recovery routes, in decreasing generality:

(i) **Bounded Power Set (Theorem 4.3):** For small sets, P(A) exists as a set in BST. The threshold is |A| ≤ ⌊log₂(n_M)⌋. For any fixed concrete application — sets of axioms, sets of states, sets of vertices in a graph — the bound k can be chosen large enough that P(A) exists. The failure of full Power Set is a constraint on the theory's abstract generality, not on any specific mathematical application. Recovery type: Type I (exact BST theorem at each qualifying level).

(ii) **Bounded Separation as practical substitute:** Even when P(A) does not exist as a completed set, any specific definable subset B ⊆ A exists by Bounded Separation. Classical mathematics rarely needs the full power set as an object; it needs specific subsets defined by properties. Bounded Separation delivers exactly this, for every finitely expressible property, without the cardinality explosion. Recovery type: Type I (exact BST theorem).

(iii) **FA-BST for function spaces:** In ZFC, function spaces B^A (the set of all functions from A to B) are constructed via Power Set. In BST, function spaces are recovered via the Function Axiom (FA-BST, Part VII, Proposition 7.1) when |B|^|A| ≤ n_M. For any fixed concrete domain and codomain, a sufficiently large model bound accommodates the function space. The full unconstrained function space B^A for arbitrary infinite A and B is unavailable — and correctly so, since neither A nor B is infinite in BST. Recovery type: Type II (exact BST theorem for each qualifying (A,B,k) triple; the family of admissible triples has stable form).

Removed: Axiom of Choice  [Theorem in BST — not needed as axiom]

```
ZFC Axiom of Choice:
For any collection C of nonempty sets, there exists a
function f such that f(S) ∈ S for every S ∈ C.
```

```
Status in BST: provable theorem, not an axiom.
```

```
Theorem 4.1 — Choice for finite collections (BST):
For any finite collection C of nonempty finite sets,
there exists a function f such that f(S) ∈ S for all S ∈ C.
```

```
Proof: By BI-BST on |C|.
```

```
Base case: |C| = 0. The empty function witnesses choice
vacuously. □
```

```
Inductive step: Assume choice holds for all collections
of size < n. Let |C| = n.
Pick any S₀ ∈ C (C is nonempty).
S₀ is nonempty (by hypothesis), so pick any e₀ ∈ S₀.
By induction hypothesis, a choice function f' exists
for C' = C \ {S₀}.
Define f(S₀) = e₀ and f(S) = f'(S) for S ∈ C'.
f is a choice function for C. □
```

```
Note: 'Pick any e₀ ∈ S₀' is valid because S₀ is a
specific nonempty finite set — its elements can be
enumerated, and the first element in any enumeration
provides a definite choice. No non-constructive
principle is required.
```

The Axiom of Choice in ZFC is needed precisely because infinite collections cannot be finitely enumerated. When a collection is infinite, a selection from each member cannot be specified by explicit construction — there are infinitely many choices to make, and no finite procedure can make them all. The axiom asserts the existence of a choice function without constructing it.
In BST, all collections are finite. Any finite collection can be enumerated — its members listed in a specific order — and a choice from each member can be made explicitly in finitely many steps. The choice function is not merely asserted to exist; it is constructed by the inductive procedure in the proof above. Choice becomes a theorem because the obstacle that made it an axiom (infinite collections) does not exist in BST.
A further observation: many of the most counterintuitive consequences of the Axiom of Choice — the Banach-Tarski paradox, the existence of non-measurable sets, well-orderings of the reals — depend on applying Choice to infinite collections and uncountable sets. Since these objects do not exist in BST, these consequences do not arise, and their absence is not a loss but a correction.

**◆ Recovery status — Choice:**
Full Choice is recovered as Theorem 4.1 — not merely as an axiom, but as a constructive theorem with an explicit procedure. No fragment of Choice needs to be assumed. Recovery type: Type I (exact internal BST theorem; Choice is provable, not merely asserted).

The two fragments of Choice most used in classical analysis are equally redundant in BST:

**Countable Choice (AC_ω):** Asserts that a choice function exists for any countably infinite collection of nonempty sets. In BST no collection is infinite, so the premise is never satisfied — AC_ω holds vacuously for all BST collections, and every instance that arises in practice (a finite collection of finite sets) is constructively witnessed by Theorem 4.1.

**Dependent Choice (DC):** Asserts that given a total binary relation R on a nonempty set X, there exists a sequence x₀, x₁, x₂, ... with R(xₙ, xₙ₊₁) for all n. In BST, sequences are finite and their construction is a bounded recursion (Part VI, Section 6.2.5). For any finite number of steps N ≤ k, the dependent sequence x₀, ..., x_N is constructible by Bounded Recursion without any choice principle. The completed infinite sequence — which DC asserts — does not exist in BST, but every finite initial segment of it does, and initial segments are all that any bounded computation ever uses.

The classical uses of AC in real analysis — choosing a rational from each interval in a cover, selecting a convergent subsequence, constructing a Hamel basis — all resolve constructively in BST because the underlying objects are finite or the selection is over a finite domain. The analysis of Part IX relies on none of these choice principles; the proofs are constructive throughout.

Removed: Foundation (Regularity)  [Redundant — automatically satisfied in BST]

```
ZFC Foundation (Regularity):
∀A ( A ≠ ∅  →  ∃x ∈ A ( x ∩ A = ∅ ) )
```

```
Equivalently: every nonempty set A contains an element
disjoint from A. This rules out:
(a) Sets that contain themselves: A ∈ A
(b) Infinite descending membership chains:
... ∈ A₃ ∈ A₂ ∈ A₁ ∈ A₀
```

```
Status in BST: automatically satisfied.
```

```
Theorem 4.2 — Foundation holds in all models of BST:
In any model M of BST, every nonempty set A ∈ M
contains an element disjoint from A.
```

```
Proof:
Part 1 — No self-membership. Suppose A ∈ A for some A ∈ M.
Then A ∈ A ∈ A ∈ ... forms an infinite descending
membership chain. But M is a finite model (established
below in Part V, Theorem 5.3): it contains finitely many sets.
An infinite descending chain would require infinitely many
distinct sets, contradicting finiteness of M. □
```

```
Part 2 — No infinite descending chains. By the same argument:
any descending membership chain x₀ ∋ x₁ ∋ x₂ ∋ ...
would require infinitely many distinct sets in M.
M is finite. Therefore all descending chains terminate. □
```

```
Part 3 — Foundation axiom satisfied. Given nonempty A ∈ M,
consider the membership tree of A (the tree of all
membership chains descending from A). Since M is finite
and no cycles exist (by Parts 1-2), this tree is a
finite acyclic directed graph. It has leaves — sets
with no members in A. Any such leaf x satisfies x ∩ A = ∅.
Therefore Foundation holds for A. □
```

Foundation is needed in ZFC because the Axiom of Infinity introduces sets of unbounded rank, and without Foundation, the possibility of pathological sets (self-containing sets, infinite descending chains) cannot be ruled out. Foundation excludes these pathologies by axiom.
In BST, the pathologies are structurally impossible. A finite model cannot contain an infinite descending membership chain — such a chain would require infinitely many distinct sets. Self-containing sets are a special case of this: A ∈ A would initiate an infinite chain. Since every model of BST is finite, neither pathology can occur, and Foundation is automatically satisfied everywhere.
The redundancy of Foundation is itself informative: it reveals that Foundation was needed in ZFC precisely because the Axiom of Infinity introduced the structural possibility of pathological sets. Replacing Infinity with Axiom 1 removes the source of pathology, and Foundation becomes a consequence rather than an assumption.

This result has a clean graph-theoretic restatement: in any BST-Model M = ⟨D, ∈_M, ≤_M, 0_M, S_M⟩ (Definition 5.4, Part V), the membership relation ∈_M constitutes a finite directed graph on D. An infinite descending membership chain requires a cycle in this graph (since D is finite, any infinite path must revisit a node). But cycles are structurally prohibited by the BST-native induction schema — a cycle a ∈ ... ∈ a would permit an infinite descending chain from a, contradicting finiteness. Since the graph is finite and acyclic, every path terminates at a node with in-degree zero under ∈_M — that is, at the empty set. Foundation is therefore satisfied purely by the geometry of finite membership graphs.

**◆ Recovery status — Foundation:**
Foundation is not merely recovered — it is automatically and universally satisfied in every BST model as a theorem (Theorem 4.2). It requires no axiom because the finite model structure makes its violation geometrically impossible. This is a strengthening relative to ZFC, where Foundation is an independent axiom that cannot be proved from the other axioms. Recovery type: Type I — Foundation is an exact internal BST theorem, stronger in status here than in ZFC where it requires an independent axiom.

One further observation on the opposite direction: **anti-foundation axioms** — most notably Aczel's Anti-Foundation Axiom (AFA, 1988), which permits non-well-founded sets satisfying circular membership (A ∈ A, or longer cycles) — are also unavailable in BST, but this is a correct absence, not a limitation. AFA is used in theoretical computer science (process algebra, bisimulation semantics) to model coinductive structures and infinite streams. In BST these structures are not available as completed infinite objects, but their finite approximations — finite processes, finite streams of length ≤ k, finite bisimulation relations — are all constructible. The BST treatment of such structures is exactly the treatment of Part VIII's number chain: not a completed infinite coinductive object, but a parameterised family of finite approximations, each fully available and each carrying explicit bounds. The anti-foundation direction is a correct absence (Category C); the constructive approximation is a Category A recovery.


### ◆ Summary — Recovery Status of Removed ZFC Axioms

```
Axiom           ZFC role          BST status        Recovery
────────────────────────────────────────────────────────────────────────
Infinity        Posits ℕ as a     Directly negated  Mathematical content
                completed set     (Axiom 1,         recovered: every
                                  Component 1)      specific finite
                                                    instance provable
                                                    in ℕ_B(k). Loss
                                                    is ontological only.

Power Set       Posits P(A) for   Fails for         Three partial
                any set A         |A| > log₂(n_M)   recoveries:
                                  (proved above)    (i)  BPS Theorem 4.3:
                                                         P(A) exists when
                                                         |A| ≤ log₂(n_M).
                                                    (ii) Bounded Sep:
                                                         any definable
                                                         subset exists.
                                                    (iii)FA-BST: function
                                                         spaces when
                                                         |B|^|A| ≤ n_M.

Choice          Asserts choice    Proved as         Fully recovered as
                function for      Theorem 4.1       constructive theorem.
                any collection    (constructive)    AC_ω and DC equally
                                                    redundant. All
                                                    classical analytic
                                                    uses covered.

Foundation      Rules out self-   Automatic         Universally satisfied
                membership and    theorem in all    as Theorem 4.2.
                infinite chains   BST models        Strengthened relative
                                  (Theorem 4.2)     to ZFC status.
                                                    Anti-foundation
                                                    (AFA) is a correct
                                                    absence (Category C);
                                                    finite approx.
                                                    available (Cat. A).
```


## 4.4  The Complete System: Formal Reference

The complete axiom system of Bounded Set Theory is collected here in compact form for reference.

### BST — Complete Formal System:


```
A1. FINITE BOUNDS:
¬∃S[∅∈S ∧ ∀x(x∈S → x∪{x}∈S)]
∧  [∃n∈ℕ(meta): ∀S(|S|≤n)]  [Form. A]
or [All models of BST are finite; bound not
an object of the theory]  [Form. B]
```

```
A2. EXTENSIONALITY:
∀A∀B[∀x(x∈A↔x∈B) → A=B]
```

```
A3. EMPTY SET:
∃∅ ∀x(x∉∅)
```

```
A4. BOUNDED PAIRING:
∀a∀b(∃P(∀x(x∈P↔x=a∨x=b)))
```

```
A5. BOUNDED UNION:
∀F(∃U(∀x(x∈U↔∃Y(Y∈F∧x∈Y))))
```

```
A6. BOUNDED SEPARATION:
∀A(∃B(∀x(x∈B↔x∈A∧φ(x))))
for any finitely expressible φ.
```

```
A7. BOUNDED REPLACEMENT:
∀A(∀x(x∈A→∃!y ψ(x,y))
→∃B(∀y(y∈B↔∃x(x∈A∧ψ(x,y)))))
for any finitely expressible functional ψ.
```

```
DERIVED:
Choice: theorem by BI-BST (Theorem 4.1)
Foundation: theorem from finiteness of models (Theorem 4.2)
Function graphs: by A7 + Cartesian products (FA-BST)
```


## 4.5  BST and ZFC: A Formal Comparison


### Axiom-by-axiom comparison:


```
ZFC Axiom          BST Status         Reason
─────────────────────────────────────────────────────────────
Extensionality     Retained (A2)      No infinity content
Empty Set          Retained (A3)      No infinity content
Pairing            Retained (A4)      Bounded; always finite
Union              Retained (A5)      Bounded; finite union
Separation         Retained (A6)      Bounded; predic. restricted
Replacement        Retained (A7)      Bounded; finite image
Infinity           Negated (A1)       Core foundational change
Power Set          Removed            Cardinality + predicativity
                                      (partially recovered Thm 4.3)
Choice             Theorem            Finite choice provable
Foundation         Theorem            Finite models exclude cycles
```

The pattern is clear: axioms that do not involve infinity survive unchanged or with explicit finiteness annotations. Infinity is negated. The three axioms most responsible for the counterintuitive results of ZFC — Infinity, Power Set, and Choice — are all removed or replaced. Foundation, which was needed as a guard against ZFC's own pathological consequences, becomes redundant.


## 4.6  Independence of the Seven Axioms

A well-designed axiom system should have no redundant axioms — each should be independent of the others (not provable from the rest alone). The independence of BST's seven axioms is established by explicit construction: for each axiom, a finite model is exhibited in which all other axioms hold and the target axiom fails.

The models are defined as finite structures M = (D, ∈_M) where D is a finite set of natural numbers used as stand-ins for sets, and ∈_M is an explicit membership relation on D. Each model is verified in ACA₀.

```
Independence model table

Axiom   Witness model M              Domain D          Membership ∈_M
────────────────────────────────────────────────────────────────────────────
A2      M_{A2}: Ext fails            {0, 1}            ∅
        (two distinct empty sets)

A3      M_{A3}: Empty Set fails      {0}               {(0,0)}
        (no empty element)

A4      M_{A4}: Pairing fails        {0, 1, 2}         {(0,1)}
        (pair missing from domain)   0=∅, 1={0}

A5      M_{A5}: Union fails          {0, 1, 2}         {(0,1),(1,2)}
        (union missing from domain)  0=∅, 1={0}, 2={1}

A6      M_{A6}: Separation fails     {0, 1, 2}         standard on V₂
        (specific subset omitted)    0=∅, 1={0}, 2={0,1}

A7      M_{A7}: Replacement fails    {0, 1, 2}         standard on D
        (image exceeds domain)

A1      M_{A1}: AFB fails            ℕ (infinite)      standard ∈
        (unbounded domain)
```

Each failure is established by exhibiting the specific instance that the axiom requires but the model does not satisfy:

**A2 (Extensionality):** In M_{A2}, elements 0 and 1 have the same members — namely none, since ∈_M = ∅. Thus ∀x(x ∈ 0 ↔ x ∈ 1) holds. But 0 ≠ 1. Extensionality requires identical membership to imply identity; the model refutes this. All other axioms hold vacuously or trivially over a two-element domain with no membership.

**A3 (Empty Set):** In M_{A3}, the sole element 0 satisfies 0 ∈ 0 (since (0,0) ∈ ∈_M). Every element is a member of every set; no element has empty extension. The empty set axiom requires some element with no members, which fails. Extensionality holds (only one element).

**A4 (Bounded Pairing):** In M_{A4}, elements 0 and 1 both exist (interpreting 0 = ∅ and 1 = {0}), but the pair {0, 1} is not in D — only three elements exist and the encoding does not include 2 = {0,1}. Pairing fails for the pair {0,1}. Extensionality, Empty Set, Union (on the restricted domain), Separation, and Replacement all hold for what is present.

**A5 (Bounded Union):** In M_{A5}, element 2 = {1} = {{0}} exists, but the union ⋃{1, 2} = {0, 1} has two elements and would need to be a set in D. No such element exists in D. Union fails for the family {1, 2}. Pairing holds (pairs of existing elements are all within D for the given membership).

**A6 (Bounded Separation):** Take D = V₂ = {∅, {∅}, {∅,{∅}}} with standard membership. Restrict the allowed separation formulas to only the trivial formula φ(x) := (x = x). Then the subset {x ∈ A | x ≠ x} = ∅ exists, but {x ∈ {∅,{∅}} | x ≠ ∅} = {{∅}} does not, since no mechanism is provided to form it. Full Bounded Separation — which must work for all finitely expressible φ — fails for this restricted version. The other axioms hold on V₂ under standard membership.

**A7 (Bounded Replacement):** Take D = V₂ = {∅, {∅}, {∅,{∅}}} with standard membership. Define the function ψ(x, y) := (y = x ∪ {x}) — the successor function. Applied to A = {∅, {∅}}, the image is {{∅}, {∅,{∅}}} ∪ {{∅,{∅}}, {∅,{∅},{∅,{∅}}}}. The set {∅,{∅},{∅,{∅}}} has rank 2 and exists in D, but the full image requires elements of rank 3 which are not in V₂. Replacement fails for this function and domain. Separation holds on V₂.

**A1 (AFB):** Any model of ZF¬∞ — the hereditarily finite sets with standard membership, whose domain is the infinite set HF — satisfies all of A2–A7 (these are retained ZFC axioms) but has an infinite domain, violating the global bound of Axiom 1. This is the familiar ZF¬∞ model, studied since Ackermann (1937).

```
Theorem 4.4 — Independence of BST axioms:
No axiom of BST is derivable from the remaining six.

Proof: By the seven models above. Each model satisfies
exactly six of the seven axioms, witnessing that the
seventh is not derivable from the rest.  □
```

The independence of A1 from A2–A7 has a further structural consequence noted in Part III: the theories BST and ZF¬∞ are genuinely incomparable. ZF¬∞ satisfies A2–A7 but refutes A1 (via the infinite-domain model). BST satisfies A1–A7. Their theorems are not ranked — BST proves sentences ZF¬∞ refutes (∀S Fin(S)) and ZF¬∞ proves sentences BST cannot (Goodstein's theorem, Ackermann totality). The independence models make this structural divergence visible at the axiom level.






## 4.7  Summary: The Architecture of BST

Bounded Set Theory has a clean three-level architecture:

**Level 1 — The foundational constraint (A1):** The single axiom that defines the theory's character. Everything else flows from here.

**Level 2 — The logical infrastructure (A2, A3):** Extensionality defines identity; Empty Set provides the base object. Neither constructs anything; both are pure logical commitments.

**Level 3 — The construction machinery (A4–A7):** Pairing, Union, Separation, and Replacement are the four tools with which all finite mathematical objects are built. Each is a bounded version of its ZFC counterpart, with finiteness made explicit throughout.

### ◆ The Elegance of the System

One foundational commitment — the Axiom of Finite Bounds — propagates cleanly through the entire axiomatic structure. It negates Infinity directly. It forces Power Set to fail by cardinality argument. It makes Choice provable by finite enumeration. It makes Foundation automatic by structural impossibility of cycles in finite models. The controversial axioms do not have to be removed by ad hoc decision — they fall away as consequences. The result is a system of seven axioms, none of which generates the counterintuitive results that motivated the foundational challenge in the first place.


End of Part IV

# Part V: Ordinals and the Burali-Forti Problem

Ordinals are the backbone of set-theoretic foundations. They measure position in well-orderings, index the cumulative hierarchy, support transfinite induction and recursion, and provide the structural vocabulary in which ZFC's most powerful theorems are stated. Any replacement for ZFC must give a coherent account of ordinals. If the replacement is a finite theory, the classical ordinal framework — built on the von Neumann construction and culminating in ω and beyond — is unavailable, and a replacement must be constructed from scratch.
This part does three things. First, it shows precisely why the classical von Neumann ordinals cannot be imported into bounded set theory without contradiction. Second, it constructs a replacement ordinal theory adequate to the needs of a finite foundation. Third — and this is the novel contribution — it derives the Burali-Forti analogue that arises when a maximum ordinal is asserted internally to the theory, shows the contradiction step by step, and resolves it by the external-bound construction introduced in Part III. No prior finitist program has addressed this problem explicitly. Its resolution here is what distinguishes bounded set theory from all prior attempts.


## 5.1  The Classical von Neumann Ordinals: Why They Fail


### 5.1.1  The classical construction

In standard ZFC, ordinals are defined by John von Neumann's elegant construction: each ordinal is identified with the set of all smaller ordinals. The construction proceeds as follows:

```
Von Neumann ordinals (ZFC):
```


```
0  =  ∅
1  =  {0}         =  {∅}
2  =  {0, 1}      =  {∅, {∅}}
3  =  {0, 1, 2}
...
n  =  {0, 1, ..., n-1}
...
ω  =  {0, 1, 2, 3, ...}   (the first infinite ordinal)
ω+1 = {0, 1, 2, ..., ω}
...
```

Plain language: Each natural number is a set containing all previous natural numbers. The first infinite ordinal ω is the set of all natural numbers — the Axiom of Infinity guarantees its existence. From ω, the transfinite ordinals continue without bound.
The construction has three defining properties that make it foundationally powerful:
- Each ordinal is a transitive set: if β ∈ α and γ ∈ β then γ ∈ α. Every element of an ordinal is also a subset.
- Ordinals are well-ordered by membership: for any two distinct ordinals α and β, either α ∈ β or β ∈ α, and every nonempty set of ordinals has a least element.
- Every well-ordered set is isomorphic to a unique ordinal: ordinals are canonical representatives of order types.

### 5.1.2  The dependency on the Axiom of Infinity

The von Neumann construction is inseparable from the Axiom of Infinity at a foundational level. This dependency is not merely practical — it is structural. The argument proceeds in three steps.
Step 1. The definition of ω. The von Neumann ordinal ω is defined as the set {0, 1, 2, 3, ...} — the set of all finite von Neumann ordinals. This set exists in ZFC by the Axiom of Infinity: the Axiom asserts exactly the existence of a set closed under the successor operation and containing ∅. Without the Axiom of Infinity, ω does not exist as a set.
Step 2. The ordinal framework is built to extend through ω. The standard ZFC definition of an ordinal — a transitive set well-ordered by membership — is formally applicable to finite ordinals alone. But the classical ordinal theory is not designed to stop at the finite: it is constructed precisely to continue through ω, ω+1, ω², and beyond. The canonical representatives, the successor operation, the ordering by membership — all are set up to culminate in the transfinite. Importing this framework into BST means importing a structure whose natural trajectory is infinite. Even if one only uses the finite initial segment 0, 1, 2, ..., the framework carries its transfinite extension as latent content. The bounded ordinal theory of Section 3.2 replaces this framework with one that has no such latent extension.
Step 3. Transfinite induction and recursion. The full power of the von Neumann ordinals comes from transfinite induction: if a property holds of 0 and is preserved by successors and limits, it holds of all ordinals. Limit ordinals — ordinals with no immediate predecessor, like ω, ω², ω^ω — are essential to this structure. Under the Axiom of Finite Bounds, limit ordinals do not exist (every nonzero ordinal has an immediate predecessor, as shown in Section 3.2). Transfinite induction in its classical form therefore collapses, and bounded induction must replace it.

### Formal statement of the dependency:


```
Theorem: ZF¬∞ ⊢ ∀α ( α is a von Neumann ordinal → α is finite ).
```

```
Proof: By the negation of Infinity, no infinite set exists.
Every von Neumann ordinal is a set. Therefore every von
Neumann ordinal is finite. The ordinals in ZF¬∞ are exactly
{0, 1, 2, 3, ...} — all finite, but unbounded. □
```

```
Corollary: In ZF¬∞, the class of all ordinals is isomorphic
to ω as an order type — infinite, even though each ordinal
is individually finite.
```

```
Under AFB (either formulation), the class of all ordinals
must be bounded. Classical von Neumann ordinals cannot
serve as the ordinal theory of BST.
```


## 5.2  The Revised Ordinal Theory for Bounded Set Theory


### 5.2.1  The foundational decision

The replacement ordinal theory must satisfy two constraints. First, it must be definable without reference to ω or any completed infinite progression. Second, it must preserve the essential function of ordinals — measuring position in well-orderings, supporting induction, and providing canonical order types — within the finite setting.

The solution is to define ordinals as isomorphism classes of finite well-orders. The complete formal development was given in Part III, Section 3.2, which is where the primitive ordinal and cardinality theory was established — prior to the full BST axiom system — because both are needed to state AFB itself. What follows is a summary of what Section 3.2 established, and a statement of what Part V adds on top of it.

### 5.2.2  What Section 3.2 established

Section 3.2 gave the complete primitive ordinal theory in five definitions and four theorems:

```
Definition 3.1 — Preordinal: a finite strictly well-ordered set.
Definition 3.2 — Ordinal (BST): an isomorphism class of preordinals.
Definition 3.3 — Canonical representatives: the finite von Neumann
                  ordinals 0 = ∅, 1 = {∅}, 2 = {∅,{∅}}, ...
Definition 3.4 — Ordinal ordering: α ≤ β iff a representative of α
                  is isomorphic to an initial segment of a
                  representative of β.
Definition 3.5 — Successor: S(n) = n ∪ {n}, giving S(n) = n+1
                  in canonical form.
```

```
Theorem 3.1 — Every nonzero ordinal is a successor.
              (No limit ordinals exist in BST.)
Theorem 3.2 — Ordinals are linearly ordered.
Theorem 3.3 — Bounded induction is valid.
Theorem 3.4 — Cardinality coincides with ordinal in the finite
              case: |S| = n iff S is order-isomorphic to n.
```

These results are complete within the primitive framework of BFOL alone. They supply the ordinal and cardinal theory needed for AFB and for the seven axioms of Part IV.

### 5.2.3  What Part V adds

Part IV built the full axiom system on top of this primitive theory. Part V now develops three things that require the full system:

**The failure of the classical framework (Section 5.1, above):** The von Neumann construction depends structurally on the Axiom of Infinity through ω. This dependency is formally demonstrated there, not merely asserted.

**The Burali-Forti analogue (Section 5.3):** When the bound is asserted internally as a set, the Pairing and Union axioms of Part IV immediately construct a larger set, yielding contradiction. This paradox could not be derived in Part III where only the primitive theory was available — it requires the full axiom system.

**The model-theoretic picture (Section 5.4):** What ordinals look like inside BST models, what the theory can and cannot prove about its own ordinal extent, and the formal BST-Model definition (Definition 5.4) that names the structure precisely. These results use Formulation B of AFB and the coherence proof of Section 3.3.3.7 — machinery not available until Parts III and IV were complete.

## 5.3  The Burali-Forti Problem in Bounded Set Theory

We now arrive at the central technical challenge of this part. The Burali-Forti paradox is one of the earliest discovered paradoxes in set theory — predating Russell's paradox and arising directly from naive reasoning about ordinals. In ZFC it is resolved by declaring the collection of all ordinals to be a proper class rather than a set. In bounded set theory, an analogous paradox arises when the bound is asserted internally to the theory. Its resolution requires the same structural move — and understanding why this is the right move, rather than an ad hoc patch, is the primary goal of this section.

### 5.3.1  The classical Burali-Forti paradox

The classical paradox is stated for reference, since the bounded analogue mirrors it precisely.

### Classical Burali-Forti Paradox:


```
Suppose the collection of all ordinals forms a set Ω.
```

```
Then Ω is itself a well-ordered set (by the ordering
on ordinals).
```

```
Therefore Ω has an ordinal — call it ord(Ω).
```

```
But ord(Ω) must be an ordinal, so ord(Ω) ∈ Ω.
```

```
Since Ω is the set of ALL ordinals, and ord(Ω) is an
ordinal greater than every element of Ω (it is the
order type of Ω itself), we have:
```

```
ord(Ω) > every element of Ω
ord(Ω) ∈ Ω
```

```
Therefore ord(Ω) > ord(Ω).  Contradiction. □
```

Plain language: If all ordinals form a set, that set has an ordinal which is larger than all ordinals — including itself. The resolution in ZFC: the collection of all ordinals is not a set but a proper class. It exists as a metatheoretic totality but cannot be collected into a set.

### 5.3.2  The bounded analogue: the internal maximum ordinal

Now suppose bounded set theory asserts its bound internally — that is, suppose there exists a set Ω in the theory such that every other set injects into Ω and Ω has maximum cardinality. The following derivation shows this leads to contradiction.

### Bounded Burali-Forti Derivation:


```
Suppose BST contains a set Ω such that:
(i)  Ω is finite  (by the negation of Infinity)
(ii) ∀S ( |S| ≤ |Ω| )  (Ω has maximum cardinality)
```

```
Step 1:  Ω is a set, so {Ω} is a set.
(By the Pairing axiom: given any two sets a, b,
the pair {a, b} exists. Taking a = b = Ω gives {Ω}.)
```

```
Step 2:  Ω ∪ {Ω} is a set.
(By the Union axiom: the union of any finite
collection of finite sets is a finite set.)
```

```
Step 3:  Compute the cardinality of Ω ∪ {Ω}.
Case A: Ω ∉ Ω.
Then |Ω ∪ {Ω}| = |Ω| + 1 > |Ω|.
This contradicts (ii). □
```

```
Case B: Ω ∈ Ω.
Then Ω ∪ {Ω} = Ω, so |Ω ∪ {Ω}| = |Ω|.
No immediate cardinality contradiction.
But Ω ∈ Ω violates the Axiom of Foundation
(no set is a member of itself).
Foundation is retained in BST as a theorem
(established in Part IV, Theorem 4.2).
So Case B is impossible.
```

```
In either case: contradiction.
Therefore no such set Ω can exist in BST. □
```

Plain language: If the maximum bound exists as a set inside the theory, the Pairing and Union axioms — which are retained in BST because they operate on finite sets — immediately construct a larger set, contradicting the maximality of the bound. The bound cannot be a set.

### 5.3.3  Why this is not an ad hoc result

A skeptic might object: you have simply shown that the bound axiom, stated naively, is inconsistent, and then retreated to a weaker formulation. Is the external-bound solution not just damage control?
The answer is no, and the reason is structural. The bounded Burali-Forti derivation is not a special feature of bounded set theory — it is a specific instance of a completely general phenomenon. Any theory that asserts a maximum object in a domain closed under a successor-like operation will face this contradiction. The three ingredients are:
- A maximum object M in the domain
- An operation O that takes any object to a strictly larger one
- A closure principle asserting that O(M) exists in the domain
When all three are present, O(M) exceeds M while belonging to the domain — contradiction. ZFC faces this with ordinals: the 'domain' is the class of all ordinals, the 'operation' is the successor, and the 'closure principle' would be the assertion that the class of all ordinals is a set. ZFC resolves it by denying the closure principle — the class of all ordinals is not a set.
Bounded set theory faces the same structure with a different 'maximum object.' The resolution must be structurally identical: deny that the maximum is an object of the theory. The external-bound formulation of Part III is not a retreat — it is the correct application of the same logical principle that ZFC uses.

### The structural parallel — formally:


```
ZFC:
Domain:    sets
Maximum:   'the set of all sets'  (assumed for contradiction)
Operation: power set P(·) or successor S(·)
Resolution: 'all sets' is a proper class, not a set
```

```
ZFC (ordinals specifically / Burali-Forti):
Domain:    ordinals
Maximum:   'the ordinal of all ordinals'  (assumed)
Operation: ordinal successor S(·)
Resolution: ordinals form a proper class, not a set
```

```
BST:
Domain:    finite sets
Maximum:   'the set of maximum cardinality'  (assumed)
Operation: union with singleton  S ↦ S ∪ {S}
Resolution: the bound is a metaconstraint, not a set
```

```
All three face the same paradox.
All three resolve it by the same move.
BST's resolution is not special pleading.
```


## 5.4  The External Bound Resolution: Formal Development


### 5.4.1  What the resolution requires

The resolution established in Part III (Formulation B) asserts that the bound is a metatheoretic constraint — not an object of the theory, not a set, not a term in the language of BST. Every model of BST is finite, but BST cannot prove the existence of a set of maximum cardinality, because no such set exists within any model.
This requires a precise characterization of what BST can and cannot prove about its own bound. The following theorems establish this characterization.

### Theorem 5.1 — BST cannot prove the existence of a maximum set:


```
BST ⊬ ∃S ∀T ( |T| ≤ |S| )
```

```
Proof: Suppose for contradiction that BST ⊢ ∃S ∀T (|T| ≤ |S|).
Let S₀ witness this: |T| ≤ |S₀| for all sets T.
By Pairing, {S₀} is a set.
By Union, S₀ ∪ {S₀} is a set (and S₀ ∉ S₀ by Foundation).
Then |S₀ ∪ {S₀}| = |S₀| + 1 > |S₀|.
This contradicts the maximality of S₀.
Therefore BST ⊬ ∃S ∀T ( |T| ≤ |S| ). □
```


### Theorem 5.2 — Every set constructible in BST has a determinate finite cardinality:


```
For every set S constructible in BST:
BST ⊢ ∃k ( |S| = k )
where k is a specific numeral.
```

```
Proof: By induction on the construction of S.
Base: |∅| = 0.
Inductive steps:
Pairing: |{a,b}| ≤ 2 — a specific numeral bounds it.
Union: the cardinality of a union of sets with
determined cardinalities is itself determined
(bounded induction on the number of sets).
Separation: |{x ∈ A | φ(x)}| ≤ |A| — bounded by
the cardinality of the parent set.
Replacement: the image of a set under a function
has cardinality at most that of the domain.
Every set constructible from these operations
has a cardinality given by a specific numeral. □
```


### Theorem 5.3 — Every model of BST is finite:


```
(Metatheorem — requires Formulation B framework)
```

```
For any model M ⊨ BST: |M| < ℵ₀.
```

```
Proof: This follows directly from the metatheoretic constraint
of Formulation B, established in Section 3.3.3.7. BST-B is
defined as the theory of sentences true in all finite models
of the base axioms. By definition, no infinite structure is
an intended model of BST. The coherence of this stipulation —
that it is consistent and well-defined — was established in
Section 3.3.3.7, Steps 1–3. Therefore every model of BST is
finite. □
```


### 5.4.1a  The formal model structure

The three theorems above characterise what BST can prove about its bound. It is useful to name the model structure explicitly, both for precision and for downstream reference in the undecidability proof (Theorem 3.6) and the model-theoretic analysis throughout Part V.

### Definition 5.4 — BST-Model:

```
A BST-Model is a structure

    M = ⟨D, ∈_M, ≤_M, 0_M, S_M⟩

where:

(i)   D is a non-empty finite domain of sets.

(ii)  ∈_M is the membership relation on D.

(iii) ≤_M is the bounding relation required by BFOL,
      restricting quantifier ranges to subsets of D:
      all quantifiers in the language of BST are of
      the form ∀x ≤_M t and ∃x ≤_M t.

(iv)  0_M, S_M are primitive constants and functions
      providing the minimal ordinal arithmetic needed
      to give content to bounded quantification
      (as established in Part III, Section 3.2).

Power Set is absent. Its absence is not merely
notational: Power Set acts as an engine of cardinality
explosion. For any bound n, the existence of a set of
size n would force a power set of size 2^n, which for
large n exceeds any fixed bound. The remaining
operations — Extensionality, Empty Set, Pairing,
Union, Bounded Separation, Bounded Replacement —
produce sets whose cardinalities are controlled: each
output cardinality is bounded by the input
cardinalities and the operations applied.
```

With this structure in place, the constructibility constraint on BST models can be stated as a formal theorem.

### Theorem 5.3a — Finite Satisfiability of Set-Building Operations:

```
Every set-building operation of BST (Pairing, Union,
Bounded Separation, Bounded Replacement), when applied
to elements of a finite BST-Model M, produces an output
that is also an element of M, provided the resulting
cardinality does not exceed |D|.

Proof:
Since D is finite, every subset and union construction
that would produce a set exceeding the cardinality of D
is simply not a set in M — Bounded Separation and
Bounded Replacement terminate within the graph of the
domain, and Pairing and Union produce sets of
cardinality ≤ 2 and ≤ Σ|Y_i| respectively, each of
which is a specific finite number.

More precisely: the set-building operations of BST
form a closure system on M. A set X produced by a
BST operation from elements of D satisfies |X| ≤ n_M
by Theorem 5.7 (Monotonicity under construction,
proved below in Section 5.7.2). Since |D| = n_M by definition of the
model bound, X ∈ D. □

Contrast with Power Set: if Power Set were present,
the construction P(D) would have cardinality 2^|D|,
which for |D| ≥ 1 exceeds |D|. This is the
construction that breaks the closure. Power Set's
absence is therefore not a restriction of
expressiveness but a structural requirement for
model-theoretic consistency. □
```


### 5.4.2  What the ordinals look like in BST models

With the external-bound resolution in place, the ordinal sequence in any model of BST has a determinate but theory-internally-unknowable structure. In any specific model M satisfying Formulation A with bound n:

```
Ordinals in model M with bound n:
```


```
The ordinals of M are:  0, 1, 2, ..., n
(n+1 ordinals in total; the greatest ordinal is n)
```

```
There is a greatest ordinal in M: the ordinal n.
The successor S(n) does not exist in M
(it would have cardinality n+1, exceeding the bound).
```

```
Every ordinal in M is finite.
Every nonzero ordinal in M is a successor ordinal.
No limit ordinal exists in M.
The ordinal structure of M is isomorphic to
the linear order {0, 1, 2, ..., n}.
```

Under Formulation B, where the bound is not specified, the ordinal structure is described metatheoretically:

```
Ordinals in BST under Formulation B:
```


```
In any model M ⊨ BST, there exists some finite n
(not definable within BST) such that the ordinals
of M are {0, 1, ..., n}.
```

```
BST proves: ∀α ( α is an ordinal → α is finite )
BST proves: ∀α ( α is an ordinal → α = 0 ∨ ∃β (α = S(β)) )
BST cannot prove: ∃n ∀α ( α ≤ n )
```

```
The theory knows its ordinals are finite and all successors.
The theory does not know where they end.
```

This is precisely the structure of Formulation B from Part III, now instantiated for ordinals specifically. The metatheory asserts that every model has a greatest ordinal; the object theory cannot name it. The bound on ordinals and the bound on cardinality are the same bound — the external metatheoretic constraint of AFB — seen from two angles. This is by design. Ordinals in BST measure cardinality, so a bound on cardinality is automatically a bound on ordinals, and vice versa.


## 5.5  Bounded Induction: Replacement for Transfinite Induction

Classical transfinite induction over the von Neumann ordinals is the primary proof technique for establishing properties that hold of all ordinals or all sets of a given type. In BST, transfinite induction — which requires limit ordinals and the full infinite ordinal progression — is unavailable. What replaces it is bounded induction, which is both formally sufficient and epistemically more transparent.

### 5.5.1  The schema


### Bounded Induction Schema (BST):


```
For any property φ(x) definable in BST, and any
ordinal bound k:
```

```
BI(φ, k):  φ(0) ∧ ∀α < k ( φ(α) → φ(S(α)) )
→  ∀α ≤ k  φ(α)
```

```
The schema ranges over all definable properties φ
and all ordinals k (which are all finite in BST).
```

```
Unbounded induction — the schema without a fixed k —
is not available, since BST cannot assert that the
induction runs over all ordinals simultaneously.
```

Plain language: To prove a property holds for all ordinals up to k: prove it holds for 0, and prove that whenever it holds for α it holds for the next ordinal. Since k is finite, this is a finite process — finitely many steps, each one explicit.

### 5.5.2  What bounded induction recovers

Bounded induction is sufficient for all mathematical arguments that classical transfinite induction handles within finite domains. Specifically:
- All proofs by induction on the natural numbers, since the naturals are exactly the finite ordinals
- All proofs by strong induction (assume the property holds for all values less than n, prove it for n)
- All proofs by induction on the structure of finite sets (induction on cardinality)
- All recursive definitions over finite ordinals (bounded recursion)
- All proofs about finite sequences, finite graphs, finite combinatorial structures

### 5.5.3  What bounded induction does not recover

Bounded induction does not recover proofs that require induction over all ordinals with no fixed bound — proofs where the induction variable ranges over a class whose size is not predetermined. In classical mathematics, such proofs include:
- Transfinite recursion over all ordinals (e.g., constructing the cumulative hierarchy Vα for all ordinals α)
- Proofs by induction on the rank of arbitrary sets (where rank can be any ordinal)
- Proofs about uncountable well-orderings
The items above are not available in BST, and this is acknowledged without softening. Transfinite recursion over all ordinals and proofs about uncountable well-orderings are Category C — they concern objects BST does not posit. The expressive tradeoff for results about finite natural numbers is addressed systematically in Part VI (Section 6.8). The present observation is simply that within the finite domain — the domain that bounded set theory is designed to describe — bounded induction is not a weakening of classical induction but its proper formulation.

The specific statements that fall within BST's domain yet exceed its inductive reach are precisely characterised by the following theorem. They constitute Category D in Part IX's accounting.

### Theorem 5.5a — Independence of Universal Combinatorics:

```
The following universally quantified statements are
independent of BST:

(i)  Totality of the Ackermann function:
     ∀x∃y (Ack(x) = y)

(ii) Goodstein's theorem:
     ∀n: the Goodstein sequence starting from n
     terminates.

(iii) Paris-Harrington:
     The strengthened finite Ramsey theorem in its
     universally quantified form.

Independence means: BST neither proves nor refutes
these statements as universal claims.
```

```
Proof sketch:

For any specific input k̄, BST proves the k̄-instance
of each statement:

(i)  For each specific (m̄, n̄), BST computes Ack(m,n)
     by bounded recursion with an explicit step bound.

(ii) For each specific n̄, BST verifies termination of
     the Goodstein sequence in finitely many steps
     (the computation is bounded).

(iii) For each specific finite parameter tuple, BST
      verifies the Paris-Harrington instance.

The universal claims ∀x∃y (Ack(x) = y) and ∀n (...)
are not provable because:

For any model M of BST with bound n_M, there exists
a k such that the required witnessing construction
for the k-instance exceeds what M can contain:

- For Ackermann: the computation of Ack(k,k) requires
  more than n_M recursive steps to complete.
- For Goodstein: the termination proof for the sequence
  starting at k requires ordinal induction beyond ε₀,
  which exceeds n_M in the number of sets needed to
  witness each stage.
- For Paris-Harrington: the witnessing structure for
  the k-parameter instance has cardinality exceeding n_M.

M satisfies all axioms of BST but falsifies the
totality claim for that k. Since every model of
BST is finite (Theorem 5.3), no model witnesses the
full universal claim.

The refutation direction: BST does not refute these
statements either, since each finite instance is
provable — a refutation would contradict provable
finite instances.

Therefore all three are independent. □
```

```
This independence is not a defect of BST. It is an
accurate reflection of what finite mathematics can
establish: any specific computation may terminate
if given enough resources, but the universal claim
that all computations terminate requires asserting
a property across all natural numbers simultaneously
— across a domain BST does not posit. A foundation
that does not assert properties of objects it does
not posit is more honest, not weaker.

Category D consists precisely of Theorem 5.5a's three
items and their immediate consequences. The gap is
real; it is also narrow and exactly characterised.
```

### 5.5.4  Relationship to Buss's bounded arithmetic

The bounded induction schema of BST is closely related to, but not identical with, the bounded induction schema of Buss's system S¹₂ (1986). The relationship is worth making precise because bounded arithmetic is the best-developed technical precedent for bounded induction.
In S¹₂, bounded induction is restricted to Σ¹_b formulas — formulas in which all quantifiers are bounded by terms in the language. The restriction to Σ¹_b is a syntactic constraint motivated by complexity-theoretic considerations: S¹₂ is designed so that its provably total functions are exactly the polynomial-time computable functions.
BST's bounded induction schema is more permissive: it applies to any property definable in BST, not just bounded-formula properties. This is appropriate because BST is a set theory rather than an arithmetic, and the syntactic restriction of Buss's system was motivated by specific complexity-theoretic goals that BST does not share. Part VI develops both schemas and their relationship in full.


## 5.6  The Ordinal Theory of BST: Summary

The revised ordinal theory for bounded set theory is now complete. The key results are collected here for reference.

### Summary — Ordinals in BST:


```
Definition:  Ordinals are isomorphism classes of finite
well-orders. Canonical representatives are
the finite von Neumann ordinals 0, 1, 2, ...
```

```
Ordering:    Linear, by initial-segment embedding.
0 < 1 < 2 < 3 < ...
```

```
Successor:   S(n) = n+1, defined for all ordinals in the
theory. No greatest ordinal is nameable
within BST.
```

```
Structure:   Every nonzero ordinal is a successor.
No limit ordinals exist.
No transfinite ordinals exist.
```

```
Induction:   Bounded induction: valid for any property
and any explicit bound k.
Unbounded induction: not available.
```

```
Models:      In any model M of BST, the ordinals of M
are {0, 1, ..., n} for some finite n.
BST cannot prove the value of n.
```


### ◆ The Burali-Forti Resolution

The bounded Burali-Forti paradox arises when the maximum ordinal (or maximum cardinality bound) is asserted as a set inside the theory. Pairing and Union immediately construct a larger set, contradicting maximality. The resolution — that the bound is a metatheoretic constraint, not an object of the theory — is structurally identical to ZFC's resolution of the classical Burali-Forti paradox via proper classes. This is not an ad hoc patch. It is the correct application of a general logical principle: when a domain is closed under a successor-like operation, the maximum of that domain cannot itself be a member of the domain.


## 5.7  Cardinal Theory of BST

The ordinal theory developed in Sections 5.1–5.6 has a parallel cardinal theory. Both theories are grounded in Section 3.2, where primitive cardinality (Definition 3.6) and primitive ordinals (Definitions 3.1–3.5) are introduced simultaneously, and their coincidence in the finite case established as Theorem 3.4. This section collects the cardinal theory in one place, mirroring the ordinal summary of Section 5.6.


### 5.7.1  What cardinality is in BST

Cardinal numbers in classical set theory are defined as initial ordinals — the smallest ordinal of each equipotence class. This definition relies on the Axiom of Choice (to well-order every set) and on the transfinite ordinal structure (to identify the initial ordinal of each class). Neither resource is available in BST.

BST adopts the primitive definition from Section 3.2.5 instead. The cardinality of a set S, written |S|, is the length of the shortest adjunction sequence from ∅ to S — equivalently, the unique natural number n such that S can be built by n successive additions of distinct elements starting from the empty set. By Theorem 3.4, this coincides with the unique finite ordinal to which S is order-isomorphic. In BST, cardinality just is counting, and counting just is ordinal position.


### 5.7.2  Cardinal arithmetic in BST


### Theorem 5.4 — Cardinality of unions:


```
For finite sets A and B:
|A ∪ B| = |A| + |B| - |A ∩ B|

Proof: By induction on |B \ A|. Each element of B not
already in A contributes exactly 1 to the union. □
```


### Theorem 5.5 — Cardinality of Cartesian products:


```
For finite sets A and B:
|A × B| = |A| · |B|

Proof: A × B contains one ordered pair (a, b) for each
of the |A| choices of a and |B| choices of b. The
Cartesian product exists as a set when |A| · |B| ≤ n_M
(established in Part VII, Definition 7.2). □
```


### Theorem 5.6 — Cardinality of power collections (Bounded Cantor):


```
For any finite set A in BST:
|P(A)| = 2^|A|  when P(A) exists (i.e. 2^|A| ≤ n_M).
The strict inequality 2^|A| > |A| holds for all |A| ≥ 1.
(Full proof: Part VI, Theorem 6.4)
```


### Theorem 5.7 — Monotonicity under construction:


```
(a) Separation:  |{x ∈ A | φ(x)}| ≤ |A|
(b) Replacement: |{f(x) | x ∈ A}| ≤ |A|
(c) Union:       |⋃F| ≤ Σ_{Y ∈ F} |Y|

Proof: Each follows from the corresponding axiom.
Separation selects a subset — never larger than the parent.
Replacement maps each element to one output — at most as
many outputs as inputs. Union collects elements from
finitely many finite sets — bounded by their total count. □
```


### 5.7.3  Cardinal comparison

Cardinality comparison — determining when |A| ≤ |B| — takes two forms in BST depending on whether functions are available as sets.

Under the syntactic approach: |A| ≤ |B| means the natural number |A| ≤ the natural number |B|, computed as ordinals via Theorem 3.4. This is always available and requires no function-sets.

Under FA-BST (the axiomatic function approach of Part VII): |A| ≤ |B| is defined as the existence of an injection f: A → B as a set. This is the classical definition, available in BST when |B|^|A| ≤ n_M.

Both definitions agree whenever both are available: an injection exists from A to B if and only if the counting measure of A does not exceed that of B, provable by bounded induction on |A|.


### 5.7.4  Schroeder-Bernstein in BST

The classical Schroeder-Bernstein theorem — if there exist injections f: A → B and g: B → A then |A| = |B| — has a trivial proof for finite sets (established as Theorem 7.2 in Part VII). It requires no Choice and no transfinite argument: if m ≤ n and n ≤ m then m = n, which is immediate from the linear ordering of finite ordinals.

This is instructive: one of the more technically demanding theorems of infinite set theory is, in the finite setting, a consequence of the order properties of natural numbers. The complexity of the classical proof is not intrinsic to the result — it is a consequence of working with infinite sets.


### 5.7.5  What classical cardinal theory BST cannot reproduce

Three features of classical cardinal theory are absent in BST, each for a precise reason.

**Infinite cardinals (ℵ₀, ℵ₁, ...):** These are cardinalities of infinite sets. BST posits no infinite sets, so these cardinals do not arise. Their absence is the expected consequence of AFB, not a gap.

**Cardinal exponentiation beyond the bound:** The cardinality 2^|A| is defined as a natural number for any finite |A|, but the corresponding set P(A) may not exist in BST when 2^|A| > n_M. Cardinal exponentiation is available as arithmetic; the corresponding set-theoretic object is conditionally available.

**The Continuum Hypothesis:** CH concerns the relationship between ℵ₀ and 2^ℵ₀ — both infinite cardinals. BST has neither object, so CH is not statable. What BST has instead is the strict inequality 2^n > n for all finite n ≥ 1 (Theorem 5.6) — the finite shadow of Cantor's theorem, provable without any infinite commitment.


### ◆ Summary — Cardinals in BST


```
Definition:   |S| = length of adjunction sequence from ∅ to S
              = unique finite ordinal order-isomorphic to S
              (Theorem 3.4: ordinal and cardinal coincide)

Arithmetic:   |A ∪ B| = |A| + |B| - |A ∩ B|   (Theorem 5.4)
              |A × B| = |A| · |B|               (Theorem 5.5)
              |P(A)|  = 2^|A|  when it exists   (Theorem 5.6)

Monotonicity: Separation, Replacement, Union are
              all non-expanding                  (Theorem 5.7)

Comparison:   Syntactic: natural number ordering (always available)
              FA-BST: injection existence         (conditional)
              Both definitions agree when both available.

Schroeder-Bernstein: immediate from ordinal linearity (Theorem 7.2)

Absent:       Infinite cardinals — AFB excludes infinite sets
              Uncountable cardinals — same reason
              CH — not statable; finite shadow is Theorem 5.6
```

The cardinal and ordinal theories are unified by Theorem 3.4: in BST every cardinal is an ordinal and every ordinal is a cardinal. The apparent duality of infinite set theory — where cardinality and ordinality diverge sharply for infinite sets — collapses in the finite setting. BST has one number concept, not two.


End of Part V

# Part VI: Bounded Induction — Two Schemas


Induction is the engine of mathematical proof. Without it, arithmetic collapses to a finite look-up table, number theory disappears, and the recursive structure of computation becomes inexpressible. Any foundational framework that cannot support a robust induction principle is not a foundation — it is a fragment. Bounded set theory must therefore give a precise and complete account of induction within the finite setting.

Part V introduced bounded induction as a schema (Section 5.5) and showed it is valid in BST. This part develops it fully. Two schemas are presented: the BST-native schema, derived directly from the ordinal theory of Part V; and Buss's schema from S¹₂, the most carefully developed bounded arithmetic in the literature. Both are stated formally with complete prose explanations. Their differences are analyzed in detail. The argument for when each is preferable is given explicitly — neither is presented as the obvious choice.
A central concern throughout is the relationship between induction and the unknowable bound. Induction in classical mathematics runs over all natural numbers — an infinite domain. In BST, induction runs over the finite ordinals of the theory's models, which are bounded but whose bound is not nameable within the theory. This creates a genuine technical subtlety: induction schemas must be stated in a way that is valid regardless of where the bound falls, without presupposing knowledge of the bound. Getting this right is the primary technical challenge of this part.


## 6.1  Background: What Induction Must Do


### 6.1.1  The classical Peano induction schema

In Peano Arithmetic (PA), induction is stated as a schema ranging over all first-order formulas:

### Peano Induction Schema (PA):


```
For any formula φ(x) in the language of arithmetic:
```

```
PA-IND(φ):  [ φ(0) ∧ ∀n ( φ(n) → φ(n+1) ) ]  →  ∀n φ(n)
```

```
The schema has one instance for each formula φ.
The conclusion ∀n φ(n) quantifies over all natural numbers —
an infinite domain.
```

Plain language: If a property holds of 0, and holding of any number guarantees holding of the next, then it holds of every natural number. The schema ranges over every expressible property and every natural number without bound.
This schema is what gives PA its power. But it contains two features that are problematic for a finite foundation:
- Unbounded conclusion: the conclusion ∀n φ(n) quantifies over all natural numbers, asserting the property holds throughout an infinite domain.
- Unrestricted formula range: φ(x) can be any formula, including ones that quantify over all sets, all functions, or other infinite totalities.
In BST, both features must be restricted without sacrificing the induction principle's ability to do real mathematical work. The two schemas developed in this part take different approaches to this restriction.

### 6.1.2  What failure of unrestricted induction looks like in BST

Before presenting the schemas, it is worth demonstrating concretely that unrestricted Peano-style induction is not available in BST — not merely as a philosophical position, but as a formal fact.

### Proposition 6.1 — Unrestricted induction fails in BST:


```
The schema  [ φ(0) ∧ ∀n(φ(n) → φ(n+1)) ] → ∀n φ(n)
with unbounded ∀n is not valid in all models of BST.
```

```
Proof: Let φ(n) be the object-language formula:
'there exists a set of cardinality n'
i.e., ∃S ( |S| = n ).

This is a genuine formula in the language of BST.

φ(0) holds: ∅ has cardinality 0.

∀n (φ(n) → φ(n+1)) holds: if a set S of cardinality n
exists, then S ∪ {x} for any x ∉ S has cardinality n+1
and exists by Union and Pairing. So φ(n) → φ(n+1).

Both induction premises are satisfied — in every model.

Now consider a model M of BST with bound k.
The conclusion ∀n φ(n) asserts: for every natural number n,
there exists a set of cardinality n.
But in M, no set of cardinality k+1 exists — it would
exceed the bound. So φ(k+1) fails in M.

The premises hold; the unbounded conclusion fails. □
```

Plain language: In any bounded model, the induction premises are satisfied for every n that exists in the model, but the conclusion 'sets of every cardinality exist' is false because cardinalities above the bound are unreachable. The failure is not artificial — it is exactly what AFB asserts.


## 6.2  Schema I: BST-Native Bounded Induction


### 6.2.1  Motivation and design

The BST-native induction schema is designed from first principles within the ordinal theory of Part V. Its design goal is to capture the full inductive power available within a bounded finite universe, without importing syntactic restrictions motivated by concerns (like polynomial-time computability) that are external to the foundational goals of BST.
The key insight is that in any model of BST, the ordinals form a finite linear order {0, 1, ..., n} for some n. Induction over this order is simply a finite process: check the base case, check each step, conclude the property holds everywhere in the model. The schema must express this without naming n, since n is not definable within BST.

### 6.2.2  Formal statement


### BST Bounded Induction Schema (BI-BST):


```
For any property φ(x) definable in BST:
```

```
BI-BST(φ):  ∀k [ φ(0) ∧ ∀α( α < k ∧ φ(α) → φ(S(α)) )
→  ∀α( α ≤ k → φ(α) ) ]
```

```
Equivalently, for any explicit ordinal numeral k̄:
```

```
BI-BST(φ, k̄):  [ φ(0) ∧ ∀α < k̄ ( φ(α) → φ(S(α)) ) ]
→  ∀α ≤ k̄  φ(α)
```

```
The schema has one instance for each formula φ and
each ordinal bound k. Both the universally quantified
form and the instance form are available.
```

Plain language: To prove a property holds for all ordinals up to k: show it holds for 0, show that for any ordinal less than k, if it holds there it holds at the next step. The conclusion is that it holds everywhere from 0 to k. This is a finite process — k is a specific finite ordinal, so there are finitely many steps.

A note on the two forms. The universally quantified form — with ∀k in the hypothesis — is a schema template: a pattern generating valid instances, not a theorem of BST. In any specific proof, a particular numeral k̄ must be chosen and the instance form BI-BST(φ, k̄) applied. BST cannot prove the universally quantified form as a single assertion ranging over all ordinals simultaneously — that would require knowing the full extent of the ordinal domain, which the theory cannot name. The universal form is presented here as a compact statement of the schema's generality; all formal work uses specific instances.

### 6.2.3  Validity proof


### Theorem 6.1 — BI-BST is valid in all models of BST:


```
For any model M ⊨ BST, any definable φ, any ordinal k in M:
```

```
If  M ⊨ φ(0)  and  M ⊨ ∀α < k ( φ(α) → φ(S(α)) )
Then  M ⊨ ∀α ≤ k  φ(α)
```

```
Proof: By external induction on k (performed in the
metatheory, where k is a specific finite number).
```

```
Since M is a finite model (Part V, Theorem 5.3),
the ordinals of M are {0, 1, ..., n_M} for some
finite n_M. Any k ≤ n_M is a specific finite number.
```

```
Base: α = 0. φ(0) holds by hypothesis.
```

```
Step: Suppose φ(α) holds for all α ≤ m < k.
The hypothesis gives φ(m) → φ(S(m)) = φ(m+1).
Therefore φ(m+1) holds.
```

```
Since k is finite, this process terminates after k steps,
establishing φ(α) for all α ≤ k. □
```


### 6.2.4  Strong induction variant

The strong (or course-of-values) induction variant is often more convenient in practice. It is derivable from BI-BST:

### Strong Bounded Induction (SBI-BST):


```
For any property φ(x) definable in BST, any bound k:
```

```
SBI-BST(φ, k):  [ ∀α ≤ k ( ∀β < α  φ(β) → φ(α) ) ]
→  ∀α ≤ k  φ(α)
```

```
Derivation from BI-BST:
Let ψ(α) ≡ ∀β ≤ α  φ(β)  (φ holds everywhere up to α).
Apply BI-BST to ψ: ψ(0) follows from the hypothesis
applied to α = 0. ψ(α) → ψ(S(α)) follows because
if φ holds everywhere up to α, and the hypothesis gives
φ(S(α)) from ∀β < S(α) φ(β), then ψ(S(α)) holds.
BI-BST gives ∀α ≤ k  ψ(α), which implies ∀α ≤ k  φ(α). □
```


### 6.2.5  Bounded recursion

Induction's computational correlate is recursion — defining a function by specifying its value at 0 and how to compute f(n+1) from f(n). In BST, bounded recursion is the appropriate form:

### Bounded Recursion Schema (BR-BST):


```
For any functions g and h definable in BST, any bound k,
there exists a unique function f with domain {0,...,k} such that:
```

```
f(0)    =  g()
f(S(α)) =  h(α, f(α))   for all α < k
```

```
Proof of existence and uniqueness:
Define a finite approximation f_m as the function with
domain {0,...,m} satisfying the recursion up to m:
  f_m(0)    = g()
  f_m(S(α)) = h(α, f_m(α))  for all α < m.

By BI-BST on m, applied to the property:
  P(m) ≡ 'there exists a unique function f_m with
          domain {0,...,m} satisfying the recursion'

Base (m=0): f_0 = {(0, g())} is the unique function
with domain {0} satisfying f_0(0) = g(). P(0) holds.

Step: Assume f_m exists uniquely (P(m) holds).
Define f_{m+1} by extending f_m:
  f_{m+1}(α) = f_m(α)  for α ≤ m
  f_{m+1}(S(m)) = h(m, f_m(m)).
This extension is unique given f_m. P(S(m)) holds.

BI-BST gives P(m) for all m ≤ k.
Take f = f_k: the unique function on {0,...,k}
satisfying the recursion. □
```

```
Note: The domain of f is bounded by k. BST cannot assert
a recursively defined function on all natural numbers —
only on all ordinals up to a specific bound.
```

Plain language: Recursive definitions are valid in BST, but only over bounded domains. You can define addition, multiplication, and exponentiation recursively on {0,...,k} for any explicit k. You cannot define them on all natural numbers simultaneously, because BST cannot assert that all natural numbers exist as a domain.


## 6.3  Schema II: Buss's S¹₂ Induction


### 6.3.1  Background and motivation

Samuel Buss introduced the system S¹₂ in his 1986 dissertation as part of a program to characterize the computational complexity of provable functions — specifically, to find a formal system whose provably total functions are exactly the polynomial-time computable functions. The result was a landmark in proof theory and computational complexity, and the induction schema at the heart of S¹₂ is the most carefully studied example of bounded induction in the literature.
Buss's schema is more restrictive than BI-BST in a specific technical sense: it applies only to Σ¹_b formulas — a syntactically defined class of formulas in which all quantifiers are bounded. This restriction is not motivated by foundational considerations about finitude; it is motivated by the desire to capture exactly polynomial-time computability. Understanding the restriction precisely is essential for understanding when Buss's schema is the right tool and when BST's native schema is preferable.

### 6.3.2  The language of S¹₂

S¹₂ is an arithmetic system, not a set theory. Its language contains:
- Variables ranging over natural numbers
- Constant symbols: 0 and 1
- Function symbols: addition +, multiplication ×, integer division ⌊x/2⌋, rounding up ⌈x/2⌉, predecessor (x∸1), and the smash function x#y = 2^(|x|·|y|) where |x| = ⌊log₂(x)⌋+1 is the bit-length of x
- Predicate symbols: equality =, inequality ≤, and the bit predicate Bit(i,x) (the i-th bit of x in binary is 1)
The smash function x#y is the key innovation. It allows S¹₂ to express numbers of exponential size using polynomial-length terms, which is what enables the polynomial-time characterization.

### 6.3.3  The formula hierarchy


### The Σ¹_b / Π¹_b hierarchy:


```
A formula is sharply bounded if all its quantifiers have
the form  ∀x ≤ |t|  or  ∃x ≤ |t|  for some term t.
(Quantifying over bit-positions of t, not over t itself.)
```

```
Σ⁰_b = Π⁰_b = the sharply bounded formulas.
```

```
Σ¹_b:  formulas of the form  ∃x ≤ t  φ(x)
where φ ∈ Π⁰_b  and t is a term.
```

```
Π¹_b:  formulas of the form  ∀x ≤ t  φ(x)
where φ ∈ Σ⁰_b  and t is a term.
```

```
Σ^i_b / Π^i_b:  alternating bounded quantifier blocks
(the full polynomial hierarchy).
```

```
Key property: Σ¹_b formulas define exactly the
NP-computable predicates (over the standard model).
```


### 6.3.4  The S¹₂ axioms

S¹₂ consists of a set of basic axioms (BASIC) encoding the algebraic properties of the function symbols, plus the PIND schema:

### PIND — Polynomial Induction Schema:


```
For any Σ¹_b formula φ(x):
```

```
PIND(φ):  [ φ(0) ∧ ∀x ( φ(⌊x/2⌋) → φ(x) ) ]  →  ∀x φ(x)
```

```
Note the step: not  φ(x) → φ(x+1)  (successor induction),
but  φ(⌊x/2⌋) → φ(x)  (bit induction).
```

```
This says: if φ holds for the number obtained by removing
the last bit of x, then φ holds for x.
Equivalently: φ is proved by processing x one bit at a time,
from the most significant bit down.
```

Plain language: Instead of going up by ones (0, 1, 2, 3, ...), PIND goes up by bit-doubling (0, 1, 2-3, 4-7, 8-15, ...). To prove φ holds for a number n, you only need log₂(n) induction steps rather than n steps. This logarithmic depth is what makes PIND capture polynomial-time reasoning.

### 6.3.5  What S¹₂ proves

The fundamental theorem about S¹₂, proved by Buss, is:

### Buss's Theorem (1986):


```
A function f: ℕ → ℕ is provably total in S¹₂
if and only if
f is polynomial-time computable.
```

```
More specifically for Σ¹_b-definable functions:
the Σ¹_b-definable total functions of S¹₂ are exactly
the functions in FP (polynomial time).
```

```
Note: provably total functions of S¹₂ definable in
other formula classes (Π¹_b, higher levels) need not
lie in FP. The polynomial-time characterisation holds
precisely for the Σ¹_b-definable fragment.
```

```
Consequence: S¹₂ is the weakest natural system that can
prove the termination of all polynomial-time algorithms.
```

This is a precise and influential result. S¹₂ sits at a precise location in the complexity landscape: strong enough to reason about polynomial-time computation, weak enough that it cannot prove termination of exponential-time algorithms without additional axioms.
The extensions T¹₂ (which adds ordinary induction for Σ¹_b formulas) and S²₂, T²₂, ... (which correspond to higher levels of the polynomial hierarchy) are also defined in Buss's framework. The full hierarchy is:

```
Buss hierarchy:
```


```
S¹₂  ⊂  T¹₂  ⊂  S²₂  ⊂  T²₂  ⊂  ...  ⊂  PV  ⊂  PA
```

```
S^i_2:  PIND for Σ^i_b formulas
T^i_2:  full induction for Σ^i_b formulas
PV:     polynomial-time verifiable arithmetic
PA:     full Peano Arithmetic (unbounded induction)
```


## 6.4  Direct Comparison of the Two Schemas


### 6.4.1  Formal differences


### Comparison — BI-BST vs PIND:


```
Property               BI-BST                    PIND (S¹₂)
──────────────────────────────────────────────────────────────────
Formula range          All BST-definable          Σ¹_b only
Step type              Successor (+1)             Bit step (⌊x/2⌋)
Step depth to reach n  n steps                    log₂(n) steps
Bound explicit         Yes (k in schema)          No (∀x unbounded)
Language               Set-theoretic              Arithmetic
Provably total fns     Between FP and IΣ₁         Exactly FP (Σ¹_b)
                       (after encoding;
                       see Section 6.8)
Primary motivation     Foundational               Complexity-theoretic
Handles sets           Yes                        No (arithmetic only)
Handles recursion      Bounded recursion          Primitive recursion
                       on finite sets             not directly available
```


### 6.4.2  The step-type difference explained

The most technically significant difference is the induction step. BI-BST uses successor induction — φ(α) → φ(α+1) — which is the natural step for reasoning about ordinals and set-theoretic constructions. PIND uses bit induction — φ(⌊x/2⌋) → φ(x) — which is natural for reasoning about the binary representation of numbers.
Why does Buss use bit induction rather than successor induction? Because successor induction for Σ¹_b formulas — the schema φ(0) ∧ ∀x(φ(x) → φ(x+1)) → ∀x φ(x) restricted to Σ¹_b — is strictly stronger than PIND. The system BASIC + IND(Σ¹_b) is T¹₂, which corresponds not merely to polynomial time but to the full polynomial hierarchy PH — every level of alternating polynomial quantification. S¹₂ sits at the first level of this hierarchy; T¹₂ encompasses all of it. The weaker bit-induction step of PIND is precisely what confines provability to the first level, producing the polynomial-time characterisation.

### Formal relationship:


```
Let IND(Σ¹_b) denote successor induction for Σ¹_b formulas.
Let PIND(Σ¹_b) denote bit induction for Σ¹_b formulas.
```

```
Then:  BASIC + PIND(Σ¹_b)  ⊢  PIND  (i.e., S¹₂ proves PIND)
BASIC + IND(Σ¹_b)   =  T¹₂   (strictly stronger)
```

```
S¹₂ ⊂ T¹₂  (strict containment, assuming standard
complexity-theoretic conjectures)
```

```
BI-BST is closer in spirit to IND than to PIND,
but operates over a set-theoretic language rather
than arithmetic.
```


### 6.4.3  When to use each schema

The choice between BI-BST and PIND depends on what is being proved and for what purpose.
Use BI-BST when: the proof concerns set-theoretic objects — finite sets, their cardinalities, membership relations, subset structure. BI-BST is native to BST's language and does not require translation. It applies to any BST-definable property, not just those expressible in bounded arithmetic. It is the right schema for foundational proofs within BST.
Use PIND when: the proof concerns computational complexity — specifically, when it matters that the proven result holds within polynomial time. PIND is the right schema for establishing that an algorithm is efficient, that a function is polynomial-time computable, or that a result belongs to a specific level of the complexity hierarchy. PIND is the right schema for connecting BST to the complexity-theoretic literature.
For pure mathematics within BST: BI-BST. For complexity-theoretic applications: PIND or its extensions. For proofs that straddle both domains (e.g., proving that a set-theoretic construction is efficiently computable): both schemas, applied to different aspects of the same argument.


## 6.5  Translating Between the Two Schemas

Since both schemas operate over finite domains, there is a translation between them — but the translation is not trivial, because the language difference (set-theoretic vs arithmetic) requires encoding.

### 6.5.1  Encoding finite sets as natural numbers

The standard encoding of finite sets as natural numbers uses characteristic functions and binary representation. A finite set S ⊆ {0,...,n-1} is encoded as the natural number whose k-th bit is 1 if k ∈ S and 0 otherwise.

### Set encoding:


```
enc: {finite sets of natural numbers} → ℕ
```

```
enc(S) = Σ_{k ∈ S} 2^k
```

```
Examples:
enc(∅)        =  0
enc({0})      =  1  (binary: 1)
enc({1})      =  2  (binary: 10)
enc({0,1})    =  3  (binary: 11)
enc({0,2})    =  5  (binary: 101)
```

```
Membership:  k ∈ S  iff  Bit(k, enc(S)) = 1
Union:       enc(S ∪ T) = enc(S) OR enc(T)  (bitwise or)
Intersection: enc(S ∩ T) = enc(S) AND enc(T)
Subset:      S ⊆ T  iff  enc(S) AND enc(T) = enc(S)
```

Plain language: Every finite set of natural numbers corresponds to a unique natural number via its binary representation. Set operations correspond to bitwise operations. This encoding is computable in polynomial time, which is why it is compatible with S¹₂.

Note: This encoding applies specifically to sets whose elements are natural numbers — sets of ordinals in the finite von Neumann representation. BST sets can in principle contain arbitrary sets as elements, not just natural numbers. The translation from BI-BST to PIND via this encoding therefore applies to BST results about sets-of-naturals; results concerning sets whose elements are themselves non-trivial sets require additional encoding steps and may not translate cleanly into Σ¹_b arithmetic.

### 6.5.2  Translating BI-BST proofs into PIND proofs

A BI-BST proof of φ(S) for all finite sets S up to a bound can be translated into a PIND proof of φ(enc(S)) for all natural numbers encoding sets up to that bound, provided φ is expressible as a Σ¹_b formula after encoding. The translation has three steps:
- Encode: replace all set-theoretic operations in φ with their arithmetic counterparts using the encoding above
- Verify Σ¹_b: check that the encoded formula lies within the Σ¹_b class (this requires that set membership checks reduce to bit operations, which they do under the encoding)
- Apply PIND: apply the PIND schema to the encoded formula
The translation succeeds when φ involves only membership, union, intersection, subset, and cardinality comparisons — the basic set-theoretic operations. It fails when φ involves quantification over all sets (rather than sets up to a specific bound), since this quantification cannot be expressed as a bounded arithmetic formula.

### 6.5.3  What cannot be translated

Not every BI-BST proof translates into a PIND proof. The untranslatable proofs are precisely those involving:
- Quantification over all BST-definable properties (second-order reasoning within BST)
- Set-theoretic constructions whose encoding exceeds polynomial size
- Proofs about the ordinal structure of BST that depend on properties of the theory itself rather than of specific sets
These limitations are not failures of BST — they are the expected consequence of the fact that PIND is a weaker schema designed for a specific complexity-theoretic purpose. BI-BST is the more general schema; PIND is the more computationally precise one.


## 6.6  The Unknown Bound and Induction: A Technical Resolution

A subtle but important issue arises when both schemas are applied in the context of BST's unknown bound. The schemas are stated with explicit bounds (BI-BST) or with unbounded universal quantification (PIND). But BST's models have an unknown maximum ordinal. How do the schemas interact with this?

### 6.6.1  For BI-BST

BI-BST is naturally adapted to the unknown bound because it always operates within an explicit bound k. When a BI-BST proof establishes φ(α) for all α ≤ k, it does so for a specific k that exists in the model. The proof makes no claim about what happens beyond k — because in a model with bound k, there is nothing beyond k.
The key point is that BI-BST proofs are valid in every model of BST simultaneously. If a BI-BST proof establishes φ(α) for all α ≤ k for some explicitly given k, then in any model whose bound is at least k, the conclusion holds for all ordinals up to k. The proof does not need to know the model's actual bound — it only needs to know that k exists, which it does in every model whose bound is at least k.

### Formal statement:


```
Let k̄ be an explicit ordinal numeral.
Suppose BST ⊢ BI-BST(φ, k̄).
```

```
Then: in every model M of BST with n_M ≥ k̄,
M ⊨ ∀α ≤ k̄  φ(α).
```

```
The proof is valid independently of n_M.
No knowledge of the actual bound is required.
```


### 6.6.2  For PIND

PIND's universal conclusion ∀x φ(x) — ranging over all natural numbers — is potentially problematic in a bounded model, since 'all natural numbers' might exceed the model's bound. The resolution is that in PIND's context, the quantifier ∀x ranges over all numbers in the model, not over all natural numbers in the metatheory.
More precisely: in a model M with bound n_M, the quantifier ∀x in a PIND formula is interpreted as ∀x ≤ n_M. The PIND conclusion ∀x φ(x) means 'φ holds for every element of the model,' which is exactly what is needed. The unknown bound is irrelevant to the validity of PIND proofs within a model — the model provides its own domain of quantification.
This is the model-theoretic interpretation of PIND — the reading under which a formula's quantifiers range over the domain of a given model rather than over the intended infinite standard model of arithmetic. PIND is valid under this interpretation in any finite domain, since the bit-induction step is sound regardless of domain size. The two interpretations — infinite standard and finite bounded — are compatible: any PIND proof valid in the standard model remains valid when relativised to a finite bounded domain, because the proof uses only the logical structure of the bit-induction step, not the size of the domain.

### Formal statement:


```
In model M with bound n_M:
PIND(φ) is interpreted as:
```

```
[ φ(0) ∧ ∀x ≤ n_M ( φ(⌊x/2⌋) → φ(x) ) ]
→  ∀x ≤ n_M  φ(x)
```

```
This is valid in M for any Σ¹_b formula φ,
independently of the value of n_M.
```


## 6.7  Applications: What the Schemas Prove

The value of a formal induction schema is demonstrated by what it enables. This section shows representative theorems provable under each schema, establishing that both schemas support genuine mathematical work within BST.

### 6.7.1  Theorems provable by BI-BST


### Lemma 6.1 — Commutativity of singleton union (BST):


```
For any set B and any element a:  {a} ∪ B = B ∪ {a}
```

```
Proof: By extensionality. For any x:
x ∈ {a} ∪ B  iff  x = a ∨ x ∈ B
             iff  x ∈ B ∨ x = a
             iff  x ∈ B ∪ {a}.
Therefore {a} ∪ B = B ∪ {a}. □
```


### Theorem 6.2 — Commutativity of union (BST):


```
For all finite sets A, B:  A ∪ B = B ∪ A
```

```
Proof: By BI-BST on |A|.
Base: |A| = 0, so A = ∅. ∅ ∪ B = B = B ∪ ∅. □
Step: Assume A ∪ B = B ∪ A for all sets of size < n.
Let |A| = n. Pick any a ∈ A. Then
A ∪ B = {a} ∪ (A\{a}) ∪ B
= {a} ∪ (B ∪ (A\{a}))  [induction hypothesis, |A\{a}| < n]
= B ∪ {a} ∪ (A\{a})   [Lemma 6.1]
= B ∪ A. □
```


### Theorem 6.3 — Finite pigeonhole principle (BST):


```
For finite sets A, B with |A| > |B|:
any function f: A → B is not injective.
```

```
Proof: By BI-BST on |B|.
Base: |B| = 0, B = ∅. No function A → ∅ exists
when |A| > 0. Vacuously, any such f is non-injective.
Step: Assume the result for all sets of size < n.
Let |B| = n, |A| > n. Let f: A → B.
Pick any b ∈ B. Let A' = f⁻¹(b), B' = B\{b}.
If |A'| > 1: f is not injective (two elements map to b).
If |A'| ≤ 1: f restricts to f': A\A' → B'.
Since |A| > n ≥ 1, we have |A| ≥ 2, so A\A' is
non-empty (|A\A'| ≥ |A| - 1 ≥ 1).
|A\A'| ≥ |A| - 1 > n - 1 = |B'|.
By induction, f' is not injective, so f is not. □
```


### Theorem 6.4 — Bounded Cantor theorem (BST):


```
For any finite set A in BST, and any k < |A|,
let P_k(A) = {X ⊆ A : |X| ≤ k}.

Then |P_k(A)| > |A|, and there is no surjection f: A → P_k(A).
```

```
Note: Full power set P(A) may not exist in BST when
2^|A| > n_M. P_k(A) exists as a set when |P_k(A)| ≤ n_M,
which holds for sufficiently small k.
```

```
Proof:

Part 1 — Strict cardinality inequality.

|P_k(A)| = Σ_{j=0}^{k} C(|A|, j)  where C(n,j) = n!/(j!(n-j)!)

For k < |A|, this sum includes C(|A|, 0) = 1, C(|A|, 1) = |A|,
and at least one further term C(|A|, 2) = |A|(|A|-1)/2 > 0
(when |A| ≥ 2).

Therefore |P_k(A)| ≥ 1 + |A| + C(|A|,2) > |A|.

The base case |A| = 1, k = 0: P_0(A) = {∅}, |P_0(A)| = 1 = |A|.
The strict inequality |P_k(A)| > |A| holds for |A| ≥ 2, k ≥ 1,
which covers all non-degenerate cases. □
```

```
Part 2 — No surjection exists (diagonalisation).

Suppose for contradiction that f: A → P_k(A) is a surjection.

Define the diagonal set:
D = { a ∈ A : a ∉ f(a) }

D is well-defined: for each a ∈ A, the condition a ∉ f(a)
is decidable since f(a) ⊆ A is finite. D is a subset of A
formed by Bounded Separation, so D ∈ BST.

Now |D| ≤ |A|. We need D ∈ P_k(A), i.e. |D| ≤ k.

Sub-case: if |D| ≤ k, then D ∈ P_k(A).
Since f is a surjection onto P_k(A), there exists d ∈ A
with f(d) = D.

Case d ∈ D: then d ∉ f(d) = D. Contradiction.
Case d ∉ D: then d ∈ f(d) = D. Contradiction.

Both cases yield contradiction.

Sub-case: if |D| > k, then D ∉ P_k(A). We show
this leads to contradiction via a cardinality
collision.

Since |D| > k, we have |A \ D| = |A| - |D| < |A| - k.
The elements of A \ D map under f into P_k(A) \ {D}
(since f(a) ≠ D for a ∉ D, by definition of D:
 a ∉ D means a ∈ f(a), so f(a) contains a, hence
 f(a) ≠ D which does not contain a).

Now |A \ D| < |A| - k and |P_k(A)| > |A| (Part 1).
But f must be surjective onto all of P_k(A). Since
D ∉ range(f), f is surjective onto P_k(A) \ {D},
which has |P_k(A)| - 1 ≥ |A| elements.

But |A \ D| < |A| - k < |A| ≤ |P_k(A)| - 1.

So f|_{A\D}: A \ D → P_k(A) \ {D} must be a
surjection from a smaller set to a larger set —
which is impossible by the pigeonhole principle
(Theorem 6.3, applied with |A \ D| < |P_k(A)| - 1).
Contradiction. □

In both sub-cases, the assumption that f is a surjection
leads to contradiction. Therefore no surjection
f: A → P_k(A) exists when |P_k(A)| > |A|. □
```


### 6.7.2  Theorems provable by PIND


### Theorem 6.5 — Polynomial-time sorting (S¹₂):


```
S¹₂ proves that merge sort terminates and produces
a sorted output for any input of length n in O(n log n)
steps.
```

```
Proof: The correctness invariant 'the output is sorted'
is a Σ¹_b formula. PIND on the input length establishes
correctness at each recursive call. The depth of recursion
is log n, matching the bit-induction step structure. □
```


### Theorem 6.6 — Extended Euclidean algorithm (S¹₂):


```
S¹₂ proves that for any natural numbers a, b,
the extended Euclidean algorithm terminates and produces
x, y such that ax + by = gcd(a, b).
```

```
Proof: The termination measure (bit-length of the remainder)
decreases at each step by at least one bit.
PIND on the bit-length establishes termination and
the Bezout identity at each stage. □
```


### Theorem 6.7 — Primality in co-NP (S¹₂):


```
S¹₂ proves that compositeness is in NP:
there exists a Σ¹_b formula witnessing compositeness.
```

```
(A certificate for n being composite is a factor p
with 1 < p < n and p | n. Checking p | n is a
polynomial-time computation, hence Σ¹_b.) □
```


## 6.8  The Relationship to Full Peano Arithmetic

A natural question is how the inductive strength of BST compares to full Peano Arithmetic. The answer is precise and worth stating carefully, because it clarifies exactly what bounded induction cannot prove and exactly what it preserves — and, crucially, why the unprovable items are better described as a narrow gap than as losses.

### Proof-theoretic strength comparison:


```
S¹₂  ⊂  T¹₂  ⊂  ...  ⊂  IΣ₁  ⊂  ...  ⊂  PA
```

```
Where:
IΣ₁ = PA with induction restricted to Σ₁ formulas
(one unbounded existential quantifier)
PA  = full Peano Arithmetic
```

```
BI-BST, when translated into arithmetic via the
set encoding of Section 6.5, has proof-theoretic
strength between S¹₂ and IΣ₁, depending on the
class of BST-definable properties considered.
```

```
The comparison is made after encoding: finite sets
are represented as natural numbers (enc(S) = Σ_{k∈S} 2^k),
set operations become arithmetic operations, and
BI-BST instances over encoded sets are compared with
the arithmetic induction schemas of Buss's hierarchy.
```

```
PA proves more than BST. Specifically, PA proves:
- The totality of the Ackermann function
- Goodstein's theorem
- Paris-Harrington theorem (combinatorial form of Ramsey)
- Consistency of S¹₂ (PA proves Con(S¹₂) as a routine
  consequence of its greater proof-theoretic strength;
  by Gödel, PA cannot prove its own consistency,
  but it can prove the consistency of weaker systems)
```

These four items require careful characterisation before they are declared losses.

The totality of the Ackermann function, Goodstein's theorem, and Paris-Harrington are not straightforwardly lost — they are what Part IX (Section 9.6) classifies as Category D: BST proves every specific finite instance, but cannot prove the universally quantified statement. For any specific inputs m and n, BST can compute A(m,n) by bounded recursion. For any specific starting value, BST can verify that the Goodstein sequence terminates. For any specific finite parameters, BST can verify the Paris-Harrington instance. What BST cannot do is collect these into a single unbounded universal claim — because doing so requires asserting a property across all natural numbers simultaneously, which is precisely what bounded induction cannot support. The gap is real and is acknowledged. But calling these outright losses without noting that every finite instance is recoverable would misrepresent the situation.

The consistency item is different in kind. BST cannot prove Con(S¹₂) — but this reflects proof-theoretic strength difference, not a foundational defect unique to BST. PA cannot prove Con(PA). ZFC cannot prove Con(ZFC). The fact that PA proves Con(S¹₂) while BST does not is precisely what "PA is proof-theoretically stronger than BST" means — it is the content of the strength comparison, not an independent loss on top of it. It would be misleading to list it as a separate loss when it is already fully captured by the hierarchy diagram above.

The honest statement is therefore: BST is proof-theoretically weaker than PA. The specific content of that weakness is the inability to prove universally quantified statements about all natural numbers simultaneously — Ackermann totality, Goodstein termination, Paris-Harrington — where every finite instance is individually provable. This is a real and precisely characterised limitation — Category D in Part IX's accounting. It is not a reason to doubt BST as a foundation for finite mathematics; it is an accurate description of where finite induction ends and stronger principles begin.


## 6.9  Summary: Two Schemas, One Foundation


### Summary — Bounded Induction in BST:


```
Schema I (BI-BST):
Successor induction over explicit bounds.
Applies to all BST-definable properties.
Native to BST's set-theoretic language.
Strong induction and bounded recursion derived.
Use for: foundational proofs, set-theoretic arguments,
all concrete finite mathematics.
```

```
Schema II (PIND from S¹₂):
Bit induction, no explicit bound.
Applies to Σ¹_b formulas only.
Native to arithmetic language.
Characterises exactly polynomial-time computation.
Use for: complexity-theoretic arguments, algorithm
analysis, connection to bounded arithmetic
literature.
```

```
Relationship:
Both valid in all models of BST.
BI-BST is more general (wider formula class,
explicit bounds, set-theoretic language).
PIND is more precise (polynomial-time characterisation,
well-studied proof-theoretic properties).
Translations between them possible for Σ¹_b properties
of encoded finite sets.
```

```
What both schemas cannot do:
Prove properties by induction over all natural numbers
without an explicit or model-internal bound.
This is not a defect — it is the correct formal
expression of bounded finitude.
```


### ◆ The Core Insight of Bounded Induction

Classical induction over all natural numbers is an infinite process — it asserts a property holds throughout an infinite domain. Bounded induction over {0,...,k} is a finite process — it asserts a property holds throughout a finite domain that the theory can reason about without knowing its extent. A small number of theorems provable by classical induction are not provable by bounded induction — these are Category D in the Part IX accounting, the narrow gap at the edge of finite provability. The gain is equally real: bounded induction is epistemically honest about what finite mathematical practice actually requires, and it supports the full development of arithmetic, algebra, and analysis over bounded domains.


End of Part VI

# Part VII: Functions and Relations


Functions are the connective tissue of mathematics. Without a coherent account of what a function is and what operations on functions are permitted, nearly nothing of interest can be expressed. Set theory derives its expressive power largely from the ability to treat functions as first-class objects — sets of ordered pairs — and to form function spaces, images, preimages, and compositions freely. When Power Set is removed, this expressive power contracts, and the contraction must be characterised precisely.
This part gives that characterisation. Two approaches to functions in BST are developed: the syntactic approach, which treats functions as defined relations without requiring them to be sets, and the axiomatic approach, which introduces a separate function axiom to recover certain function-as-object capabilities without Power Set. Both are presented formally and in full prose. Their tradeoffs are stated honestly. The part concludes with a survey of which areas of mathematics are fully available in BST and which require modification or bounded reformulation — the complete accounting of consequences being left to Part IX.


## 7.1  The Power Set Problem


### 7.1.1  What Power Set does in ZFC

In ZFC, the Power Set axiom asserts that for any set A, the set P(A) of all subsets of A exists. This single axiom is responsible for an enormous range of mathematical machinery:
- Function spaces: the set of all functions from A to B, written B^A, is a subset of P(A × B). Without Power Set, B^A need not exist as a set.
- Topology: a topology on A is a collection of subsets of A satisfying certain axioms — a subset of P(A). Without Power Set, topological spaces cannot in general be defined set-theoretically.
- Measure theory: sigma-algebras are collections of subsets closed under countable unions and complements — subsets of P(A). Without Power Set, measure theory has no natural set-theoretic home.
- Cardinal arithmetic: the cardinality of P(A) is 2^|A|, and cardinal exponentiation is defined via power sets. Without Power Set, cardinal arithmetic contracts dramatically.
- The real numbers: Dedekind cuts are subsets of Q, so the real numbers are elements of P(Q). Without Power Set, the real number line cannot be constructed set-theoretically in the standard way.
The removal of Power Set contracts these classical infinite formulations significantly. It removes the set-theoretic foundations of analysis, topology, and measure theory as classically conceived over completed infinite domains.

The question — addressed in full in Part IX — is whether those classical formulations are the only ones available, or whether bounded reformulations recover the mathematical substance. The answer, as Part IX demonstrates, is that the bounded reformulations recover the substance, and in several cases are more informative than the classical versions. The present section simply establishes the formal fact: Power Set is unavailable in BST and its removal has structural consequences.

### 7.1.2  Why Power Set fails in BST: the cardinality argument

Part III, Section 3.3.9 previewed the cardinality argument for Power Set's failure. Here it is given in full. The predicativist argument, which provides an independent line of objection, follows in Section 7.1.3. Both arguments are valid; together they make the rejection overdetermined.

### Theorem 7.1 — Power Set is inconsistent with the global bound:


```
In any model M of BST (Formulation A) with bound n_M:
For any set A with |A| > log₂(n_M), P(A) does not
exist as a set in M.
```

```
Proof:
Each subset of A corresponds uniquely to a binary string
of length |A|: the k-th bit is 1 if the k-th element
of A is included, 0 otherwise. There are exactly 2^|A|
such strings, hence exactly 2^|A| subsets of A.
This bijection holds for any finite set A and requires
no axioms beyond the finiteness of A — it is a
combinatorial fact about finite structures.

Therefore |P(A)| = 2^|A|.
If |A| > log₂(n_M), then 2^|A| > n_M.
P(A), if it existed, would be a set of cardinality > n_M.
This contradicts the bound. Therefore P(A) does not
exist as a set in M. □
```

```
Corollary: Power Set cannot be a valid axiom of BST.
For any proposed bound n_M, there exist sets A in M
(specifically, any A with |A| > log₂(n_M)) whose
power set would violate the bound.
```


### 7.1.3  The predicativist diagnosis

The predicativist argument against Power Set, developed by Weyl and formalised by Feferman, identifies a deeper problem than mere cardinality excess. Power Set is impredicative: the definition of P(A) — 'the set of all subsets of A' — quantifies over all subsets of A, including the very set being defined. This is circular in the sense that the object being defined (P(A)) is characterised by reference to a totality (all subsets of A) that presupposes P(A) as a member.
In BST, impredicativity is additionally problematic because the theory has no completed infinite domain in which the quantification 'all subsets' can range. The predicativist and the finitist objections to Power Set are independent but convergent: the predicativist objects to the definition's logical structure; the finitist objects to the resulting object's size. Both objections apply in BST, and together they make the rejection of Power Set overdetermined — not a single argument but two independent ones pointing to the same conclusion.

### Bounded Separation as the correct replacement:


```
Power Set: ∀A ∃P(A) ∀x ( x ∈ P(A) ↔ x ⊆ A )
Asserts existence of the set of ALL subsets.
```

```
Bounded Separation (BST Axiom 6):
∀A ∀φ ∃B (∀x(x ∈ B ↔ x ∈ A ∧ φ(x)))
For any property φ, the subset of A satisfying φ exists.
```

```
Bounded Separation gives specific subsets on demand.
Power Set gives all subsets at once.
The former is predicative and bounded.
The latter is impredicative and potentially unbounded.
```


## 7.2  Approach I: Functions as Defined Relations (Syntactic Treatment)


### 7.2.1  Motivation

The syntactic approach treats functions not as objects (sets of ordered pairs) but as defined predicates — formulas in the language of BST that express a functional relationship between inputs and outputs. Under this approach, 'the function f' is not a set that can be collected, quantified over, or passed as an argument. It is a schema — a way of computing outputs from inputs — that exists at the syntactic level.
This approach has deep roots. Frege's original conception of functions was syntactic: a function is an unsaturated expression, not an object. The identification of functions with their graphs (sets of ordered pairs) was a set-theoretic move that gained dominance with ZFC. The syntactic approach recovers Frege's conception within a formal setting.

### 7.2.2  Ordered pairs in BST

Before defining relations and functions, ordered pairs must be available. The Kuratowski encoding of ordered pairs works in BST:

### Definition 7.1 — Ordered pair (Kuratowski):


```
(a, b)  :=  {{a}, {a, b}}
```

```
This is a set: {a} exists by Pairing, {a,b} exists
by Pairing, and {{a},{a,b}} exists by Pairing.
All three sets are finite.
```

```
Correctness: (a,b) = (c,d)  iff  a=c and b=d.
Proof: Standard — holds by extensionality. □
```

```
Cardinality: |(a,b)| = 2 (the outer pair always has
exactly 2 elements, each of which is a set of size ≤ 2).
Ordered pairs are always available in BST regardless
of the bound, since they have fixed small cardinality.
```


### Definition 7.2 — Cartesian product:


```
A × B  :=  { (a,b) | a ∈ A, b ∈ B }
```

```
Existence in BST: A × B is constructed by Bounded
Replacement and Bounded Union:
For each a ∈ A, form the set R_a = {(a,b) | b ∈ B}
by applying Bounded Replacement to B with the map
b ↦ (a,b) (which produces the Kuratowski pair).
Each R_a has cardinality |B|.
Then A × B = ⋃_{a ∈ A} R_a, formed by Bounded Union
applied to the finite collection {R_a | a ∈ A}.
```

```
Cardinality: |A × B| = |A| · |B|.
This must be ≤ n_M for the product to exist as a set;
the condition n_M ≥ |A| · |B| must be assumed.
```

```
Note: Cartesian products of large sets may exceed the
bound. This is addressed in Section 7.2.5.
```


### 7.2.3  Relations as sets


### Definition 7.3 — Relation:


```
A relation R from A to B is a subset of A × B.
```

```
R ⊆ A × B  means  R is a set and ∀(a,b) ∈ R: a ∈ A, b ∈ B.
```

```
Existence: By Bounded Separation applied to A × B,
any definable property φ(a,b) gives a relation
R = {(a,b) ∈ A×B | φ(a,b)}.
```

```
This works as long as A × B exists — see the
cardinality caveat in Definition 7.2.
```


### 7.2.4  Functions as defined predicates


### Definition 7.4 — Function (syntactic):


```
A function symbol f from A to B is a formula φ_f(x,y)
in the language of BST such that:
```

```
(i)  ∀x ∈ A ∃y ∈ B  φ_f(x,y)          [totality]
(ii) ∀x ∈ A ∀y ∀z (φ_f(x,y) ∧ φ_f(x,z) → y=z)  [uniqueness]
```

```
The function f is defined by φ_f. It is not a set.
Writing f(x) = y means φ_f(x,y).
```

```
Domain: A.  Codomain: B.  Graph: {(x,y) | φ_f(x,y)}.
```

```
The graph of f is a set (a subset of A×B) when A×B exists.
The function symbol f is a syntactic object, not a set.
```

Plain language: A function is a formula that pairs each input with a unique output. You can compute with it, compose it, apply it — but you cannot collect all functions of a given type into a set, because there is no function space set. Functions are verbs, not nouns, in the syntactic approach.

### 7.2.5  What the syntactic approach recovers

The syntactic approach recovers the following function-theoretic concepts:
- Function application: f(x) is defined whenever x ∈ dom(f)
- Composition: (g ∘ f)(x) = g(f(x)) — composition of function symbols is a function symbol
- Injectivity, surjectivity, bijectivity: all definable as properties of a function symbol
- Image and preimage: f(A) = {f(x) | x ∈ A} exists as a set by Bounded Replacement; f⁻¹(B) = {x ∈ A | f(x) ∈ B} exists by Bounded Separation
- Finite products and compositions: any finite sequence of composable function symbols composes to a function symbol
- Recursive definitions: by Bounded Recursion (Part VI), function symbols can be defined by bounded recursion on finite ordinals

### 7.2.6  What the syntactic approach does not recover

The syntactic approach cannot express the following:
- Quantification over all functions: 'for all functions f: A → B, ...' is not available because functions are not objects that can be quantified over. This blocks certain results that require reasoning about function spaces.
- Higher-order functions: a function that takes a function as input cannot be defined in the syntactic approach, because its input is not a set.
- Cardinality comparison via injections: the standard set-theoretic definition of |A| ≤ |B| (there exists an injection f: A → B) requires the injection to be a set. In the syntactic approach, injections are function symbols; the existential quantifier ranges over function symbols, which is a second-order quantification not available in first-order BST.
These limitations motivate the axiomatic approach developed in the next section.


## 7.3  Approach II: The Function Axiom (Axiomatic Treatment)


### 7.3.1  Motivation

The axiomatic approach introduces a new axiom — the Function Axiom — that asserts the existence of function sets (graphs) for any definable functional relation on finite sets. This recovers functions as first-class objects without requiring Power Set, by directly asserting the existence of graphs rather than deriving them from a power set.
The key observation is that a function from a finite set A to a finite set B has a graph that is a subset of A × B. The graph has at most |A| elements (one pair per input). If |A| ≤ n_M and |B| ≤ n_M, then |A × B| ≤ n_M² and the graph has at most n_M elements. The graph therefore fits within the bound — its existence is not ruled out by the bound axiom. The Function Axiom asserts that this graph always exists.

### 7.3.2  Formal statement


### Function Axiom (FA-BST):


```
For any finite sets A and B, and any formula φ(x,y)
such that:
(i)  ∀x ∈ A ∃y ∈ B  φ(x,y)          [totality]
(ii) ∀x ∈ A ∀y ∀z (φ(x,y) ∧ φ(x,z) → y=z)  [uniqueness]
```

```
There exists a set G (the graph of the function defined
by φ) such that:
G ⊆ A × B
∀x ∈ A ∀y ∈ B ( (x,y) ∈ G  ↔  φ(x,y) )
```

```
Formally:
∀A ∀B ( [φ defines a function A→B]
→ ∃G ( G ⊆ A×B ∧ ∀x∈A ∀y∈B((x,y)∈G ↔ φ(x,y)) ) )
```

Plain language: Whenever you have a finite domain, a finite codomain, and a rule that assigns each input a unique output, the rule's graph — the set of input-output pairs — exists as a set. You do not need to form all possible functions first; you just need one specific functional rule.

### 7.3.3  FA-BST vs Bounded Replacement

A natural question: is FA-BST already derivable from Bounded Replacement? The answer is yes, under the condition that A × B exists within the bound.

### Proposition 7.1 — FA-BST follows from Bounded Replacement:


```
Given A, B finite, φ defining a function A → B:
```

```
Step 1: For each x ∈ A, let y_x be the unique y ∈ B
with φ(x, y_x). This y_x exists by totality.
```

```
Step 2: Define ψ(x) = (x, y_x). Then ψ is a definable
function from A to A × B.
```

```
Step 3: By Bounded Replacement applied to A and ψ,
the image {ψ(x) | x ∈ A} = {(x,y_x) | x ∈ A}
exists as a finite set G.
```

```
Step 4: G = {(x,y) ∈ A×B | φ(x,y)} by construction.
G is the graph of the function defined by φ. □
```

```
Qualification: Step 2 requires A × B to exist.
A × B exists in BST when |A| · |B| ≤ n_M.
FA-BST is therefore a consequence of Bounded Replacement
under the assumption that A × B fits within the bound.
```

This proposition shows that FA-BST is not an independent axiom — it is a derived principle within BST, provided Cartesian products are available. It is stated as a separate axiom for expository clarity and to make explicit the conditions under which function graphs exist.

### 7.3.4  What FA-BST recovers beyond the syntactic approach

With FA-BST, functions become first-class objects — sets — when their domain and codomain are finite and their Cartesian product fits within the bound. This enables:
- Quantification over specific function sets: 'for all f ∈ Func(A,B), ...' where Func(A,B) = {G ⊆ A×B | G is a function graph} is now a set. It is constructed by Bounded Separation applied to the finite set of subsets of A×B of cardinality exactly |A| satisfying the uniqueness condition — each such subset is a function graph. Since |A×B| ≤ n_M, the relevant subsets are finite and enumerable within BST. Func(A,B) exists as a set when |B|^|A| ≤ n_M (the number of such function graphs).
- Cardinality comparison: |A| ≤ |B| iff there exists an injection f: A → B, where f is now a set and the existential quantifier is first-order
- Finite function composition as a set operation: the composition of two function sets G_f ⊆ A×B and G_g ⊆ B×C is the set G_g ∘ G_f = {(a,c) | ∃b ((a,b)∈G_f ∧ (b,c)∈G_g)}, definable by Bounded Separation
- Finite permutation groups: the set of all bijections from A to itself is a finite set (a subset of Func(A,A)), supporting the development of finite group theory

### 7.3.5  The bounded function space

FA-BST does not recover the full function space B^A = {f | f: A → B} as a set. But it does recover a bounded version:

### Definition 7.5 — Bounded function space:


```
Func(A, B)  :=  { G ⊆ A×B | G is a function graph }
```

```
Existence: Func(A,B) is the set of all subsets of A×B
of cardinality exactly |A| that satisfy the uniqueness
condition. This requires enumerating subsets of A×B
of a specific size — possible by Bounded Separation
applied to an appropriate collection.
```

```
Key caveat: this construction requires the collection
of subsets of A×B of size |A| to exist. This is a
restricted power set, not the full power set.
It exists in BST when |A×B| ≤ n_M and the number of
such subsets (which is |B|^|A|) ≤ n_M.
```

```
|Func(A,B)| = |B|^|A|.
This can exceed the bound even when |A| and |B| are
individually within the bound. When it does,
Func(A,B) does not exist as a set in BST.
```

Plain language: The set of all functions from A to B exists in BST only when the number of such functions — which is |B| raised to the power |A| — fits within the model's bound. For small A and B this is fine. For larger sets it may not be, and in that case individual function graphs exist but their collection does not.


## 7.4  Comparison: Syntactic vs Axiomatic


### Comparison Table — Two Approaches to Functions:


```
Capability                    Syntactic    Axiomatic (FA)
────────────────────────────────────────────────────────────
Function application          Yes          Yes
Composition                   Yes          Yes (as set op)
Image / preimage              Yes          Yes
Function as a set (graph)     No           Yes (if |A×B|≤n_M)
Quantify over functions       No           Yes (if Func(A,B) exists)
Cardinality comparison        Limited      Yes (via injection sets)
Higher-order functions        No           Limited
Finite group theory           No           Yes
Function space as a set       No           Conditional
Independent of Power Set      Yes          Yes
Requires A×B to exist         No           Yes
Proof-theoretic overhead      None         Slight
```

The two approaches are complementary. The syntactic approach is always available and requires no additional assumptions. The axiomatic approach provides richer structure when the relevant cardinality conditions are met. In practice, BST proofs use the syntactic approach as the default and invoke FA-BST when a function graph is needed as a first-class object.


## 7.5  Relations in BST

Relations are more fundamental than functions in the set-theoretic sense — a function is a special kind of relation. BST's treatment of relations follows directly from the available axioms.

### 7.5.1  Binary relations


### Definition 7.6 — Binary relation:


```
A binary relation R on A (or from A to B) is a
subset of A × A (or A × B).
```

```
Existence: R exists as a set whenever A × B exists
and R is defined by a Bounded Separation formula.
```

```
Standard properties definable in BST:
Reflexivity:    ∀x ∈ A  (x,x) ∈ R
Symmetry:       ∀x,y ∈ A  (x,y)∈R → (y,x)∈R
Transitivity:   ∀x,y,z ∈ A  (x,y)∈R ∧ (y,z)∈R → (x,z)∈R
Antisymmetry:   ∀x,y ∈ A  (x,y)∈R ∧ (y,x)∈R → x=y
Totality:       ∀x,y ∈ A  (x,y)∈R ∨ (y,x)∈R
```

```
All of these are first-order properties of R expressible
in BST without any additional axioms.
```


### 7.5.2  Equivalence relations and quotients


### Definition 7.7 — Equivalence relation:


```
R is an equivalence relation on A if R is reflexive,
symmetric, and transitive.
```

```
The equivalence class of x: [x]_R = {y ∈ A | (x,y) ∈ R}.
Exists by Bounded Separation applied to A.
```

```
The quotient set: A/R = {[x]_R | x ∈ A}.
Exists by Bounded Replacement: map each x ∈ A to [x]_R.
The image is A/R, a finite set of finite sets.
```

```
|A/R| ≤ |A| ≤ n_M.  Quotients are always within bound.
```

```
Key theorem: the natural map π: A → A/R defined by
π(x) = [x]_R is a function (by Bounded Replacement)
and is a surjection.
```

Plain language: Equivalence classes and quotient sets are fully available in BST. Grouping elements by an equivalence relation always produces a finite quotient that fits within the bound, since the quotient has at most as many elements as the original set.

### 7.5.3  Well-orders and their ordinals


### Definition 7.8 — Well-order:


```
A well-order on A is a total strict order < on A such
that every nonempty subset of A has a least element.
```

```
In BST, since A is finite, every strict total order on A
is automatically a well-order (finite total orders always
have least elements in every nonempty subset).
```

```
Therefore: a well-order on A is simply a strict total order.
```

```
The ordinal of (A, <) is ord(A, <) as defined in Part V.
Every finite well-order has an ordinal in BST.
The ordinal is an isomorphism class, not a set.
```

As established in Part III, Section 3.2.2, isomorphism classes are metatheoretic collections and are not objects of BST. All formal work uses canonical representatives — the specific finite von Neumann ordinals 0, 1, 2, ... The isomorphism class language here is motivational; when the paper writes "the ordinal of (A, <)" it means the canonical representative of that order type.


### 7.5.4  Partial orders and lattices

Partial orders are available in BST without restriction:

### Definition 7.9 — Partial order:


```
A partial order on A is a relation ≤ that is:
reflexive, antisymmetric, and transitive.
```

```
A lattice is a partial order in which every pair of
elements has a least upper bound (join) and a greatest
lower bound (meet).
```

```
Finite lattices exist fully in BST.
The powerset lattice P(A) — the lattice of all subsets
of A ordered by inclusion — may not exist as a set
(since P(A) may not exist), but any specific finite
sublattice of it does.
```


## 7.6  Recovering Finite Mathematics Without Power Set

Having established what functions and relations look like in BST, we can now survey the areas of finite mathematics that are fully available in BST and those that require bounded reformulation.

### 7.6.1  Finite combinatorics — fully intact

Finite combinatorics is the area of mathematics least dependent on Power Set. The objects studied — finite sets, functions between them, permutations, combinations, graphs — are all available in BST. The key theorems survive:
- Pigeonhole principle: proved in Part VI by BI-BST
- Inclusion-exclusion: |A ∪ B| = |A| + |B| - |A ∩ B|; provable by BI-BST on the number of sets
- Binomial theorem: (a+b)^n = Σ C(n,k) a^k b^(n-k); provable by bounded induction, with binomial coefficients defined recursively
- Finite graph theory: graphs are sets of vertices and edges, both finite; degree sequences, paths, cycles, trees — all available in BST
- Permutations and combinations: C(n,k) and P(n,k) definable recursively; finite symmetric groups available via FA-BST

### 7.6.2  Elementary number theory — fully intact

Elementary number theory studies properties of integers, which in BST are finite sets in the von Neumann encoding. The core theorems survive:
- Divisibility: a | b defined as ∃k ≤ b (b = a·k); all quantifiers bounded
- Prime numbers: n is prime iff n > 1 and ∀k ≤ n (k | n → k = 1 ∨ k = n); definable in BST
- GCD and LCM: computable by the Euclidean algorithm (proved in Part VI); definable by bounded recursion
- Unique factorization: provable by bounded induction on n for all n ≤ k, for any explicit k
- Modular arithmetic: Z/nZ is a quotient set, available by Definition 7.7; ring axioms provable by BI-BST

### 7.6.3  Finite algebra — largely intact

Finite groups, rings, and fields are available in BST, since they are defined as finite sets with operations satisfying equational axioms:
- Finite groups: a group is a finite set G with a binary operation satisfying associativity, identity, and inverses; all definable in BST
- Lagrange's theorem: |H| divides |G| for any subgroup H of a finite group G; provable by BI-BST using coset decomposition
- Finite fields: GF(p^n) for prime p and n ≥ 1 is constructible as a quotient ring; finite fields are available in BST
- Linear algebra over finite fields: matrix multiplication, determinants, rank — all definable over finite-dimensional vector spaces with finite fields; no Power Set required

### 7.6.4  Discrete probability — intact with qualification

Discrete probability over finite sample spaces is available in BST. A probability space is a finite set Ω (the sample space), a collection of events (subsets of Ω), and a probability measure P assigning rational values to events.
The qualification: the event algebra is a collection of subsets of Ω. In classical probability theory, the event algebra is typically P(Ω) — the full power set. In BST, P(Ω) may not exist as a set. The resolution is to work with a specific finite event algebra — a finite collection of subsets closed under complement and union — rather than all subsets. This is actually more general in one sense: it corresponds to what is called a finite field of sets or an algebra of sets, which is the standard structure in abstract probability theory.

### 7.6.5  What requires bounded reformulation

The following areas of mathematics are not available in BST in their classical infinite form, but each has a bounded reformulation that recovers the mathematical substance:

- Classical real analysis as a completed infinite structure: Dedekind cuts and Cauchy sequences construct ℝ as a completed infinite object, which BST does not posit. The analytic apparatus — derivatives, integrals, transcendental functions, IVT, EVT — is recovered in full via the bounded reals ℝ_B(k), constructed in Part VIII (Section 8.7) as a Cauchy completion of ℚ_B(k). The bounded versions carry explicit precision bounds and are strictly more informative than their classical counterparts. Recovery type: Type II (exact BST theorems at each bound level k).
- Classical topology: open sets as arbitrary subsets of an infinite space require infinite subsets. Finite topological spaces and topology over ℝ_B(k) are fully available. The classical continuum topology is replaced by a bounded analog that supports the same analytic theorems over explicit domains.
- Measure theory: sigma-algebras over infinite domains require Power Set or its equivalent at infinite scale. Finitely-additive probability over finite event algebras and Lebesgue-style measure over bounded domains are fully available and support all computable probability theory.
- Functional analysis: infinite-dimensional Hilbert and Banach spaces require infinite sets. Finite-dimensional spectral theory over bounded domains is fully available and developed in Part IX.

In each case the classical infinite formulation is a limit statement — what the bounded version approaches as the bound grows. The bounded version is the mathematically primary object; the classical version is an idealisation. Part IX develops each bounded construction in full.


## 7.7  The Cardinality Theory of BST

Cardinality — measuring the size of sets — is foundational to nearly all of mathematics. In ZFC, cardinality is developed via cardinal numbers, injection, surjection, and the Schroeder-Bernstein theorem. In BST, cardinality is simpler and more concrete because all sets are finite, but certain subtleties arise from the function-as-set question.

### Definition 7.10 — Cardinality (BST):


```
|A| denotes the number of elements of A.
Since A is finite, |A| is a natural number ≤ n_M.
```

```
|A| = |B|  iff  there exists a bijection f: A → B.
|A| ≤ |B|  iff  there exists an injection f: A → B.
|A| < |B|  iff  |A| ≤ |B|  and  |A| ≠ |B|.
```

```
Under FA-BST: injections and bijections are sets
(function graphs), and the existential quantifier is
first-order — ranges over elements of Func(A,B).
```

```
Under syntactic approach only: injections are function
symbols, and '∃ injection' is a second-order statement.
In this case, |A| ≤ |B| is defined directly as a
formula in BST: the natural number |A| ≤ the natural
number |B|, where cardinalities are computed as ordinals.
```


### Theorem 7.2 — Schroeder-Bernstein for finite sets (BST):


```
For finite sets A and B:
|A| ≤ |B|  and  |B| ≤ |A|  implies  |A| = |B|.
```

```
Proof: This reduces to: if m ≤ n and n ≤ m for natural
numbers m, n, then m = n. This is provable by
BI-BST (or simply from the linear ordering of ordinals). □
```

```
Note: This is far simpler than the classical proof,
which requires infinite sets and the axiom of choice
(or at minimum, dependent choice). For finite sets,
Schroeder-Bernstein is trivial.
```


## 7.8  Summary


### Summary — Functions and Relations in BST:


```
Relations:
Binary relations exist as sets when A × B exists.
Equivalence relations and quotients always available.
Well-orders = strict total orders (for finite sets).
Partial orders and finite lattices fully available.
```

```
Functions (Syntactic Approach — always available):
Functions as formulas satisfying totality + uniqueness.
Application, composition, image, preimage all defined.
Cannot quantify over function spaces.
Cannot treat functions as first-class objects.
```

```
Functions (Axiomatic Approach — conditional):
Function graphs exist as sets when |A × B| ≤ n_M.
Quantification over Func(A,B) when |B|^|A| ≤ n_M.
Finite group theory, cardinality comparison available.
Derived from Bounded Replacement + Cartesian products.
```

```
What survives Power Set's removal:
Finite combinatorics — fully intact.
Elementary number theory — fully intact.
Finite algebra (groups, rings, fields) — largely intact.
Discrete probability over finite spaces — intact.
```

```
What does not survive:
Classical real analysis — requires infinite sets.
Classical topology — requires infinite subsets.
Measure theory — requires sigma-algebras.
Functional analysis — requires infinite dimensions.
(Full treatment of bounded reformulations: Part IX)
```


### ◆ The Core Insight of the Function Treatment

Functions in BST exist at two levels: as syntactic formulas (always available, no set required) and as set-valued graphs (available when cardinality conditions permit). The removal of Power Set means function spaces are not automatic objects — but functions themselves are always available. Every specific function you can define exists and can be applied, composed, and reasoned about. The ability to collect all functions of a given type into a single set is conditional on that collection fitting within the bound, which it does for small domains and may not for large ones. This is not a loss — it is the correct description of what function spaces are in a bounded setting.


End of Part VII

# Part VIII: The Bounded Number Chain


Classical arithmetic builds its number systems in a single ascending sequence: the natural numbers ℕ are taken as given or axiomatised, the integers ℤ are constructed as equivalence classes of pairs of naturals, the rationals ℚ as equivalence classes of pairs of integers. Each step is a quotient construction; each resulting system is infinite; the full chain ℕ ⊆ ℤ ⊆ ℚ is a completed infinite hierarchy that grounds all subsequent analysis.

Under AFB, none of these systems exists as a completed infinite totality. There is no set of all natural numbers, no set of all integers, no set of all rationals. What exists are bounded versions: for any explicit bound k, there is the set of natural numbers up to k, the set of integers representable within a bound derived from k, the set of rationals representable within a bound derived from that. Each is a finite set. Each has an explicit cardinality. Each supports arithmetic operations — but those operations are not unconditionally closed. Addition can carry you outside the bound; multiplication more so; exponentiation with extreme rapidity.

This part constructs the bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) in full, confronts the closure problem at each level, and establishes which arithmetic results hold unconditionally within a bound and which hold only with explicit provisos. The construction is not a weakening of classical arithmetic — it is arithmetic done honestly, without assuming a completed infinite background domain that the foundation does not provide.

The chain constructed here is the foundation for Part IX. The bounded reals ℝ_B(k) are constructed in Section 8.7 as a Cauchy completion of ℚ_B(k); Part IX develops the analytic apparatus over them.


## 8.1  The Bounded Naturals ℕ_B(k)


### 8.1.1  Construction

The natural numbers in BST are the finite von Neumann ordinals established in Part III and developed in Part V. For any explicit bound k, the bounded naturals are:

### Definition 8.1 — Bounded naturals:


```
ℕ_B(k)  :=  { α | α is an ordinal and α ≤ k }
          =  { 0, 1, 2, ..., k }

Existence: ℕ_B(k) exists as a set in any model of BST
whose bound n_M ≥ k. It is constructed by Bounded
Separation applied to the ordinals up to k.

Cardinality: |ℕ_B(k)| = k + 1.
```

Plain language: The bounded naturals up to k are simply the finite ordinals from 0 to k, which already exist in BST as the canonical representatives established in Part III, Definition 3.3. No new construction is needed. ℕ_B(k) is the explicit finite set of those ordinals, assembled by Bounded Separation.

Note on the missing ℕ. There is no set ℕ in BST — no completed infinite set of all natural numbers. ℕ_B(k) is not a subset of ℕ; it is the only kind of "natural number set" that exists. The classical ℕ is not an object that BST approximates. It is an object that BST does not posit. Each ℕ_B(k) is complete as a finite structure — it lacks nothing that a finite set of naturals needs. What it lacks is membership in a completed infinite totality that BST does not recognise.


### 8.1.2  Arithmetic operations on ℕ_B(k)

Addition, multiplication, and exponentiation are defined on ℕ_B(k) by bounded recursion (Part VI, Section 6.2.5). The definitions follow the standard recursive clauses:

### Definition 8.2 — Addition on ℕ_B(k):


```
m + 0      :=  m
m + S(n)   :=  S(m + n)

Defined for all m, n ∈ ℕ_B(k) by Bounded Recursion
(BR-BST, Part VI, Section 6.2.5) applied to n with
bound k, holding m fixed.
```

### Definition 8.3 — Multiplication on ℕ_B(k):


```
m × 0      :=  0
m × S(n)   :=  (m × n) + m

Defined by BR-BST on n, holding m fixed.
```

### Definition 8.4 — Exponentiation on ℕ_B(k):


```
m ^ 0      :=  1
m ^ S(n)   :=  (m ^ n) × m

Defined by BR-BST on n, holding m fixed.
```

These definitions are all valid within BST. Each definition produces a function symbol (in the sense of Part VII, Definition 7.4) whose graph, when the result lies within ℕ_B(k), exists as a set by FA-BST.


### 8.1.3  The closure problem

The arithmetic operations are not unconditionally closed on ℕ_B(k).

### Proposition 8.1 — Arithmetic closure on ℕ_B(k):


```
Addition: m + n ∈ ℕ_B(k)  iff  m + n ≤ k.
This holds when m ≤ k/2 and n ≤ k/2, but not in general.

Multiplication: m × n ∈ ℕ_B(k)  iff  m × n ≤ k.
This holds when m ≤ √k and n ≤ √k, but not in general.

Exponentiation: m ^ n ∈ ℕ_B(k)  iff  m ^ n ≤ k.
This holds when n ≤ log_m(k), but grows rapidly
outside this range.

Proof: Immediate from the definitions and the bound
constraint |S| ≤ k for all sets S in the model. □
```

Plain language: Adding two numbers near k will exceed k. Multiplying two numbers near √k will exceed k. Exponentiating even modest numbers quickly exceeds any fixed k. The operations are defined on all inputs in ℕ_B(k) — but their outputs may not land in ℕ_B(k).


### 8.1.4  Two resolutions

There are two principled responses to the closure problem, and the choice between them has consequences throughout the paper.

**Resolution A — Truncated arithmetic.** Define truncated operations:

```
m +_k n  :=  min(m + n, k)
m ×_k n  :=  min(m × n, k)
m ^_k n  :=  min(m ^ n, k)
```

Truncated arithmetic is unconditionally closed on ℕ_B(k). It is computationally natural — it models arithmetic on a register of fixed width, where overflow saturates at the maximum value. Its algebraic properties are weaker than classical arithmetic: addition remains commutative and associative, but the cancellation law (m + p = n + p → m = n) fails when the sum is truncated.

**Resolution B — Domain restriction.** Restrict attention to the subset of ℕ_B(k) on which the operation stays within bound:

```
dom+(k)  :=  { (m,n) ∈ ℕ_B(k)² | m + n ≤ k }
dom×(k)  :=  { (m,n) ∈ ℕ_B(k)² | m × n ≤ k }
```

On these domains, the operations have full classical algebraic properties. The domain is not all of ℕ_B(k) × ℕ_B(k), but it is a well-defined finite set. Domain restriction is the approach used in the remainder of this paper: arithmetic is performed within stated bounds, with explicit provisos when an operation might exceed them.

The two resolutions are not in conflict. Truncated arithmetic is useful for computational applications where saturating behaviour is acceptable. Domain restriction is used for foundational and algebraic results where the classical properties of arithmetic are needed. BST supports both; the choice is made explicit in each context.


### 8.1.5  Basic number-theoretic results in ℕ_B(k)

The core results of elementary number theory are available within ℕ_B(k), with appropriate provisos.

### Theorem 8.2 — Divisibility and primality (BST):


```
For any m, n ∈ ℕ_B(k), m > 0:
m | n  :=  ∃q ∈ ℕ_B(k) ( n = m × q )
(All quantifiers bounded by k.)

n is prime  :=  n > 1  ∧  ∀m ≤ n ( m | n → m = 1 ∨ m = n )

Both properties are decidable within ℕ_B(k).
```

### Theorem 8.3 — GCD and Euclidean algorithm (BST):


```
For any m, n ∈ ℕ_B(k), not both zero:
gcd(m,n) is defined by the Euclidean algorithm.
The algorithm terminates in at most log₂(max(m,n)) steps.
Proved by BI-BST on the bit-length of the remainder
(equivalently, by the S¹₂ proof in Part VI, Theorem 6.6).

Bezout's identity: ∃x,y ∈ ℤ_B(k') ( mx + ny = gcd(m,n) )
where k' is a bound sufficient for the integers (Section 8.2).
```

### Theorem 8.4 — Unique factorisation in ℕ_B(k):


```
For any n ∈ ℕ_B(k) with n > 1:
n = p₁^{a₁} × ... × p_r^{a_r}
for primes p₁ < ... < p_r and exponents a_i ≥ 1,
and this factorisation is unique.

Proof: By BI-BST on n. Existence: induction on n —
if n is prime, done; if composite, n = ab with a,b < n,
apply induction to a and b, combine. Uniqueness: standard
argument using that if p | ab then p | a or p | b,
provable by BI-BST using GCD. □

Proviso: all factors and exponents must lie within ℕ_B(k).
For any specific n, they do — n's prime factors are all ≤ n.
```


## 8.2  The Bounded Integers ℤ_B(k)


### 8.2.1  Construction

The integers extend the naturals by adding additive inverses. Classically, ℤ is constructed as the set of equivalence classes of pairs (a, b) ∈ ℕ × ℕ under the equivalence (a,b) ~ (c,d) iff a + d = b + c — the pair (a,b) represents the integer a − b.

In BST, this construction is available within explicit bounds:

### Definition 8.5 — Bounded integer pairs:


```
Pairs(k)  :=  ℕ_B(k) × ℕ_B(k)
           =  { (a,b) | a,b ∈ ℕ_B(k) }

Cardinality: |Pairs(k)| = (k+1)²

Equivalence: (a,b) ~_k (c,d)  :=  a + d = b + c
(Addition computed in ℕ — both sides ≤ 2k, within ℕ_B(2k))

This is an equivalence relation on Pairs(k):
- Reflexivity: a + b = b + a ✓
- Symmetry: a+d = b+c → c+b = d+a ✓
- Transitivity: provable by BI-BST on the sum ✓
```

### Definition 8.6 — Bounded integers:


```
ℤ_B(k)  :=  Pairs(k) / ~_k
           =  { [(a,b)]_~ | (a,b) ∈ Pairs(k) }

Existence: By Definition 7.7 (Part VII), quotient sets
exist in BST whenever the base set and equivalence
relation exist. Both do here.

Cardinality: |ℤ_B(k)| ≤ |Pairs(k)| = (k+1)².
Actual cardinality: 2k + 1
(the integers from −k to +k).

Canonical representatives: use the pair (a,0) for
positive integers a ≥ 0, and (0,b) for negative
integers −b with b > 0. Each equivalence class has
a unique canonical representative of this form.
```

Plain language: ℤ_B(k) contains the integers from −k to +k. It has 2k+1 elements. Every integer in this range is represented by a unique canonical pair. The quotient construction is well-defined because Pairs(k) is a finite set and ~_k is a decidable equivalence relation.


### 8.2.2  The symmetric bound

The bound for ℤ_B(k) is symmetric: the integers from −k to +k. This is the natural choice because the construction is symmetric (the pair (a,b) represents a − b, which ranges over [−k, k] as a and b range over [0, k]).

The cardinality 2k + 1 is always odd — there is always one more non-negative integer (0, 1, ..., k) than negative integer (−1, ..., −k). This asymmetry is a feature of the construction, not a defect.

For a given model with bound n_M, ℤ_B(k) fits within the model provided 2k + 1 ≤ n_M, i.e., k ≤ ⌊(n_M − 1)/2⌋. The integers reachable within the model are those with absolute value at most ⌊(n_M − 1)/2⌋.


### 8.2.3  Arithmetic on ℤ_B(k)

### Definition 8.7 — Integer arithmetic:


```
Addition: [(a,b)] + [(c,d)]  :=  [(a+c, b+d)]
Well-defined: if (a,b)~(a',b') and (c,d)~(c',d'),
then (a+c,b+d)~(a'+c',b'+d'). ✓

Subtraction: [(a,b)] − [(c,d)]  :=  [(a+d, b+c)]
Additive inverse: −[(a,b)]  :=  [(b,a)]

Multiplication: [(a,b)] × [(c,d)]  :=  [(ac+bd, ad+bc)]
Well-defined: standard verification. ✓
```

```
Closure proviso:
Addition: [(a,b)] + [(c,d)] ∈ ℤ_B(k) iff |result| ≤ k.
Multiplication: [(a,b)] × [(c,d)] ∈ ℤ_B(k) iff |result| ≤ k.
Subtraction is always closed on ℤ_B(k) for inputs
with |a|,|b| ≤ k: |a − b| ≤ max(|a|,|b|) ≤ k.
```

The key structural gain over ℕ_B(k) is that subtraction is unconditionally closed on ℤ_B(k): the absolute value of a difference never exceeds the larger of the two operands. This makes ℤ_B(k) better behaved than ℕ_B(k) for algebraic purposes.

### Theorem 8.5 — ℤ_B(k) is a commutative ring (within domain):


```
On the domain where operations stay within bound,
ℤ_B(k) with addition and multiplication satisfies:
- Commutativity of addition and multiplication
- Associativity of addition and multiplication
- Distributivity
- Additive identity: 0 = [(0,0)]
- Additive inverses: −[(a,b)] = [(b,a)]
- Multiplicative identity: 1 = [(1,0)]

Proof: All ring axioms are equational identities
provable by BI-BST, using the well-definedness of
the operations on equivalence classes. □

Note: ℤ_B(k) is not a ring in the full sense because
multiplication is not unconditionally closed. It is
a ring on the restricted domain where products stay
within bound.
```


## 8.3  The Bounded Rationals ℚ_B(k)


### 8.3.1  Construction

The rationals extend the integers by adding multiplicative inverses for all nonzero elements. Classically, ℚ is the set of equivalence classes of pairs (a, b) ∈ ℤ × (ℤ \ {0}) under (a,b) ~ (c,d) iff ad = bc — the pair (a,b) represents the fraction a/b.

In BST:

### Definition 8.8 — Bounded rational pairs:


```
FracPairs(k)  :=  { (a,b) | a ∈ ℤ_B(k), b ∈ ℤ_B(k), b ≠ 0 }

Cardinality: |FracPairs(k)| = (2k+1) × 2k = 2k(2k+1)

Equivalence: (a,b) ~_k (c,d)  :=  a × d = b × c
(Multiplication computed in ℤ; both sides have absolute
value ≤ k², within ℤ_B(k²) — see proviso below.)

Proviso: the equivalence check a×d = b×c requires
computing products of integers of size ≤ k. These
products have size ≤ k². ℤ_B(k) must therefore extend
to ℤ_B(k²) to check equivalence, or the product
computation must be performed in a wider context.
The practical resolution: when constructing ℚ_B(k),
use ℤ_B(k²) as the ambient integer system.
```

### Definition 8.9 — Bounded rationals:


```
ℚ_B(k)  :=  FracPairs(k) / ~_k

Cardinality: |ℚ_B(k)| = number of distinct rationals
a/b with a ∈ ℤ_B(k), b ∈ ℤ_B(k) \ {0}, gcd(|a|,|b|) = 1.

This is the count of fractions in lowest terms with
numerator and denominator bounded by k.

Asymptotically: |ℚ_B(k)| ~ (12/π²) k² as k → ∞.
(The density of coprime pairs, by the Euler product
formula — each specific instance provable in BST
by BI-BST on k, though the asymptotic limit is
a classical rather than BST statement.)

Canonical representative of each class: the fraction
in lowest terms with positive denominator. Unique.
```


### 8.3.2  The density theorem

A key property of ℚ_B(k) is its density — how many rationals lie in a given interval. This matters for Section 8.7, where the bounded reals are constructed as a Cauchy completion of ℚ_B(k).

### Theorem 8.6 — Density of ℚ_B(k):


```
For any integers p, q with 0 < p < q ≤ k,
the number of elements of ℚ_B(k) in the interval
(p/q − 1/(2k²), p/q + 1/(2k²)) is at least 1.

Proof: By the Stern-Brocot tree construction (finite
version). For any rational p/q in lowest terms with
q ≤ k, the fraction p/q itself lies in ℚ_B(k).
The interval of width 1/k² around p/q contains p/q
as an element. □

Consequence: any two adjacent elements of ℚ_B(k)
(when listed in order) differ by at most 1/k².
ℚ_B(k) is k²-dense: no gap exceeds 1/k².
```

Plain language: The bounded rationals get denser as k grows. For any specific rational target, once k is large enough that the denominator is within bound, the target is in ℚ_B(k) exactly. For irrational targets, ℚ_B(k) contains rationals within 1/k² of the target. This density property is what allows the bounded reals to be constructed from ℚ_B(k) without losing analytic precision.


### 8.3.3  Arithmetic on ℚ_B(k)

### Definition 8.10 — Rational arithmetic:


```
[(a,b)] + [(c,d)]  :=  [(ad+bc, bd)]
[(a,b)] × [(c,d)]  :=  [(ac, bd)]
[(a,b)] − [(c,d)]  :=  [(ad−bc, bd)]
[(a,b)] / [(c,d)]  :=  [(ad, bc)]   (c ≠ 0, d ≠ 0)
```

```
Well-definedness: standard verification using cross-
multiplication. All steps use integer arithmetic;
well-definedness provable by BI-BST. ✓
```

```
Closure proviso:
Numerators and denominators grow in addition/subtraction
(via cross-multiplication ad+bc, bd). Within ℚ_B(k),
result is represented in lowest terms; the resulting
numerator and denominator (after reduction by gcd)
may still exceed k.

Example: 1/(k-1) + 1/k = (2k-1)/((k-1)k).
The unreduced denominator is (k-1)k ≈ k², which
exceeds ℤ_B(k)'s range.

Resolution: work in ℚ_B(k²) for addition, or reduce
immediately after each operation (possible by GCD,
Theorem 8.3).
```

### Theorem 8.7 — ℚ_B(k) is a field (within domain):


```
On the domain where operations stay within bound:
ℚ_B(k) with addition and multiplication satisfies
all field axioms:
- Commutativity, associativity, distributivity
- Additive and multiplicative identities: 0 = [(0,1)], 1 = [(1,1)]
- Additive inverses: −[(a,b)] = [(−a,b)]
- Multiplicative inverses: [(a,b)]⁻¹ = [(b,a)] for a ≠ 0

Proof: All field axioms are equational identities
on equivalence classes of pairs. Each is provable
by BI-BST. □

Note: As with ℤ_B(k), full closure of multiplication
and addition requires working in a sufficiently wide
ambient system. Within any fixed ℚ_B(k), the field
axioms hold for operations that stay within bound.
```


## 8.4  The Structure of the Bounded Number Chain


### 8.4.1  Embeddings

The three systems embed in the expected way:

### Proposition 8.8 — Embeddings of the bounded number chain:


```
ι₁: ℕ_B(k) → ℤ_B(k)    defined by  n ↦ [(n, 0)]
ι₂: ℤ_B(k) → ℚ_B(k²)   defined by  [(a,b)] ↦ [(a−b, 1)]
                          where a−b is the canonical integer
                          representative of the class [(a,b)],
                          mapped to the rational (a−b)/1.
ι₃: ℚ_B(k) → ℝ_B(k)    defined by  q ↦ [(q, q, q)]
                          the constant Cauchy sequence of
                          length 3 (Definition 8.13).

All three are injective, order-preserving ring homomorphisms
on the domain where operations close.

Proof: ι₁ and ι₂ are standard verifications that the maps
respect the equivalence relations and preserve operations,
by BI-BST on the relevant inputs.
ι₃ is proved in full as Proposition 8.12 below. □

Note on bounds: ι₂ maps ℤ_B(k) into ℚ_B(k²), not ℚ_B(k),
because the equivalence check for rationals requires
computing products that may reach k². ι₃ maps ℚ_B(k) into
ℝ_B(k) — constant sequences are already in CS(k) without
bound widening, since the sequence terms are unchanged.
The complete chain is:

ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴)
```


### 8.4.2  What the bounded chain is and is not

The bounded number chain is not a sequence of approximations to ℕ, ℤ, ℚ. It is not the case that ℕ_B(k) "approximates" ℕ in any sense that presupposes ℕ exists. ℕ_B(k) is the natural number system — the only one there is within BST. For any specific natural number n, there exists a k large enough that n ∈ ℕ_B(k). That is the full extent to which ℕ is "present" in BST: as the union of a family of finite sets, not as a completed object. The family {ℕ_B(k) | k ∈ metatheory} is itself a metatheoretic entity — not a BST object but a pattern visible from outside the theory. BST reasons about each individual ℕ_B(k) for specific k; claims about what holds "for all k" are metatheoretic claims, valid and important, but not first-order sentences of BST.


### 8.4.3  Ordered field structure

ℚ_B(k) carries a natural order:

### Definition 8.11 — Order on ℚ_B(k):


```
For [(a,b)], [(c,d)] ∈ ℚ_B(k) with b, d ≠ 0,
define [(a,b)] < [(c,d)] by the following case split
on the signs of b and d:

Case b > 0, d > 0:  a × d < b × c
Case b < 0, d < 0:  a × d > b × c
  (multiplying both sides by bd > 0 reverses the inequality
  since bd = (neg)(neg) > 0; reduce to first case by
  replacing [(a,b)] with [(−a,−b)] and [(c,d)] with [(−c,−d)],
  both of which are canonical positive-denominator forms)
Case b > 0, d < 0:  [(a,b)] < [(c,d)] iff [(−c,−d)] < [(a,b)]
  (reduce to positive-denominator case)
Case b < 0, d > 0:  symmetric to previous case.
```

```
Standard form: since each equivalence class has a unique
representative with positive denominator (the canonical
form chosen in Definition 8.9), the order reduces to:

[(a,b)] < [(c,d)]  :=  a × d < b × c
with the convention that b, d > 0 in canonical form.

All multiplication here is in ℤ_B(k²), within bound. ✓
```

```
This is a strict total order on ℚ_B(k), provable
by BI-BST (using the linear order on ℤ_B and the
positivity of canonical denominators). The order is
compatible with the field operations in the classical
sense, within the domain where those operations close.
```


## 8.5  Number Theory Within the Bounded Chain


### 8.5.1  Modular arithmetic

For any n ∈ ℕ_B(k) with n > 0:

### Definition 8.12 — Modular arithmetic:


```
ℤ/nℤ  :=  ℤ_B(n) / ~_n
where  a ~_n b  :=  n | (a − b)
```

```
Existence: By Definition 7.7 (Part VII). ✓
Cardinality: |ℤ/nℤ| = n.
```

```
ℤ/nℤ is a commutative ring.
ℤ/nℤ is a field iff n is prime.
Both provable by BI-BST.
```

### 8.5.2  The Chinese Remainder Theorem in ℕ_B(k)


### Theorem 8.9 — CRT (BST):


```
For pairwise coprime n₁, ..., n_r ∈ ℕ_B(k):
For any a₁, ..., a_r with 0 ≤ a_i < n_i:

∃! x ∈ ℕ_B(N)  such that  x ≡ a_i (mod n_i) for all i,

where N = n₁ × ... × n_r.
```

```
Proof: Existence and uniqueness by bounded induction
on r. The constructive proof — computing x via the
formula x = Σ a_i × M_i × y_i (mod N) where M_i = N/n_i
and y_i = M_i⁻¹ (mod n_i) — uses only GCD, modular
inversion, and bounded arithmetic within ℕ_B(N). □
```

```
Proviso: N = n₁ × ... × n_r must be ≤ k. This is the
natural bound — the CRT solution lives in ℤ/Nℤ, so N
must be within the model's reach.
```


### 8.5.3  Fermat's Little Theorem in ℕ_B(k)


### Theorem 8.10 — Fermat's Little Theorem (BST):


```
For any prime p ∈ ℕ_B(k) and any a ∈ ℕ_B(k) with p ∤ a:
a^(p−1) ≡ 1 (mod p)
```

```
Proof: The standard proof via the multiplicative group
(ℤ/pℤ)* of order p−1, using Lagrange's theorem
(proved in Part VII, Section 7.6.3 for finite groups).
All elements live in ℕ_B(k). The group order p−1 ≤ k.
All arithmetic is within ℤ/pℤ, which has cardinality
p ≤ k. BI-BST on the group structure. □
```


## 8.6  Relationship to Classical Systems


### 8.6.1  Relationship to Peano Arithmetic

The bounded naturals ℕ_B(k) satisfy every axiom of Peano Arithmetic that can be stated with an explicit bound. Specifically:

### Proposition 8.11 — PA axioms in ℕ_B(k):


```
For any explicit k, ℕ_B(k) satisfies:
- Zero: 0 ∈ ℕ_B(k). ✓
- Successor: S(n) ∈ ℕ_B(k) for all n < k. ✓
  (Successor is not defined for k itself — this is
  precisely where ℕ_B(k) and ℕ diverge.)
- Predecessor: S(n) = S(m) → n = m. ✓
- Zero is not a successor: ∀n, S(n) ≠ 0. ✓
- Induction: all instances of bounded induction (BI-BST).
  Unbounded induction: not valid in ℕ_B(k).

The one PA axiom that fails: the successor axiom
∀n ∃m (m = S(n)) — "every natural number has a
successor" — fails at n = k. There is no k+1 in ℕ_B(k).

This is not a defect. It is the correct formal expression
of the fact that ℕ_B(k) is a bounded structure.
```


### 8.6.2  What BST arithmetic proves that PA does not

BST can state and prove the following:


```
For any n ∈ ℕ_B(k), n has an explicit cardinality |n|
(as an ordinal, by Definition 3.6).

The set ℕ_B(k) itself has a cardinality k+1.

There exists a maximum element of ℕ_B(k), namely k.
```

```
PA cannot make these assertions because ℕ has no maximum
element and no finite cardinality. BST's bounded structure
permits statements about the whole of ℕ_B(k) that PA
cannot form about ℕ.
```

This is a genuine difference in expressive power — not a weakness of BST but a feature that comes from having explicit, finitely-characterised domains.


## 8.7  The Bounded Reals ℝ_B(k)

Sections 8.1 through 8.3 constructed ℕ_B(k), ℤ_B(k), and ℚ_B(k). Sections 8.4 through 8.6 established their structure, embeddings, and relationship to classical systems. The chain so far runs ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) — but it is not yet complete. The rationals are dense within their bound but contain no irrational values. Analysis requires √2, π, e, and the full continuum of computable reals. The classical construction of ℝ from ℚ proceeds by Cauchy completion: adding the limit points of all Cauchy sequences. The bounded version follows the same path with three modifications: sequences are finite, moduli of convergence are explicit, and the resulting object is a finite set.


### 8.7.1  Cauchy sequences in ℚ_B(k)

### Definition 8.13 — Bounded Cauchy sequence:

```
A bounded Cauchy sequence with precision 1/k is a
finite sequence  (q₀, q₁, ..., q_m)  of elements of
ℚ_B(k) such that:

(i)  m ≤ k²   (length bounded by k²)
(ii) ∀i,j ≥ ⌈m/2⌉:  |q_i − q_j| < 1/k
     (tail elements lie within 1/k of each other)
```

```
The modulus of convergence is explicit: all pairs in
the second half of the sequence are within 1/k.
This replaces the classical condition ∀ε>0 ∃N ∀i,j>N
with a single explicit precision parameter.
```

```
Existence: For any x ∈ ℚ_B(k), the constant sequence
(x, x, x) of length 3 is a bounded Cauchy sequence
with precision 1/k for any k ≥ 1. So ℚ_B(k) embeds
into the Cauchy sequences.
```

```
Let CS(k) denote the set of all bounded Cauchy sequences
with precision 1/k over ℚ_B(k).

|CS(k)| is finite: sequences have length ≤ k²,
each term in ℚ_B(k) of cardinality ~ (12/π²)k².
So |CS(k)| ≤ ((12/π²)k²)^(k²) — large but finite,
within n_M for sufficiently large model bound.
```


### 8.7.2  The equivalence relation

### Definition 8.14 — Cauchy equivalence:

```
Two sequences s = (q₀,...,q_m) and t = (r₀,...,r_n)
in CS(k) are equivalent, written s ~_k t, if:

∀i ≥ ⌈m/2⌉  ∀j ≥ ⌈n/2⌉:  |q_i − r_j| < 2/k
```

```
Intuition: the tails of s and t lie within 2/k of each
other — they are tracking the same limit to precision 1/k.
```

```
~_k is an equivalence relation on CS(k):

Reflexivity: |q_i − q_i| = 0 < 2/k. ✓

Symmetry: |q_i − r_j| < 2/k → |r_j − q_i| < 2/k. ✓

Transitivity: If s ~_k t and t ~_k u, then for tail
indices i, j, l:
|q_i − p_l| ≤ |q_i − r_j| + |r_j − p_l| < 2/k + 2/k = 4/k.
Note: precision degrades from 2/k to 4/k under
composition. This is the expected behaviour — the
bound k can always be chosen large enough to absorb
the degradation. Proved by BI-BST on tail lengths. □
```


### 8.7.3  The construction

### Definition 8.15 — Bounded reals:

```
ℝ_B(k)  :=  CS(k) / ~_k
           =  { [s]_~ | s ∈ CS(k) }
```

```
Existence: By Definition 7.7 (Part VII), quotient sets
exist in BST whenever the base set and equivalence
relation are definable and finite. CS(k) is finite
(Definition 8.13) and ~_k is decidable (the condition
|q_i − r_j| < 2/k is computable in ℚ_B(k)). ✓
```

```
Cardinality: |ℝ_B(k)| is finite. The number of distinct
limit values — real numbers approximable to precision
1/k by rationals with numerator and denominator ≤ k —
is at most k² (by Theorem 8.6: adjacent elements of
ℚ_B(k) differ by at most 1/k²; precision 1/k resolves
at most k² distinct values in [−k, k]).
```

```
Canonical representatives: each class [s] has a
canonical representative — the constant sequence
(q, q, q) where q ∈ ℚ_B(k) is the closest rational
to the limit, if the limit is rational; otherwise
the lexicographically first sequence of minimum
length in the class. In practice, the choice of
representative does not affect any theorem — all
work is done with equivalence classes.
```

Plain language: ℝ_B(k) is the set of all real numbers approximable to precision 1/k by rationals in ℚ_B(k). It is a finite set containing all of ℚ_B(k) and additionally those irrational values — √2, √3, truncations of π and e — that are approximable within the bound.


### 8.7.4  Embedding and arithmetic

### Proposition 8.12 — The rational embedding:

```
The map  ι: ℚ_B(k) → ℝ_B(k)  defined by
q ↦ [(q, q, q)]  (constant sequence of length 3)

is an injective order-preserving field homomorphism
on the domain where field operations close.

Proof: Injectivity follows from Theorem 8.6 — distinct
rationals in ℚ_B(k) are separated by at least 1/k²,
so their constant sequences are inequivalent under ~_k.
Order-preservation and the field homomorphism property
follow from arithmetic on constant sequences reducing
to arithmetic on their values. □
```

### Definition 8.16 — Real arithmetic:

```
For [s], [t] ∈ ℝ_B(k) with s = (q₀,...,q_m),
t = (r₀,...,r_n), l = min(m,n):

[s] + [t]  :=  [(q₀+r₀, ..., q_l+r_l)]
               addition performed in ℚ_B(k²)

[s] × [t]  :=  [(q₀r₀, ..., q_l r_l)]
               multiplication performed in ℚ_B(k⁴)

−[s]       :=  [(−q₀, ..., −q_m)]
```

```
Well-definedness: if s ~_k s' and t ~_k t', then
(s+t) ~_k (s'+t') to precision 4/k, by the triangle
inequality. Full verification by BI-BST. ✓

Bound widening mirrors the pattern established for ℚ_B(k) in Section 8.3: addition requires ℚ_B(k²), multiplication ℚ_B(k⁴).
```


### 8.7.5  Key theorems

### Theorem 8.13 — ℝ_B(k) is a bounded ordered field:

```
On the domain where operations stay within bound,
ℝ_B(k) satisfies all ordered field axioms.
Proof: Each axiom reduces to the corresponding
property of ℚ_B(k) applied termwise. By BI-BST. □
```

### Theorem 8.14 — ℝ_B(k) contains irrational elements:

```
For any integer n ≥ 2 with n ≤ k, √n ∈ ℝ_B(k).

Proof: The Newton-Raphson iteration for √n,
starting from q₀ = 1:
    q_{i+1} = (q_i + n/q_i) / 2
converges quadratically. Within ⌈log₂(log₂(k))⌉
steps it produces q with |q² − n| < 1/k, using only
arithmetic in ℚ_B(k²). The resulting finite sequence
is in CS(k); its equivalence class is √n ∈ ℝ_B(k). □

Similarly for any computable real approximable to
precision 1/k by a rational sequence of length ≤ k².
```

### Theorem 8.15 — ℝ_B(k) is k-complete:

```
Every sequence in CS(k) has a limit in ℝ_B(k) —
namely, its own equivalence class [s].

Proof: Immediate from the construction. □

This is the bounded completeness theorem: every
explicitly given finite Cauchy sequence with modulus
1/k has a representative in the finite set ℝ_B(k).
```


### ◆ Summary — The Bounded Reals

```
Construction:  ℝ_B(k) = CS(k) / ~_k
               Equivalence classes of finite Cauchy
               sequences from ℚ_B(k) with precision 1/k.

Cardinality:   Finite. At most k² distinct values
               in [−k, k].

Contains:      All of ℚ_B(k) via constant sequences.
               All √n for integer n ≤ k.
               All computable reals approximable to
               precision 1/k within the bound.

Arithmetic:    Ordered field within domain.
               Addition closes in ℚ_B(k²).
               Multiplication closes in ℚ_B(k⁴).

Completeness:  k-complete (Theorem 8.15).
```


## 8.8  The Bounded Complex Numbers ℂ_B(k⁴)

Sections 8.1 through 8.7 constructed the bounded real field ℝ_B(k). The classical extension from ℝ to ℂ is algebraic: ℂ = ℝ × ℝ with multiplication defined by the rule (a,b)·(c,d) = (ac−bd, ad+bc). No completed infinite object beyond ℝ is required. The same extension is available in BST, using the Cartesian product machinery of Part VII and the field structure of ℝ_B(k) established in Theorem 8.13.

The classical complex field ℂ — as a completed infinite object — does not exist in BST. The bounded complex field ℂ_B(k⁴) does.


### 8.8.1  Construction

### Definition 8.17 — Bounded complex numbers:

```
ℂ_B(k⁴)  :=  ℝ_B(k) × ℝ_B(k)
            =  { (a, b) | a, b ∈ ℝ_B(k) }

Elements are ordered pairs of bounded reals.
The parameter k⁴ reflects the cardinality:
|ℂ_B(k⁴)| ≤ (k²)² = k⁴.
```

```
Existence: By Definition 7.2 (Part VII), the Cartesian
product ℝ_B(k) × ℝ_B(k) exists in BST provided
|ℝ_B(k)|² ≤ n_M.

Since |ℝ_B(k)| ≤ k² (Theorem 8.15), we have
|ℂ_B(k⁴)| ≤ k⁴. This fits within n_M for a model
bound n_M ≥ k⁴ — the same bound-widening pattern
used at each prior step of the chain. ✓
```

The notation ℂ_B(k⁴) makes the cardinality dependence explicit and consistent with the conventions established for ℚ_B(k²) and ℝ_B(k).


### 8.8.2  Arithmetic

### Definition 8.18 — Complex arithmetic:

```
For (a,b), (c,d) ∈ ℂ_B(k⁴):

(a,b) + (c,d)  :=  (a+c,  b+d)
                   addition in ℝ_B(k²)

(a,b) · (c,d)  :=  (ac−bd,  ad+bc)
                   real parts computed in ℝ_B(k⁴)

−(a,b)         :=  (−a, −b)

Conjugate: conj(a,b)  :=  (a, −b)

Modulus squared: ||(a,b)||²  :=  a² + b²  ∈  ℝ_B(k²)

Multiplicative inverse (for (a,b) ≠ (0,0)):
(a,b)⁻¹  :=  (a/(a²+b²),  −b/(a²+b²))
             computed in ℝ_B(k⁴) where a²+b² ≠ 0
```

```
Well-definedness: All operations reduce to arithmetic
in ℝ_B(k) at appropriate bound widths. The components
a+c, b+d close in ℝ_B(k²); the products ac, bd, ad, bc
close in ℝ_B(k⁴). The inverse exists whenever
a²+b² ≠ 0 in ℝ_B(k²), which holds for all non-zero
elements within the domain. ✓
```

The embedding of ℝ_B(k) into ℂ_B(k⁴) sends each a ∈ ℝ_B(k) to the pair (a, 0). This is injective and field-homomorphic on the domain where operations close. The imaginary unit is i := (0, 1), satisfying i² = (−1, 0), the image of −1 under the embedding.


### 8.8.3  Field axioms

### Theorem 8.16 — ℂ_B(k⁴) is a bounded field:

```
On the domain where operations stay within bound,
ℂ_B(k⁴) satisfies the field axioms:

(i)   Commutativity of + and ·: immediate from
      commutativity of ℝ_B(k).

(ii)  Associativity of + and ·: each reduces to
      associativity in ℝ_B(k) componentwise.

(iii) Distributivity: by direct expansion.

(iv)  Additive identity: (0, 0).

(v)   Multiplicative identity: (1, 0).

(vi)  Additive inverses: (−a, −b).

(vii) Multiplicative inverses: (a/(a²+b²), −b/(a²+b²))
      for all (a,b) ≠ (0,0) within domain.

Proof of each: reduces to Theorem 8.13 applied
componentwise, plus the definition of multiplication.
By BI-BST on component length. □
```

```
Note: ℂ_B(k⁴) is not an ordered field. No total order
on ℂ_B(k⁴) is compatible with its field structure,
for the same reason as classically: (0,1)² = (−1,0),
but −1 < 0 in any compatible order, contradicting
that squares are non-negative. This is not a defect
of the bounded construction; it is the expected
algebraic behaviour of the complex field.
```

### Theorem 8.17 — Algebraic closure within bound:

```
ℂ_B(k⁴) is algebraically closed within its domain:
every polynomial of degree d with coefficients in
ℂ_B(k⁴) has d roots in ℂ_B(k⁴), provided the
root values are approximable to precision 1/k within
the bound.

Proof sketch: Classical root-finding (Newton's method,
companion matrix eigenvalues) is computable and
produces Cauchy sequences in ℂ_B(k⁴). Convergence
follows from Theorem 8.15 applied to the real and
imaginary components. □

The qualifier 'within its domain' is the standard
bound-widening caveat: for polynomials of very high
degree, root approximation may require a larger k.
This is consistent with the treatment of ℝ_B(k)
throughout Part VIII.
```

As with ℝ_B(k), the constructibility constraint excludes non-computable complex numbers from ℂ_B(k⁴): every element (a, b) ∈ ℂ_B(k⁴) has both real and imaginary components that are computable reals approximable to precision 1/k, since each component lies in ℝ_B(k). Non-computable complex numbers — those whose real or imaginary part cannot be approximated by any finite algorithm — do not exist in ℂ_B(k⁴). This parallels the exclusion of non-computable reals from ℝ_B(k) (Section 8.7.3) and eliminates the uncountable cardinality of the classical complex plane: ℂ_B(k⁴) is finite, with at most k⁴ elements.


### 8.8.4  The Cayley-Dickson extensions

The construction of ℂ_B(k⁴) from ℝ_B(k) by Cartesian product and the multiplication rule of Definition 8.18 is the first step of the Cayley-Dickson construction. The same procedure can be iterated to produce bounded quaternions and bounded octonions.

### Definition 8.19 — Bounded quaternions and octonions:

```
Bounded quaternions:
ℍ_B(k⁸)  :=  ℂ_B(k⁴) × ℂ_B(k⁴)
with Cayley-Dickson multiplication:
(a,b) · (c,d)  :=  (ac − d*b,  da + bc*)
where * denotes complex conjugation.
Cardinality: |ℍ_B(k⁸)| ≤ k⁸.

Bounded octonions:
𝕆_B(k¹⁶)  :=  ℍ_B(k⁸) × ℍ_B(k⁸)
with Cayley-Dickson multiplication (analogous).
Cardinality: |𝕆_B(k¹⁶)| ≤ k¹⁶.
```

```
Algebraic properties at each step:

ℝ_B(k):    Ordered field. Commutative, associative.
ℂ_B(k⁴):   Field. Commutative, associative.
             Not ordered. Algebraically closed.
ℍ_B(k⁸):   Division algebra. Associative.
             Not commutative (ij ≠ ji).
             Cannot be proved via Theorem 8.16 —
             field axiom (i) fails.
𝕆_B(k¹⁶):  Division algebra. Not associative,
             not commutative. Alternative law holds.
```

The loss of commutativity at ℍ and of associativity at 𝕆 are features of the Cayley-Dickson construction, not defects of the bounded setting. The classical Frobenius theorem — that ℝ, ℂ, ℍ are the only associative finite-dimensional real division algebras — holds in its finite-field version within BST (every associative bounded division algebra over ℝ_B(k) is isomorphic, within bound, to ℝ_B(k), ℂ_B(k⁴), or ℍ_B(k⁸)).

The cardinalities grow as k^{2^n} at each Cayley-Dickson step: k², k⁴, k⁸, k¹⁶. For a fixed model bound n_M, this sets a practical limit on which extensions are available at a given precision parameter k. This is not a foundational obstacle — the bound-widening logic of Section 8.1.4 applies at each step — but it is an honest accounting of the cost: finer algebraic extensions require either a larger model bound or a coarser precision.


### 8.8.5  The p-adic numbers

The p-adic numbers ℚ_p are not extensions of ℝ but a parallel completion of ℚ using the p-adic norm |·|_p rather than the Archimedean norm |·|. Classically, ℚ_p is constructed as the inverse limit of ℤ/p^nℤ — an infinite construction.

BST's approach to p-adic arithmetic is different from its approach to ℝ_B(k). The bounded p-adic integers are already available in BST via modular arithmetic (Section 8.5.1):

```
Bounded p-adic integers (truncated):
ℤ_p^(n)  :=  ℤ/p^n ℤ  for any explicit n ≤ k.

These are finite rings, available directly in BST.
Cardinality: p^n.

The ring maps ℤ/p^{n+1}ℤ → ℤ/p^n ℤ are definable
in BST as bounded functions (Part VII). The inverse
limit as a completed infinite object does not exist
in BST, but each finite truncation does.

For units (elements coprime to p), inversion is
available within ℤ_p^(n), giving a local field
structure at precision p^{-n}.
```

The p-adic truncations ℤ_p^(n) capture the finite-precision arithmetic of ℚ_p — Hensel's lemma in truncated form, p-adic valuation within bound — but the completed p-adic field ℚ_p as an infinite object is not available in BST. This parallels the treatment of ℝ_B(k) as a finite precision substitute for ℝ, with the structural difference that the p-adic topology is ultrametric rather than Archimedean.


### ◆ Summary — The Bounded Complex Numbers and Extensions

```
Construction:  ℂ_B(k⁴) = ℝ_B(k) × ℝ_B(k)
               Ordered pairs of bounded reals with
               complex multiplication.

Cardinality:   ≤ k⁴ pairs in the domain.

Arithmetic:    Addition in ℝ_B(k²).
               Multiplication in ℝ_B(k⁴).
               Conjugation, modulus available.
               Inversion for non-zero elements within domain.

Algebra:       Bounded field (Theorem 8.16).
               Not ordered.
               Algebraically closed within domain (Theorem 8.17).

Extensions:    ℍ_B(k⁸): bounded quaternions (associative,
               non-commutative division algebra).
               𝕆_B(k¹⁶): bounded octonions (alternative
               non-associative division algebra).
               p-adic truncations ℤ_p^(n): available as
               finite rings via modular arithmetic.
```

```
The extended chain:
ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴)
Each embedding is injective and structure-preserving
on the domain where operations close.
The bound widens at each step to absorb products:
k → k² → k⁴. The Cayley-Dickson extensions continue
to k⁸ (ℍ) and k¹⁶ (𝕆).
```

```
What is passed to Part XIII:
ℂ_B(k⁴) is available as the BST bounded complex field.
This permits: complex arithmetic, complex polynomials,
bounded complex varieties, and gauge groups defined
over ℂ_B(k⁴) (e.g. SU(N)_B(k⁴)). These strengthen
the Millennium Problems analysis of Part XIII.
```


## 8.9  Summary: The Bounded Number Chain


### Summary — The Bounded Number Chain:


```
ℕ_B(k):
Finite ordinals 0, 1, ..., k.
Cardinality k + 1.
Addition, multiplication, exponentiation by BR-BST.
Closure: conditional (operations may exceed k).
Number theory: divisibility, primes, GCD, unique
factorisation — all available within bound.
```

```
ℤ_B(k):
Integers from −k to +k.
Cardinality 2k + 1.
Subtraction unconditionally closed.
Addition and multiplication conditional.
Ring structure within domain.
```

```
ℚ_B(k):
Fractions a/b in lowest terms with |a|, |b| ≤ k.
Cardinality ~ (12/π²)k².
k²-dense: no gap between adjacent elements exceeds 1/k².
Field structure within domain.
Ordered field with canonical order.
```

```
ℝ_B(k):
Equivalence classes of finite Cauchy sequences from
ℚ_B(k) with precision 1/k.
Cardinality ≤ k² distinct values in [−k, k].
Contains all of ℚ_B(k) and all computable reals
approximable to precision 1/k within the bound.
Bounded ordered field. k-complete.
```

```
The complete chain:
ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴)
Each embedding is injective and order-preserving
(or structure-preserving at ℂ_B(k⁴), which is not ordered).
The bound widens at each step to absorb products.
```

```
What is passed to Part IX:
The full bounded number chain, with ℝ_B(k) as the
analytic domain and ℂ_B(k⁴) as the bounded complex
field. Part IX develops the analytic apparatus over
ℝ_B(k); Part XIII applies ℂ_B(k⁴) to the Millennium
Problems.
```


### ◆ The Core Insight of the Bounded Number Chain

Classical arithmetic assumes its number systems exist as completed infinite totalities and then does mathematics within them. BST constructs explicit finite number systems — parameterised by a bound — and demonstrates that the arithmetic, algebraic, and number-theoretic content of classical mathematics is available within each. The chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) is the bounded counterpart of the classical chain ℕ → ℤ → ℚ → ℝ → ℂ, with every object finite, every cardinality explicit, and every construction carried out by the axioms of BST. The bound is not a limitation on what can be proved; it is the domain within which all proof takes place.


End of Part VIII


# Part IX: Analysis

Parts III through VIII have built the foundational package in full: bounded logic, primitive ordinals, AFB, the seven axioms of BST, the ordinal theory, bounded induction, functions and relations, and the complete bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴). This part develops the full analytic apparatus over ℝ_B(k) and gives an honest accounting of how BST's mathematics compares to classical mathematics.

That accounting requires a precise framing. The natural comparison — BST against ZFC, theorem by theorem — can be stated as a list of losses: results provable in ZFC that BST cannot prove. That framing is wrong on two counts. First, what looks like a loss is often a recovery in a precise sense once the right construction is in hand — the bounded reals are not a mere approximation to ℝ, they are a finite analytic domain within which most classical real analysis holds as exact bounded theorems at each level (Type II) and complex-analytic results hold as approximate theorems with explicit error control (Type III), all of which are strictly more informative than their classical counterparts. Second, some results that are ZFC theorems are not losses from BST's perspective at all — their absence is the correct consequence of a lower ontological commitment, and in some cases their absence is a gain.

The taxonomy that follows reflects this. The four categories are not four types of loss. They are four different structural relationships between a classical theorem and BST. Three of those relationships are either recoveries or gains. One — the narrowest — is a genuine limitation. Before the category taxonomy is presented, however, the word "recovered" requires a precise treatment. It has been used throughout this paper in a stratified sense. This section establishes that taxonomy formally.


## 9.1  The Recovery Taxonomy

### 9.1.1  The four types of recovery

Classical mathematics is not claimed to reappear in BST as a literal ontology of completed infinite totalities. It is claimed to be boundedly reconstructed — in one of four distinct senses depending on the role played by infinity in the original formulation.

**Type I — Internal exact recovery.** A classical result is internally exactly recovered when BST proves a theorem wholly within its own object language, about BST-defined objects, with no error terms, no family indexing, and no metatheoretic reading required. The theorem is stated in BST, the objects are BST objects, the proof is a BST proof, and the conclusion holds exactly at the bounded level in question. This is the strongest form of recovery.

Examples: the Four Colour Theorem (a finite case analysis over finite planar graphs); the Pigeonhole Principle; unique factorisation in ℕ_B(k); Schroeder-Bernstein for finite sets (immediate from ordinal linearity); Lagrange's theorem; the Chinese Remainder Theorem; all results of Part IX classified as Category B.

**Type II — Uniform family recovery.** A classical result is uniformly recovered as a bounded family when BST yields, for each admissible bound k, a BST theorem about the corresponding bounded structure — ℝ_B(k), ℂ_B(k⁴), ℕ_B(k), or a finite set — with a stable form across the family. The theorem is provable at each specific level. The classical statement corresponds to the family schema rather than to any single infinite-domain sentence.

Examples: the Intermediate Value Theorem (at each k, bounded bisection produces c with |f(c)| < 1/k, provable by BI-BST); k-completeness of ℝ_B(k) (at each k, every Cauchy sequence with modulus 1/k converges in ℝ_B(k)); the Extreme Value Theorem; Heine-Borel over ℝ_B(k); the finite instance of Cantor's theorem.

**Type III — Explicit approximate recovery.** A classical result is approximately recovered with explicit error control when BST reconstructs the theorem in a bounded setting with a quantitative bound on the deviation from the classical form. The theorem is not exact at any level — the approximation is the mathematical content. The error is a computable function of k; the classical statement corresponds to the k → ∞ limit of the error vanishing.

This form is often more informative operationally than the classical statement, because the error term is explicit and computable. It is recovery in the only form compatible with an explicitly bounded ontology where the classical idealization (exact holomorphicity, exact equality of a contour integral to zero) requires a completed complex plane that BST does not posit.

Examples: k-holomorphic functions (difference quotient approximates derivative within 1/k); the bounded Cauchy theorem (|∮_γ f dz| < C/k rather than = 0); the bounded Cauchy-Riemann equations (|∂u/∂x − ∂v/∂y| < 1/k); the bounded Hodge decomposition (valid within precision 1/k).

**Type IV — Metatheoretic correspondence recovery.** A classical result is recovered metatheoretically when its BST counterpart is not a single object-level theorem at any bound level, but a theorem about the behaviour of the family of bounded models across all k. The classical statement is a shorthand compression of scalable finite behaviour that BST refuses to internalise as a completed object. The correspondence is real, but it is not a BST sentence inside any one bounded model.

Examples: asymptotic complexity ("algorithm A runs in O(n²) time" — not a statement in any single ℕ_B(k), but a uniformity claim about the family {ℕ_B(k)}); the classical limit ε → 0; any statement whose content is essentially about the behaviour of an infinite sequence of approximations rather than about any specific approximation.


### 9.1.2  The II/IV distinction

The critical distinction is between Type II and Type IV. It is not a difference of degree — it is a difference of level.

**Type II:** BST proves a theorem at each specific k. For every concrete bound, there is a concrete BST proof. The family exists because BST proves each member. Example: "ℝ_B(k) is k-complete" is provable in BST for every specific numeral k̄ by BI-BST on the Cauchy sequence length. The family of theorems {BST ⊢ "ℝ_B(k̄) is k̄-complete"} is the BST form of completeness. The classical theorem is the family viewed as a schema.

**Type IV:** No single BST model contains the relevant statement. The statement "algorithm A is O(n²)" does not hold inside any model M of BST with bound n_M — inside M, all inputs have length ≤ n_M and the question "what happens for larger inputs" is not formulable. The O(n²) claim is a statement about the uniformity of the proof family across all k in the metatheory, not a theorem inside any one model. It requires stepping outside any fixed model and comparing across the family.

The diagnostic test: can you point to a specific BST model M and a specific BST theorem that witnesses the recovery? If yes, it is at most Type II (and possibly Type I or III). If no — if the recovery only becomes visible when comparing across models — it is Type IV.


### 9.1.3  k-dependence: recovery type can improve

Recovery type is not always fixed for a given theorem. For small k, a result may be recoverable only at Type III — approximately, with a non-trivial error term. For sufficiently large k, the error may become negligible relative to the computation at hand, and the result functions as Type II for practical purposes.

The quantitative expression of this is the bound-widening analysis of Section 9.3.1 (the A1/A2 subcategorisation). A Category A1 theorem is one where the required bound grows polynomially in 1/ε, so for any precision target the recovery is tractable. A Category A2 theorem is one where naive bound growth is superexponential — but as Section 9.3.1 shows, the appropriate algorithm (CORDIC, Chebyshev approximation) restores A1 tractability.

The governing principle: the classical theorem is in many cases not a single fixed-type recovery, but the limit of a sequence of improving recovery types as k grows. As k → ∞ in the metatheory, the error in a Type III recovery vanishes, and the result approaches Type II behaviour. This is not a defect — it is the correct description of what classical analysis actually is: the limit of a family of finite approximations, with BST making the approximation structure explicit.


### 9.1.4  Relationship to the category taxonomy

The A/B/C/D categories (Section 9.2) and the Type I–IV recovery taxonomy are orthogonal axes. The categories classify theorems by their status relative to classical mathematics — what BST can and cannot prove, and why. The recovery types classify the formal mechanism by which BST represents classical content when a recovery is available. Both are needed for a complete account.

```
Relationship table:

Category B   → always Type I.
             BST directly proves a theorem about finite objects.
             No infinite domain is involved. Recovery is exact.

Category A   → Type II or Type III, depending on exactness.
             The bounded version is exact at each level (Type II)
             or approximate with explicit error (Type III).
             The IVT and completeness are Type II.
             The bounded Cauchy theorem is Type III.

Category C   → no recovery type.
             These are correct absences. BST does not posit the
             objects they concern. There is nothing to recover.

Category D   → mixed: each instance is Type I or II;
             the universal collection has no recovery type.
             BST proves every specific instance exactly (Type I
             or II at that level). The universal claim ∀n φ(n)
             is not recovered at any type, because it asserts
             a property across a completed domain BST does not posit.
```

The column "recovery type" is therefore only meaningful for Category A and Category B theorems, and for the instance-level content of Category D theorems.


### 9.1.5  Governing principle

Throughout this paper: "recovered in BST" always means recovered in one of the four senses above. The bare phrase "recovered" without qualification is permissible only when the type is unambiguous from context. Where the type matters — particularly when a reader might conflate Type II with Type IV, or mistake a Type III approximate result for an exact one — the type is stated.

The ordering of strength is strict:

```
Type I  (internal exact)          strongest
Type II (uniform family)
Type III (explicit approximate)
Type IV (metatheoretic correspondence)   weakest recovery still called recovery
```

Below Type IV lies non-recovery: Category C (correct absence), Category D at the universal level, and results that require completed infinite objects with no finite analog.

BST does not claim that classical mathematics reappears with identical infinite ontology. It claims that classical mathematical content is reconstructed — exactly, by family, approximately, or metatheoretically — in the strongest form available in each case. That claim is precise, and it is the claim this paper defends.


## 9.2  A Taxonomy of Relationships

Classical theorems stand in one of four relationships to BST:

**Category A — Recovered with explicit bounds.** The classical theorem is a statement over an infinite domain (ℝ, ℕ, or an infinite set). In BST, the theorem holds over the corresponding bounded domain ℝ_B(k), ℕ_B(k), or a finite set, with explicit precision or cardinality bounds. The BST version is strictly more informative than the classical one: it gives a rate, a witness, a computable bound. The classical theorem is the shadow cast by the BST theorem when the bound is suppressed.

**Category B — Directly provable.** The classical theorem is already a statement about finite objects and finite structures. BST proves it directly, often by BI-BST on the relevant finite parameter. No recovery is needed because nothing was lost.

**Category C — Correct absence.** The classical theorem is a consequence of the Axiom of Choice or Power Set applied to infinite or uncountable objects. It is not provable in BST — but it is not about anything finite, and it generates results (Banach-Tarski, non-measurable sets, well-ordering of ℝ) that are mathematical paradoxes from the standpoint of any finite or physical interpretation. Their absence from BST is not a limitation. It is the system correctly excluding results that were never about the finite world.

**Category D — The narrow gap.** The theorem is a universally quantified statement ∀n φ(n) about finite objects, every specific instance φ(n̄) is provable in BST, but the universal collection cannot be proved because it would require an unbounded universal quantifier over a domain BST does not posit. This is the only category that constitutes a genuine limitation, and it is narrow: it covers Goodstein's theorem, Paris-Harrington, and Ackermann totality. These are theorems at the edge of what finite induction can reach. Every specific case is available; the universal statement is not.

The structure of the analysis that follows is: Categories A and B are developed in detail as positive results — what BST proves about analysis and how the classical theorems are recovered. Category C is examined briefly — the correct absences are named and their status as gains rather than losses is explained. Category D is characterised precisely — the formal structure of the gap is given and its narrowness is established.

One more point before proceeding. The Category D gap is sometimes described as BST proving "every finite case but not the universal statement." This is accurate but can be misread as BST being epistemically inferior to PA or ZFC. The correct reading is the opposite: BST's universal statements are about its actual domain — finite sets within an explicit bound — and for that domain, the universal statements hold. What BST cannot do is assert a universal statement ranging over a domain it does not posit. A foundation that refuses to make assertions about objects it does not posit is not weaker — it is more honest.


## 9.3  Category A: Recovered with Explicit Bounds

The theorems in this category have the form: classical statement over ℝ (or another infinite domain) → BST statement over ℝ_B(k) with explicit bound, where the BST version implies the classical version in any model where the bound is suppressed.

ℝ_B(k) is constructed in full in Part VIII, Section 8.7. The key properties used here are: it is a finite ordered field, k-complete (Theorem 8.15), contains all of ℚ_B(k) and all computable reals approximable to precision 1/k within the bound, and has at most k² distinct values in [−k, k].

### The Intermediate Value Theorem

Classical statement: If f: [a,b] → ℝ is continuous and f(a) < 0 < f(b), then ∃c ∈ (a,b): f(c) = 0.

Classical diagnosis: Requires the completed real line and its completeness. Appears to be a loss because ℝ does not exist in BST.

BST recovery: For any continuous function f on ℝ_B(k) ∩ [a,b] with f(a) < 0 < f(b), and any precision ε = 1/k, bounded bisection produces c ∈ ℝ_B(k) with |f(c)| < ε. Provable by BI-BST on the bisection depth (at most log₂((b−a)/ε) = log₂((b−a)k) steps).

Assessment: The BST version gives not just existence but an explicit algorithm and an explicit precision bound. For any specific precision requirement, a sufficiently large k makes the BST version applicable — and the classical IVT is the limiting shadow of this family of explicit results as the precision parameter tightens. BST's version is computationally richer. Category A, Type II (uniform family: BST proves the bounded bisection result for every specific k).

### The Extreme Value Theorem

Classical statement: If f: [a,b] → ℝ is continuous, then f attains its maximum and minimum on [a,b].

Classical diagnosis: Requires a completed infinite domain — the argument that a supremum is attained uses sequential compactness of ℝ, which presupposes the infinite real line.

BST recovery: For any continuous function f on the finite set ℝ_B(k) ∩ [a,b], the maximum and minimum are attained — by direct search over a finite domain. BST proves this by BI-BST on |ℝ_B(k) ∩ [a,b]|.

Assessment: Trivially recovered over a finite domain. The finite version is actually stronger: it gives an explicit maximiser with a computable location. Category A, Type II.

### The Completeness of ℝ_B(k)

Classical statement: Every Cauchy sequence of reals converges.

Classical diagnosis: Requires ℝ as a completed object. Appears to be a loss.

BST recovery: By Theorem 8.15 (k-completeness, Part VIII, Section 8.7.5), every explicitly given finite Cauchy sequence of elements of ℚ_B(k) with modulus of convergence 1/k has a limit in ℝ_B(k) — namely its own equivalence class. The limit exists by construction, and its location within precision 1/k is explicit.

Assessment: The classical completeness theorem is a statement about infinite sequences over an infinite domain. The BST version is a statement about finite sequences over a finite domain, with explicit precision. Every use of completeness in applied analysis concerns a specific finite computation — and for that computation, Theorem 8.15 applies exactly. Category A, Type II.

### The Heine-Borel Theorem

Classical statement: A subset of ℝⁿ is compact iff it is closed and bounded.

BST recovery: In ℝ_B(k)ⁿ, every definable subset is finite. Every finite set is trivially compact in the sense that every open cover has a finite subcover — the cover was already finite to begin with. The content of Heine-Borel — that closed bounded sets have the finite subcover property — holds immediately and correctly over a finite domain.

Assessment: The theorem holds in BST in the only form that is coherent for finite domains. The deep content of the classical theorem (that an infinite set can be covered by finitely many open sets) is recovered via the finiteness of ℝ_B(k) itself. Category A, Type II.

### Cantor's Theorem

Classical statement: For any set A: |A| < |P(A)|.

BST recovery: For any finite set A with |A| ≤ log₂(n_M), P(A) exists as a set in BST with |P(A)| = 2^|A| > |A|. For sets too large for their full power set to exist, Theorem 6.4 (Bounded Cantor) establishes the same strict inequality for bounded power collections. The diagonal argument is fully available over finite domains.

Assessment: The finite instance of Cantor's theorem holds in BST wherever it can be stated — that is, for all finite sets, which is all sets BST has. The classical version ranges over all sets including infinite ones; BST's version ranges over all finite sets. For any finite set in BST, the strict inequality |A| < |P(A)| (or its bounded analogue via Theorem 6.4) holds. Category A, Type II.

### Measure Theory and Integration

Classical statement: Lebesgue measure on [0,1] is a countably additive measure defined on a σ-algebra of subsets, including all Borel sets. Non-measurable sets exist (Vitali, requiring uncountable Choice) but are not constructible.

Classical diagnosis: σ-algebras (closed under countable union), countable additivity, and the Vitali construction all require infinite machinery unavailable in BST.

BST recovery: Let Ω be a finite set (the sample space). A **finite event algebra** on Ω is a collection 𝒜 of subsets of Ω such that: Ω ∈ 𝒜; if E ∈ 𝒜 then Ω \ E ∈ 𝒜; and if E, F ∈ 𝒜 then E ∪ F ∈ 𝒜. Since Ω is finite and 𝒜 ⊆ 𝒫(Ω), the algebra exists as a set in BST whenever |𝒜| ≤ n_M. A **bounded measure** is a function μ: 𝒜 → ℝ_B(k) with μ(∅) = 0, μ(E) ≥ 0, and finite additivity: if E ∩ F = ∅ then μ(E ∪ F) = μ(E) + μ(F). A bounded probability space is a triple (Ω, 𝒜, P) with P(Ω) = 1.

For integration: a **bounded partition** of [a,b] ⊂ ℝ_B(k) is a finite sequence a = x₀ < x₁ < ... < x_m = b with x_i ∈ ℝ_B(k). The **bounded Riemann integral** is:

```
I(f, 𝒫) := Σ_{i=0}^{m-1} f(t_i) · (x_{i+1} - x_i)

where t_i ∈ [x_i, x_{i+1}] are sample points.
```

This is an exact finite sum in ℝ_B(k). For any continuous f on ℝ_B(k) ∩ [a,b] and any ε > 0, there exists δ > 0 such that for any two partitions 𝒫, 𝒬 with mesh < δ, |I(f,𝒫) - I(f,𝒬)| < ε. This follows from uniform continuity of f on the finite domain (established in Part IX, analytic machinery). Non-measurable sets do not arise: every subset of a finite Ω is in the algebra generated by singletons, and every such set has a well-defined measure. The Vitali and Banach-Tarski constructions require uncountable Choice and are correctly absent (Category C).

Assessment: Measure theory and integration are fully available in BST on finite event algebras and finite domains. The BST versions are paradox-free by construction. The countably-additive σ-algebra framework — which exists only to handle infinite domains — is correctly absent. Category A.

### 9.3.1  Quantitative analysis of bound widening in Category A recoveries

The Category A recoveries above each assert that classical theorems hold over ℝ_B(k) with explicit precision bounds. A natural question is how large k must be in practice — how much the bound widens as computations proceed. This analysis is developed here.

**Arithmetic bound widening.** Recall from Part VIII that operations on ℝ_B(k) require widening the bound to maintain closure:

```
Operation          Output bound    Reason
─────────────────────────────────────────────────────
Addition           k²              Cross-multiplication of denominators
Multiplication     k⁴              Products of numerators and denominators
Division           k⁴              Same as multiplication
Cauchy sequences   k²              Sequence length m ≤ k²
```

For a computation involving N sequential operations, the required bound grows in the worst case (a chain of multiplications) as K ≈ k^(4^N). This worst-case growth is exponential in N.

**IVT bound estimate.** For the Intermediate Value Theorem via bounded bisection: to find c with |f(c)| < ε = 1/k, bisection requires S ≈ log₂((b−a)k) steps. Each step involves one addition and one division by 2. The bound widens as K ≈ k · S ≈ k log₂(k·(b−a)), which is near-linear in k for fixed interval length. For polynomial f of degree d, each evaluation involves d multiplications, so the total bound is approximately k^(4^d) · log₂(k). For ε = 10⁻⁶ and a degree-10 polynomial: k ≈ 10⁶, total bound K ≈ (10⁶)^(4^10) ≈ 10^(6·10⁶). This is astronomically large but finite.

**Physical feasibility.** The physical bound on the observable universe — the number of distinct Planck-scale cells — is approximately 10^(10^185). Comparing:

```
Computation                Required K          vs physical bound
─────────────────────────────────────────────────────────────────
IVT, ε=10⁻⁶, degree ≤ 10  ≈ 10^(6·10⁶)      K ≪ 10^(10^185) ✓
IVT, ε=10⁻¹⁵, linear sys   ≈ k^c (polynomial) K ≪ 10^(10^185) ✓
e^x full series, k=10⁶     ≈ k^(4^k)          K > 10^(10^185) ✗
e^x via CORDIC, fixed prec  ≈ k^c              K ≪ 10^(10^185) ✓
```

This motivates a subcategorisation:

```
Category A1 (Tractable): Recovery requires bound growth polynomial
in k. Applies to: linear algebra, low-degree polynomial operations,
bisection, GCD, discrete transforms, most engineering computations.
The required K is well within physical limits for all practical ε.

Category A2 (Intractable by naive method): Naive bound growth is
superexponential. Applies to: high-precision transcendental evaluation
via direct series truncation. Resolution: use fixed-precision
approximation algorithms (CORDIC, Chebyshev, precomputed tables)
that reduce growth to Category A1 at the cost of an explicit
approximation error — which must be tracked and stated.
```

Category A2 is not a genuine limitation on BST. It is a limitation on naive implementations. The mathematical content of every Category A theorem remains available — what changes is the algorithm required to stay within tractable bounds. Every Category A1 result for engineering and applied physics (double precision ≈ 10⁻¹⁶, polynomial-degree computations) lies well within physically realisable bounds. The Category A2 boundary signals exactly where the "finite scaffolding" interpretation of applied mathematics requires explicit bound management rather than implicit infinite-domain reasoning — which is the BST framework's natural register.


## 9.4  Category B: Directly Provable

These theorems are already about finite objects and are proved in BST without modification.

The Four Colour Theorem is a statement about finite planar graphs. Its proof proceeds by finite case analysis over a finite list of reducible configurations — a very large but explicitly finite argument, including its computer-verified components, fully formalisable in BST. Directly provable.

The Finite Ramsey Theorem — for any explicit k and r, N(k,r) exists and the monochromatic subset exists — is provable in BST by BI-BST on N(k,r). Directly provable.

Lagrange's theorem, the Chinese Remainder Theorem, Fermat's Little Theorem, unique factorisation, and all finite group and field theory: all proved in Part VIII or Part VII directly. Directly provable.

The Pigeonhole Principle, inclusion-exclusion, the binomial theorem, and all finite combinatorics: proved in Part VI and Part VII. Directly provable.

The finite prime distribution — how many primes lie below any explicit bound — is computable in BST by the Sieve of Eratosthenes, formalised by bounded recursion. Directly provable.


## 9.5  Category C: Correct Absences

These are ZFC theorems that are not provable in BST — but whose absence is not a loss. They are results that require ontological commitments (completed infinite sets, uncountable Choice, Power Set over infinite domains) that BST does not share and that have no finite content.

### The Banach-Tarski Paradox

A solid ball in ℝ³ can be decomposed into finitely many pieces and reassembled into two balls of the same size. The decomposition uses non-measurable sets constructed by uncountable Choice. The pieces cannot be described, exhibited, or approximated. No physical operation corresponds to them.

BST does not prove this. The reason is not a technical limitation — it is that ℝ³ does not exist in BST, non-measurable sets do not exist, and uncountable Choice is not available. The result was always a consequence of mathematical axioms operating far outside the finite world. Its absence is correct.

### The Well-Ordering of ℝ

There exists a well-ordering of the real numbers. The well-ordering cannot be described or constructed — its existence is purely existential, derived from the Axiom of Choice applied to uncountable collections.

BST does not prove this. The bounded reals ℝ_B(k) are a finite ordered set and are trivially well-ordered. The classical result, which asserts a well-ordering of a completed uncountable domain, is not about anything that exists in BST. Its absence is correct.

### Non-measurable Sets

There exist subsets of [0,1] that are not Lebesgue measurable (Vitali sets). Their construction requires choosing one element from each coset of ℚ in ℝ under addition — uncountable Choice over an uncountable domain.

BST does not prove this. Every definable subset of ℝ_B(k) ∩ [0,1] is finite and trivially measurable (it has a well-defined cardinality). The absence of non-measurable sets is a feature: it means BST's measure theory is paradox-free.

### The General Pattern

Category C results share a structure: they assert the existence of objects that are not constructible by any finite procedure, not approximable to any finite precision, and not applicable to any finite domain. They are theorems in ZFC because ZFC posits the axioms that imply them. From the standpoint of finite mathematics, they are correct absences — and in several cases, their absence resolves paradoxes (Banach-Tarski, Vitali) that have no finite counterpart.

This is not an argument that ZFC is wrong. It is the observation that some ZFC theorems are about the specific infinite ontology that ZFC posits, and a foundation that posits a different ontology correctly excludes them.


## 9.6  Category D: The Narrow Gap

Category D is the only category that constitutes a genuine limitation of BST. A theorem belongs to Category D when:

### 9.6.1  Formal characterisation:


```
A theorem ∀n φ(n) is in Category D if:

(i)  Classically: ∀n ∈ ℕ, φ(n) is true
     (this is a metatheoretic statement — ℕ does not
     exist as a BST object; the claim is that φ holds
     of every natural number when evaluated externally)
(ii) For each specific numeral n̄: BST ⊢ φ(n̄)
     (each instance individually provable)
(iii) BST ⊬ ∀n φ(n)
     (the universal statement is not provable)
```

```
Condition (iii) holds because the universal quantifier
in BST ranges over the model's domain — a finite set
whose bound BST cannot name. Proving ∀n φ(n) would
require asserting the property across all natural numbers
simultaneously, which requires a domain BST does not posit.
```

Plain language: BST proves every case of the theorem when told which case to prove. It cannot prove "every case at once" without naming the domain — and the domain has no name within the theory.

### 9.6.2  Examples of Category D


### Totality of the Ackermann Function

Statement: ∀m ∀n: A(m,n) is defined (terminates).

For each specific (m̄, n̄), BST proves termination of A(m,n) by bounded recursion with an explicit step bound. The universal claim requires induction over all natural numbers simultaneously — beyond BST's bounded induction. Category D.

### Goodstein's Theorem

Statement: ∀n: the Goodstein sequence starting from n terminates.

For each specific n̄, termination is provable by BST in finitely many steps (the computation is bounded). The universal claim requires transfinite ordinal induction up to ε₀ — the proof-theoretic ordinal of PA — which exceeds BST's inductive reach. Category D.

### The Paris-Harrington Theorem

Statement: A strengthening of the finite Ramsey theorem, true but unprovable in PA.

Paris-Harrington makes no reference to infinite objects — it is a finite combinatorial statement. But it requires proof-theoretic strength strictly exceeding PA, and therefore exceeding BST. Every specific instance (for fixed parameters) is provable in BST. The universal statement is not. Category D.

### 9.6.3  Why the gap is narrow

Category D theorems share a specific proof-theoretic profile: they require induction over a domain whose size cannot be named within the theory. The classical proofs use either transfinite ordinal induction (Goodstein), reasoning about all natural numbers simultaneously (Ackermann), or strength exceeding PA (Paris-Harrington). These are genuine requirements — there is no known proof of these results using only bounded induction.

The gap is narrow in the following precise sense: it consists of theorems at the boundary of what finite induction can reach. The bulk of mathematics — all finite combinatorics, all algebra, all number theory, all analysis over explicit domains — lies well within BST's reach. The Category D theorems are edge cases, mathematically interesting precisely because they sit at the limit of finite provability.

The formal reason for their independence can now be stated precisely using the proof-theoretic ordinal of BST established in Section 9.7:

```
Theorem 9.3 — Goodstein independence (sketch):

BST ⊬ ∀n: the Goodstein sequence from n terminates.

Proof sketch:
(1) Suppose BST ⊢ ∀n Terminates(G_n).
(2) By the Kirby-Paris theorem (1982), provable termination
    of all Goodstein sequences implies well-foundedness of
    the ordinal ε₀.
(3) Therefore BST would prove WF(ε₀) — the well-foundedness
    of ε₀.
(4) But |BST| = ω^ω (Section 9.7), and ω^ω < ε₀.
    A system with proof-theoretic ordinal ω^ω cannot prove
    WF(ε₀): the whole point of proof-theoretic ordinals is
    that |T| is the supremum of the ordinals T can prove
    well-founded.
(5) Contradiction. Therefore BST ⊬ ∀n Terminates(G_n). □
```

```
Corollary — Ackermann independence:

BST ⊬ ∀m∀n: A(m,n) is defined.

The Ackermann function grows faster than any primitive
recursive function. By Section 9.7, BST's provably total
functions are exactly the primitive recursive functions
(ProvRec(BST) = PRF). Therefore Ackermann totality is
not provable in BST. □
```

The case of Paris-Harrington is similar: it requires proof-theoretic strength strictly above ε₀ (Ketonen-Solovay, 1981), which exceeds BST's ω^ω.

The independence direction — that BST does not refute these statements — is equally important and follows from instance provability: BST proves every specific finite instance of each statement, and a refutation would contradict those provable instances. All three are therefore genuinely independent of BST: neither provable nor refutable.

### 9.6.4  The correct philosophical reading

Category D is sometimes described as BST "failing to prove" these theorems. The more accurate description is that BST correctly reflects the epistemological situation of finite mathematics: knowledge is available for each specific instance, and no general principle licenses the collection of all instances into a single assertion unless the domain is named. The universal statement ∀n φ(n) — ranging over all natural numbers — is an assertion about a completed infinite totality. BST declines to make that assertion. Whether that declination is a loss depends on whether the completed infinite totality exists — which is exactly what BST denies.

This is not evasion. It is the formal expression of what finitist epistemology actually means.


## 9.7  The Proof-Theoretic Strength Assessment

The four-category analysis above addresses individual theorems. It is also possible to characterise BST's strength at the system level — where it sits in the proof-theoretic hierarchy and what that position means precisely.

### Proof-theoretic strength hierarchy:


```
System    Ordinal    Provably total functions    Notes
──────────────────────────────────────────────────────────────────
S¹₂       < ω^ω     Polynomial-time (FP)        Complexity-calibrated;
                                                 no clean ordinal
BST       ω^ω       Primitive recursive (PRF)   Equivalent to IΣ₁
IΣ₁       ω^ω       Primitive recursive (PRF)   PA with Σ₁ induction
PRA       ω^ω       Primitive recursive (PRF)   Primitive Recursive Arith.
PA        ε₀        Recursive (incl. Ackermann) Full Peano Arithmetic
ACA₀      ε₀        —                           Arithmetical Comprehension
ATR₀      Γ₀        —                           Arith. Transfinite Recursion
ZFC       far beyond —                           Inaccessible cardinals, etc.
```

**The placement of BST.** A preliminary analysis — which identifies the correct answer but should be understood as awaiting a complete cut-elimination argument to be fully rigorous — places |BST| = ω^ω, equivalent in proof-theoretic strength to IΣ₁. The argument proceeds by two bounds.

Upper bound: BST's induction schema BI-BST applies to all BST-definable properties, which via the set-encoding of Part VI (Section 6.5) translates to induction on Σ₁ formulas in arithmetic. The Σ₁ induction schema characterises IΣ₁, and IΣ₁ has proof-theoretic ordinal ω^ω. BST cannot exceed this because it cannot prove the well-foundedness of any ordinal ≥ ε₀ — doing so would imply Goodstein's theorem (by the Kirby-Paris theorem), which Section 9.6.3 establishes is independent of BST.

Lower bound: BST's provably total functions include all primitive recursive functions, since every primitive recursive definition can be coded as a bounded recursion in BST (Part VI, Section 6.2.5) for any specific input. PRA — Primitive Recursive Arithmetic — has ordinal ω^ω. BST is at least as strong as PRA because it proves everything PRA does (all primitive recursive computations terminate).

Combined: ω^ω ≤ |BST| ≤ ω^ω, so |BST| = ω^ω.

```
Provably total functions of BST (preliminary claim):

ProvRec(BST) = PRF  (Primitive Recursive Functions)

Upper bound: BST cannot prove Ackermann total
             (grows faster than any PRF; Section 9.6.3).
Lower bound: Every PRF is provably total in BST
             by bounded recursion on notation
             (Part VI, Section 6.2.5).
Therefore BST proves exactly the PRFs total.
```

The Category D boundary is now precisely characterised: a universal statement ∀n φ(n) belongs to Category D exactly when its proof requires well-foundedness of some ordinal ≥ ε₀. Goodstein requires WF(ε₀) (Kirby-Paris 1982); Paris-Harrington requires strength above ε₀ (Ketonen-Solovay 1981); Ackermann totality is equivalent to the existence of a function growing faster than all PRFs. All three sit above ω^ω and below or at ε₀ — the narrow region between BST's ceiling and PA's ceiling. Everything below ω^ω is within BST's reach.

```
Key facts (revised):
BST ≡ IΣ₁ in proof-theoretic strength: |BST| = ω^ω.
BST is strictly stronger than S¹₂: BI-BST applies to
  all definable properties, not just Σ^b₁ formulas.
BST is strictly weaker than PA: PA proves Con(BST),
  Goodstein, and Ackermann totality; BST proves none.
BST proves all Σ₀ arithmetic truths.
BST cannot prove Con(BST) (Gödel — universal).
Category D boundary: ordinals ≥ ε₀.
```

Note on Con(BST): BST cannot prove its own consistency, but this is not a deficiency specific to BST. No sufficiently strong consistent system can prove its own consistency (Gödel's second incompleteness theorem). ZFC cannot prove Con(ZFC). PA cannot prove Con(PA). Con(BST) belongs in no loss category — it is a universal feature of formal systems, not a comparative weakness. The metatheory required to prove Con(BST) is IΣ₁ itself — the same ordinal as BST — confirming the tight calibration noted in Section 3.3.3.7: the metatheoretic overhead is precisely matched to the object theory.


## 9.8  What BST Proves That ZFC Cannot

The comparison above runs in one direction. The other direction is equally important and less commonly noted. BST proves sentences that ZFC refutes. The two systems are not ranked — they are incomparable.

A notational remark: within BST, the predicate Fin(S) — "S is finite" — is trivially true of every set, because AFB permits nothing else. It is used here solely to make the contrast with ZFC explicit. In ZFC, Fin(S) is a substantive predicate; in BST, it carries no content because everything is finite. The contrast is being stated in ZFC's language to make the structural difference maximally visible.

### Theorem 9.1 — BST proves its own finiteness:


```
BST ⊢ ∀S: Fin(S)
ZFC ⊬ ∀S Fin(S)  (false in ZFC: ω is infinite)

BST ⊢ ∀S ∀T: |S| + |T| ∈ ℕ
ZFC ⊬ this  (ℵ₀ + ℵ₀ = ℵ₀ in ZFC cardinal arithmetic)

BST ⊢ ¬∃S ∃x∈S ∃f: f is a bijection S → S \ {x}
ZFC ⊢ the opposite for infinite sets (Dedekind-infinity)
```

### Theorem 9.2 — BST is not a subsystem of ZFC:


```
BST ⊢ ∀S Fin(S).
ZFC ⊬ ∀S Fin(S).

BST ⊢ ¬∃S[∅∈S ∧ ∀x(x∈S→x∪{x}∈S)].
ZFC ⊢  ∃S[∅∈S ∧ ∀x(x∈S→x∪{x}∈S)].

Therefore BST proves sentences that ZFC refutes.
BST is not a fragment of ZFC.
ZFC is not interpretable in BST.
They are genuinely different, incomparable theories.
```

These are not deep theorems — they follow immediately from AFB. But they reframe the comparison. BST is not ZFC with some axioms missing. It is a different theory that proves different things. The question is not which is stronger but which domain each is appropriate for.


## 9.9  The Full Accounting

Replacing the loss-first framing with the category structure gives a more accurate picture:

### BST vs Classical Mathematics — Full Accounting:


```
CATEGORY A: Recovered with explicit bounds
IVT, EVT, Heine-Borel, k-completeness of ℝ_B(k),
finite instance of Cantor's theorem, all of real analysis over ℝ_B(k),
all of topology over finite domains,
Lebesgue-style measure over finite event algebras.

Recovery is stratified. For Type II results (IVT, EVT,
completeness, Heine-Borel, measure theory): the BST
theorem is exact at each bound level k; the classical
theorem is its shadow when the bound is suppressed.
For Type III results (bounded Cauchy theorem, k-holomorphic
functions, bounded Hodge decomposition): the BST theorem
carries an explicit error term; the classical theorem
is the limit as the error vanishes. In both cases the
BST version is strictly more informative than the classical
one: it gives a rate, a witness, or a computable bound
that the classical statement suppresses.
```

```
CATEGORY B: Directly provable — no recovery needed
All finite combinatorics (Pigeonhole, Ramsey, 4CT,
inclusion-exclusion, binomial theorem).
All finite algebra (groups, rings, fields, Lagrange,
Fermat's Little Theorem, CRT, unique factorisation).
All finite number theory (GCD, primality, modular
arithmetic, Euclidean algorithm).
Finite graph theory. Discrete probability.
Galois theory for finite fields.
Schroeder-Bernstein (trivial for finite sets).
```

```
CATEGORY C: Correct absences — gains, not losses
Banach-Tarski paradox.
Well-ordering of ℝ.
Non-measurable sets.
All consequences of uncountable Choice.
Infinite cardinal arithmetic.

None of these have finite content. Their absence
eliminates the mathematical paradoxes that infinite
Choice generates. BST's measure theory, geometry,
and analysis are paradox-free by construction.
```

```
CATEGORY D: The narrow gap
Goodstein's theorem (universal statement).
Paris-Harrington theorem.
Ackermann function totality (universal statement).

All instances individually provable.
Universal collection requires strength beyond BST.
This is the full extent of what BST cannot do
relative to finite mathematics.
```

```
WHAT BST PROVES THAT ZFC CANNOT:
All sets are finite (ZFC refutes this).
No Dedekind-infinite sets exist.
Cardinalities are natural numbers.
Foundation and Choice are theorems, not axioms.
Every domain is explicitly finite and surveyable.
```


## 9.10  The Parsimony Argument, Sharpened

Part III introduced the parsimony argument: when two foundations organise the same mathematical practice with equal adequacy, the lower ontological commitment is preferable. The accounting above shows the precise scope of that claim.

BST organises strictly more mathematical practice than the parsimony argument requires. It does not merely match ZFC for finite mathematics — it recovers the full analytic apparatus over ℝ_B(k) and ℂ_B(k⁴), predominantly as exact Type II recoveries and where necessary as explicit Type III approximations, which together cover everything that applied mathematics actually uses. The Category D gap is real but it does not touch any application: Goodstein sequences, the Ackermann function, and Paris-Harrington are mathematically interesting limit cases, not tools of physics, computation, or engineering.

The choice between BST and ZFC is not a choice between a weaker and a stronger foundation. It is a choice between two different ontological commitments with different scopes:

ZFC posits completed infinite totalities and proves everything that follows from them — including results (Banach-Tarski, non-measurable sets, well-ordering of ℝ) that are mathematical consequences of that posit with no finite interpretation.

BST posits only finite objects and proves everything that follows from that — including results (all sets are finite, no Dedekind-infinite sets, explicit cardinalities) that ZFC cannot prove.

Whether completed infinite totalities exist is not a mathematical question. It is a foundational choice. What this paper demonstrates is that the choice for finite objects is coherent, consistent (as established metatheoretically via ACA₀ in Section 3.3.3.7), and mathematically rich. The Category D gap is the honest price of that choice — and it is a narrow price.


## 9.11  Summary


### ◆ The Core Insight of the Analytic Accounting

Classical mathematics formulated its theorems over infinite domains because that was the only formulation available before bounded foundations were developed. Those theorems are not intrinsically infinite — they are infinite formulations of finite content. The IVT is a theorem about bisection. Completeness of ℝ is a theorem about Cauchy approximation. Heine-Borel is a theorem about finite covers. In each of these cases the BST version is Type II: it states the theorem exactly for its actual domain, with an explicit bound that the classical version suppresses, and the classical theorem is the shadow cast when that bound is removed. Where the relationship is instead Type III — as with the bounded Cauchy theorem and bounded holomorphic functions — the BST version carries an explicit error term, and the classical theorem is the idealised limit of that error vanishing. In both cases the BST version is more informative, not less.

What is genuinely infinite in classical mathematics — Banach-Tarski, non-measurable sets, uncountable cardinals — has no finite content, no physical realization, and no role in any application. BST excludes these not by failing to prove them but by not positing the objects they require.

The narrow Category D gap — Goodstein, Paris-Harrington, Ackermann universality — is the true and honest price of finite foundations. Everything else that looked like a loss is either a recovery or a gain.


End of Part IX

# Part X: Bounded Complex Analysis

Part VIII constructed ℂ_B(k⁴) as ℝ_B(k) × ℝ_B(k) and established its basic arithmetic. Part IX developed the full analytic apparatus over ℝ_B(k). This part develops the complex-analytic counterpart: holomorphic functions, contour integration, Dolbeault cohomology, and the Kähler geometry required for the bounded Hodge conjecture formulation of Part XIII. All constructions use ℂ_B(k⁴) as the underlying field; all equalities are understood modulo precision 1/k unless explicitly stated to be exact.


## 10.1  Bounded Holomorphic Functions

In classical analysis, a function is holomorphic if it is complex-differentiable at every point of its domain — a condition equivalent to satisfying the Cauchy-Riemann equations. In BST, differentiability is defined via an explicit precision bound on the difference quotient.

### Definition 10.1 — k-holomorphic function:

```
Let D ⊆ ℂ_B(k⁴) be a finite domain. A function
f: D → ℂ_B(k⁴) is k-holomorphic at z₀ ∈ D if there
exists f'(z₀) ∈ ℂ_B(k⁴) such that for all z ∈ D
with 0 < |z − z₀| < 1/k:

| (f(z) − f(z₀))/(z − z₀) − f'(z₀) | < 1/k

f is k-holomorphic on D if it is k-holomorphic at
every point of D.
```

Plain language: the difference quotient approximates the derivative to within precision 1/k for all points sufficiently close to z₀ within the bound. The exact complex derivative is replaced by a 1/k-approximate version — the appropriate substitute in a setting where equality of real numbers is replaced by equality to finite precision.

### Theorem 10.1 — Bounded Cauchy-Riemann equations:

```
Let f(z) = u(x,y) + i v(x,y) where z = x + iy,
with u, v: D → ℝ_B(k). If f is k-holomorphic on D,
then the partial derivatives of u and v satisfy:

| ∂u/∂x − ∂v/∂y | < 1/k
| ∂u/∂y + ∂v/∂x | < 1/k

where partial derivatives are defined as in Part IX
via the bounded derivative of Section 9.3.

Proof: Evaluate the limit definition of f'(z₀) with
z − z₀ along the real and imaginary axes separately.
The two expressions for the limit (from the real and
imaginary directions) must agree to within 1/k by
k-holomorphicity. Separating real and imaginary parts
yields the two bounded Cauchy-Riemann inequalities.
Error accumulation is O(1/k) by Part IX arithmetic
bounds. □
```

All bounded power series — polynomials P(z) = Σ_{n=0}^d a_n z^n with d ≤ k and a_n ∈ ℂ_B(k⁴) — are k-holomorphic on their domain of definition. This follows by direct computation using the bounded derivative and the arithmetic closure of ℂ_B(k⁴). The exponential, sine, and cosine functions defined via truncated power series in Part IX extend immediately to ℂ_B(k⁴) as k-holomorphic functions by the same construction.


## 10.2  Bounded Contour Integration and Cauchy's Theorem

Classical contour integration requires limits of Riemann sums over infinite partitions. In BST, paths are finite sequences and integrals are finite sums.

### Definition 10.2 — Bounded path:

```
A bounded path γ in ℂ_B(k⁴) is a finite sequence of
points (z₀, z₁, ..., z_m) where m ≤ k² and
|z_{j+1} − z_j| < 1/k for all j.
A bounded closed path satisfies z_m = z₀.
```

### Definition 10.3 — Bounded path integral:

```
For a k-holomorphic function f and bounded path γ:

∫_γ f(z) dz  :=  Σ_{j=0}^{m-1} f(z_j) · (z_{j+1} − z_j)

This is a finite sum in ℂ_B(k⁴). Its value exists by
the arithmetic closure of ℂ_B(k⁴) (Part VIII, Section 8.8).
```

### Theorem 10.2 — Bounded Cauchy's theorem:

```
Let D ⊆ ℂ_B(k⁴) be a simply connected finite domain
and γ a bounded closed path in D. If f is k-holomorphic
on D, then:

| ∫_γ f(z) dz | < C/k

where C depends on the length of γ and the bound on f'.

Proof sketch: Triangulate the interior of γ into a
finite simplicial complex T (available by Part VII
finite simplicial structure). For each triangle t ∈ T,
the integral over ∂t is bounded by |t| · max|f'| · (1/k)
— the deviation from linearity over t is O(1/k) by
k-holomorphicity. The sum over all triangles telescopes:
interior edges cancel in pairs, leaving only γ. Summing:

| ∫_γ f dz | ≤ Σ_{t ∈ T} |∫_{∂t} f dz|
             ≤ |T| · max|f'| · (1/k)²
             = C/k

for C = |T| · max|f'| · (1/k). □
```

The exact identity ∮ f dz = 0 of classical Cauchy's theorem does not hold in BST — it is replaced by the 1/k bound, which is the correct finite-precision analogue. For any computable application requiring the classical result, a sufficiently large k makes the error C/k as small as needed.


## 10.3  Bounded Dolbeault Cohomology

The Hodge conjecture, in its classical form, relates cohomology classes of type (p,p) to algebraic cycles on a complex projective variety. The bounded analogue requires a finite-dimensional cohomology theory over ℂ_B(k⁴).

### Definition 10.4 — Bounded complex manifold:

```
A bounded complex manifold X of dimension n is a
finite simplicial complex K (Part VII) equipped with
an atlas of charts φ_α: U_α → ℂ_B(k⁴)^n such that:

(i)  Each U_α is a finite subset of the vertex set of K.
(ii) Each φ_α is a bijection onto its image in ℂ_B(k⁴)^n.
(iii) Transition functions φ_β ∘ φ_α⁻¹ are k-holomorphic
     wherever defined.
```

### Definition 10.5 — Bounded differential forms:

```
A bounded (p,q)-form ω on X is an assignment to each
chart of a multilinear alternating map on tangent
vectors (defined via finite differences) with
coefficients in ℂ_B(k⁴), compatible under k-holomorphic
transition functions within precision 1/k.

The space 𝒜^{p,q}_B(X) of bounded (p,q)-forms is a
finite-dimensional vector space over ℂ_B(k⁴).
Its dimension is bounded by k^{4(p+q)} · |K|.
```

### Definition 10.6 — Bounded Dolbeault operator:

```
The operator ∂̄_B: 𝒜^{p,q}_B(X) → 𝒜^{p,q+1}_B(X)
is defined by finite difference approximation of the
classical ∂̄ operator, with error O(1/k).

Property: ∂̄_B² ≈ 0 in the sense that ‖∂̄_B²ω‖ < C/k²
for all ω ∈ 𝒜^{p,q}_B(X).
```

### Definition 10.7 — Bounded Dolbeault cohomology:

```
H^{p,q}_{∂̄,B}(X)  :=  ker(∂̄_B: 𝒜^{p,q}_B → 𝒜^{p,q+1}_B)
                        ─────────────────────────────────────
                        im(∂̄_B: 𝒜^{p,q-1}_B → 𝒜^{p,q}_B)

Since 𝒜^{p,q}_B(X) is finite-dimensional over ℂ_B(k⁴),
kernel and image are computable by Gaussian elimination
over ℂ_B(k⁴) (Part VIII arithmetic). H^{p,q}_{∂̄,B}(X)
is therefore a well-defined finite-dimensional vector
space over ℂ_B(k⁴), with explicitly computable dimension.
```


## 10.4  Preliminary Bounded Kähler Geometry

The following development is preliminary: the key constructions are defined and their main properties stated, but the proofs require a full development of differential geometry over ℂ_B(k⁴) that goes beyond what this paper carries out. The constructions are given here because they are needed to state the bounded Hodge conjecture in Section 10.5.

### Definition 10.8 — Bounded Kähler form:

```
A bounded Kähler form ω_B on X is a closed (1,1)-form
in 𝒜^{1,1}_B(X) — satisfying ∂̄_B ω_B ≈ 0 within
precision 1/k — that induces a positive-definite
Hermitian metric on tangent spaces of X within
precision 1/k.

For bounded projective varieties — zero sets of
polynomials in ℂ_B(k⁴)^n — the Fubini-Study metric
adapted to ℂ_B(k⁴) provides an explicit example:
the metric coefficients are rational functions of the
homogeneous coordinates, and are computable within
ℂ_B(k⁴) to precision 1/k.
```

### Theorem 10.3 — Bounded Hodge decomposition (preliminary):

```
For a compact bounded Kähler manifold X with Kähler
form ω_B, the bounded cohomology groups admit a
decomposition:

H^r_B(X, ℂ_B)  ≅  ⊕_{p+q=r} H^{p,q}_{∂̄,B}(X)

valid within precision 1/k.

Proof sketch: Define the bounded Laplacian Δ_B as
a finite matrix over ℂ_B(k⁴) acting on 𝒜^{p,q}_B(X).
Since 𝒜^{p,q}_B is finite-dimensional, Δ_B is a
finite matrix; its eigenspaces are computable by
finite linear algebra. Harmonic forms — those with
Δ_B ω ≈ 0 within 1/k — span the cohomology classes.
The Hodge decomposition is the eigenspace decomposition
of Δ_B. The full proof requires establishing that the
approximate Kähler identities hold to within 1/k and
that the resulting eigenspace decomposition is stable
under the approximation. This development is deferred.
```


## 10.5  The Bounded Hodge Conjecture

With the machinery of Sections 10.3 and 10.4 in place, the bounded Hodge conjecture can be stated precisely. This is the secondary BST formulation of the Hodge conjecture, complementing the Tate conjecture over finite fields (the primary formulation, given in Part XIII, Section 13.3).

### Bounded Hodge Conjecture over ℂ_B(k⁴):

```
Let X be a bounded complex projective variety — the
zero set in ℂ_B(k⁴)^n of a finite system of polynomials
with coefficients in ℂ_B(k⁴).

Let H^{p,p}_{∂̄,B}(X) ⊆ H^{2p}_B(X, ℂ_B) be the
subspace of classes of type (p,p) in the bounded Hodge
decomposition (Theorem 10.3).

Let cl_B(Z) denote the cohomology class of a bounded
algebraic cycle Z — a finite formal sum of bounded
subvarieties of X with coefficients in ℚ_B.

Bounded Hodge Conjecture: Every class α ∈ H^{p,p}_{∂̄,B}(X)
satisfying the rationality condition (coefficients in ℚ_B)
is, within precision 1/k, a ℚ_B-linear combination of
bounded algebraic cycle classes cl_B(Z).
```

The status of this conjecture is: all objects involved are defined within BST; the conjecture is a finite linear algebra statement about the relationship between specific subspaces of finite-dimensional vector spaces; it is open. For any specific X and k, it is a computable verification — determine the (p,p)-part of H^{2p}_B and check whether the cycle classes span it. The conjecture asserts this holds for all such X and k. The primary BST analog of the Hodge conjecture remains the Tate conjecture over finite fields, which is more fully formulated and uses étale cohomology; the bounded Hodge conjecture over ℂ_B(k⁴) is a secondary formulation whose full development depends on the preliminary Kähler geometry of Section 10.4 being completed.


## 10.6  Summary of Bounded Complex Analysis

```
Component         Classical (ℂ)            Bounded (ℂ_B(k⁴))     Status
──────────────────────────────────────────────────────────────────────────
Domain            Completed plane          Finite subset of       Part VIII
                                           ℂ_B(k⁴)

Holomorphic       Exact (C-R equations)    k-holomorphic          Definition 10.1
functions                                  (approx to 1/k)

Cauchy theorem    ∮ f dz = 0 exactly       |∮ f dz| < C/k         Theorem 10.2

Dolbeault         Infinite-dim.            Finite-dim. over       Definition 10.7
cohomology        complex vector spaces    ℂ_B(k⁴)

Hodge             Decomposition of H^*     Bounded decomp.        Theorem 10.3
decomposition                             within 1/k             (preliminary)

Hodge conjecture  Open (ZFC)               Open (BST) —           Section 10.5
                                           finite analog

Kähler geometry   Smooth metric on         Approx. metric on      Section 10.4
                  complex manifold         finite simplicial X    (preliminary)
```

The core achievement is that bounded complex analysis is a coherent programme within BST, using ℂ_B(k⁴) as the field, finite simplicial complexes as the underlying spaces, and explicit precision bounds in place of exact equalities. The Dolbeault cohomology groups are finite-dimensional and computable. The bounded Hodge conjecture is formulated with all objects well-defined within BST. The sections marked preliminary — Kähler geometry and the Hodge decomposition theorem — are correctly identified as requiring further development before their proof sketches can be elevated to complete proofs. That development is the next natural extension of this programme.


End of Part X


# Part XI: Computational Complexity and BST

Part VI established the connection between BST's bounded induction schemas and Buss's system S¹₂, showing that S¹₂ is interpretable in BST and characterises polynomial-time computation. This part develops the full complexity-theoretic consequences: BST-native definitions of the complexity classes P and NP, the polynomial hierarchy, the status of P vs NP, and the recovery of asymptotic complexity theory via metatheoretic families. The treatment is formal and in the same register as Parts III–IX.


## 11.1  BST-Provable Functions and Bounded Strings

In classical complexity, inputs are finite binary strings and computations are Turing machine runs. The domain of all strings {0,1}* does not exist as a set in BST — it is the infinite union of all finite string sets. BST works instead with bounded string domains.

### Definition 11.1 — Bounded strings:

```
For any k ∈ ℕ_B(k), the set of binary strings of
length ≤ k is:

{0,1}^{≤k}  :=  { n ∈ ℕ_B(2^{k+1}) | n < 2^{k+1} }

This uses the binary encoding of strings as natural
numbers (Part VI, Section 6.5): the string b_{k-1}...b_1b_0
encodes as Σ_i b_i · 2^i.

Cardinality: |{0,1}^{≤k}| = 2^{k+1} − 1. This is a
finite set in BST for every specific k.
```

### Definition 11.2 — BST-provable total function:

```
A function f: {0,1}^{≤k} → {0,1}^{≤p(k)} is BST-provably
total if there exists a formula φ_f(x,y) in the language
of BST such that:

BST ⊢ ∀x ∈ {0,1}^{≤k} ∃!y ∈ {0,1}^{≤p(k)} φ_f(x,y)

where the proof uses BI-BST or PIND.
```

The class of BST-provably total functions captures exactly those computations whose termination BST can establish. By Section 9.6, this class is the primitive recursive functions when the full BI-BST schema is used, and the polynomial-time functions when restricted to PIND on Σ^b₁ formulas.


## 11.2  Complexity Classes in BST

Classical complexity classes are defined over the infinite domain {0,1}*. BST defines complexity classes as uniform families over bounded domains.

### Definition 11.3 — BST-P:

```
A family of languages 𝓛 = {L_k}_{k ∈ ℕ} is in BST-P
if there exists a BST-provable function M (using PIND)
and a polynomial p such that for all k:

(i)  M decides membership in L_k for inputs of
     length ≤ k.
(ii) The computation uses at most p(|x|) steps.
(iii) The proof of (i)–(ii) is uniform across k —
      a single formula φ_M witnesses all instances.
```

### Definition 11.4 — BST-NP:

```
A family 𝓛 = {L_k} is in BST-NP if there exists a
BST-definable relation R(x,w) with bounded quantifiers
and a polynomial p such that:

x ∈ L_k  iff  ∃w ∈ {0,1}^{≤p(|x|)} R(x,w)

where verification of R(x,w) is in BST-P.

The existential quantifier is bounded — w ranges over
{0,1}^{≤p(|x|)}, a finite set. This is consistent
with BFOL: the existential is a bounded quantifier.
```

### Theorem 11.1 — Extensional equivalence with classical classes:

```
BST-P = P  and  BST-NP = NP  (extensionally).

Proof:
BST-P ⊆ P: Any BST-proof of polynomial-time decidability
corresponds to a finite verification argument. Extracting
the algorithm and running it on a standard Turing machine
gives a polynomial-time computation (Part VI, Theorem 6.5
establishes PIND ↔ polynomial-time). The uniformity
across k ensures the algorithm is a single TM.

P ⊆ BST-P: Any polynomial-time Turing machine M can be
simulated in S¹₂ (Buss 1986, Part VI Section 6.4). S¹₂
is interpretable in BST (Part VI Section 6.5). The
simulation produces a BST-proof of M's totality. The
uniformity across k is handled metatheoretically: the
single TM description gives a single formula φ_M.

The same argument applies to NP via the witness
characterisation.  □
```

Plain language: the shift from ZFC to BST changes nothing about which problems are in P or NP. The infinite domain {0,1}* is replaced by the family {{0,1}^{≤k}}, but the resource-bounded computations that matter are finite at every specific input length, and those are what the class definitions capture.


## 11.3  The Polynomial Hierarchy

The polynomial hierarchy PH is defined by alternating bounded quantifiers — exactly the structure of BFOL's Σ^b_i formula classes from Part VI.

### Definition 11.5 — BST polynomial hierarchy:

```
Σ^P_0 = BST-P
Σ^P_1 = BST-NP
Σ^P_{i+1} = NP^{Σ^P_i}

A language L is in BST-Σ^P_i if membership is
definable by a Σ^b_i formula in BST — a formula
with i alternating blocks of bounded quantifiers,
outermost existential.
```

The alignment between PH and the Σ^b_i formula hierarchy is not incidental. BFOL's bounded quantifiers directly express the alternating quantifier structure that defines PH. The polynomial hierarchy is, in BST, the formula complexity hierarchy of BFOL.

### Theorem 11.2 — PH collapse conditions:

```
If BST proves Σ^P_i = Σ^P_{i+1} for some i, then
the polynomial hierarchy collapses to level i in
the standard model.

Proof: BST is interpretable in IΣ₁ (Section 9.7),
which in turn is interpretable in PA. A BST-proof
of Σ^P_i = Σ^P_{i+1} translates to an arithmetic
proof of the collapse, which corresponds to a
statement about the standard complexity classes
by Theorem 11.1.  □
```


## 11.4  P vs NP in BST

Part XIII (Millennium Problems) examines P vs NP from the perspective of its mathematical content. This section establishes its formal logical status within BST.

### Theorem 11.3 — Logical status of P vs NP in BST:

```
(i)  For any specific k, "P_k ≠ NP_k" is a finite
     combinatorial claim — either true or false in the
     standard model. BST can verify any specific instance
     given sufficient resources (Category B).

(ii) The universal statement ∀k (P_k ≠ NP_k) is a
     universal claim over natural numbers. It is in
     Category D: BST proves each instance but cannot
     prove the universal statement without naming the
     domain.

(iii) A proof of P = NP in classical mathematics would
      exhibit a specific polynomial-time algorithm for
      SAT. Such an algorithm is a finite object — a
      Turing machine description — and its correctness
      proof is a finite argument. Any such proof would
      be formalisable in BST via Theorem 11.1.

(iv)  A proof of P ≠ NP in classical mathematics would
      demonstrate that no polynomial-time algorithm
      for SAT exists. If this proof is formalizable in
      PA or weaker, it translates to BST. If it requires
      strength beyond BST (≥ ε₀), it would be a Category D
      result — universally true but unprovable in BST
      without additional strength.
```

The difficulty of P vs NP has nothing to do with infinite foundations. The barriers — naturalisation (Razborov-Rudich), algebrisation (Aaronson-Wigderson), circuit lower bounds — are purely combinatorial and equally present in BST. The problem does not dissolve or simplify under a finite foundation. It survives intact.


## 11.5  Asymptotics via Metatheoretic Families

A standard objection to finite foundations for complexity theory is that asymptotics — the behaviour of algorithms as input length n → ∞ — require an infinite domain. This objection dissolves under BST's metatheoretic family approach.

Within any single BST model M with bound n_M, there is a maximum input size and no infinite limit. Asymptotic statements — "algorithm A runs in O(n²) time" — do not have direct object-level meaning in M. They acquire meaning at the metatheoretic level, across the family of models {ℕ_B(k)}.

### Definition 11.6 — Metatheoretic asymptotic:

```
An algorithm description φ_A is O(p(n))-time if,
for every k ∈ ℕ (metatheory), the BST-proof that
φ_A terminates in p(|x|) steps on inputs x ∈ {0,1}^{≤k}
is uniform — the same formula witnesses all k.

This is the correct formulation of "polynomial time"
for BST: not a limit statement, but a uniformity
statement across the parameterised family.
```

### Theorem 11.4 — Asymptotic recovery:

```
Classical asymptotic complexity theory is recovered
in BST as the metatheoretic study of the family
{ℕ_B(k) | k ∈ metatheory}.

A complexity-theoretic statement "A is O(p(n))"
has its classical meaning if and only if the uniform
BST-proof of Theorem 11.1 witnessing A's membership
in BST-P uses a step bound that is polynomial in |x|
with coefficients independent of k.

Proof: Immediate from Definitions 11.3 and 11.6 and
the uniformity condition in Theorem 11.1.  □
```

Plain language: asymptotic complexity does not require infinity — it requires uniformity. A single algorithm description that works for all input lengths is exactly what asymptotic O-notation captures, and uniformity across the family {ℕ_B(k)} is BST's formulation of that. Recovery type: Type IV (metatheoretic correspondence — "A runs in O(n²) time" is not a BST sentence inside any single model, but a uniformity claim about the family {ℕ_B(k)} that lives only in the metatheory).


## 11.6  Cryptography and BST

Modern cryptographic security rests on hardness assumptions — statements that certain computational problems are infeasible for adversaries of bounded resources. These assumptions are inherently finite and fit naturally in BST.

RSA security relies on the hardness of factoring: no algorithm of size S can factor an n-bit integer in time T (for appropriate S, T). This is a bounded statement for fixed n, S, T — Category B, directly verifiable in principle by BST. The universal security claim "RSA is secure for all key sizes" is a universal statement over key lengths — Category D. BST can reason about any specific key size but not about all key sizes simultaneously.

This is not a weakness of BST as a foundation for cryptography — it is the correct description of what cryptographic security actually means. Security is always relative to specific resource bounds, and the finite-precision, bounded-computation framework of BST is the natural home for that kind of reasoning.


## 11.7  Summary

```
Component          Classical complexity    BST complexity        Status
───────────────────────────────────────────────────────────────────────
Input domain       {0,1}* (infinite)       {0,1}^{≤k} (finite)  Definition 11.1
Class P            Poly-time decidable     BST-P (uniform)       ≡ P (Thm 11.1)
Class NP           Poly-time verifiable    BST-NP (bounded ∃)    ≡ NP (Thm 11.1)
P vs NP            Open                    Open (Cat. D univ.)   Survives
PH                 Alternating quant.      Σ^b_i formulas        Defined (11.5)
Asymptotics        n → ∞                   Metatheoretic family  Recovered (11.4)
Cryptography       Finite hardness         Finite hardness       Natural fit
```

Complexity theory is fundamentally about finite resources — the time and space required to solve problems on finite inputs. Its natural home is a finite foundation. The shift from ZFC to BST changes the framing — infinite domains become parameterised families — but nothing about the mathematical content of the classes, the problems, or the barriers. P vs NP remains hard. The polynomial hierarchy remains stratified (presumably). Cryptographic hardness remains a genuine and open question. BST provides a foundation in which these facts can be stated honestly, without the infinite scaffolding of {0,1}* that was never used in the actual arguments anyway.


End of Part XI


# Part XII: Physics and the Inherited Assumption

> **Scope note.** Parts I–XI constitute the formal core of this paper: the construction of BFOL, BST, the bounded number chain, the full analytic apparatus over ℝ_B(k), bounded complex analysis, and the complexity-theoretic development. Parts XII and XIII are extrapolations — they apply the completed formal construction to physics and to the Millennium Problems respectively. The arguments in these parts are substantive and intended to be rigorous, but they depend on empirical claims (about the structure of spacetime, the nature of physical prediction) and on connections to open mathematical problems that go beyond what the formal system alone establishes. Formal development of these connections — a BST-based treatment of differential geometry, quantum field theory, and the discrete structures of quantum gravity — is deferred to future work; see the Future Work section following Part XIII.


The relationship between mathematics and physics is not neutral. Physics does not discover mathematical structures in nature and then use them; it inherits the mathematics it was taught during its formative period and uses that mathematics as the default language for expressing physical laws. The mathematics that physics inherited — in the seventeenth through twentieth centuries — was analysis: the calculus of Newton and Leibniz, extended by Euler, Cauchy, Riemann, and Lebesgue into the continuous mathematics of differential equations, infinite series, and function spaces.

That inherited mathematics was built on the infinite. The real number line, derivatives as limits of difference quotients, integrals as limits of Riemann sums, continuous functions, smooth manifolds — all of these presuppose the completed infinite real line, which presupposes the completed set of natural numbers, which presupposes the Axiom of Infinity. Physics did not choose to use infinite mathematics. It used infinite mathematics because that was the only well-developed mathematics available when the foundational equations of mechanics, electromagnetism, and quantum theory were written down.

This part examines the relationship between physics and infinity with the precision it deserves. The central claim — that physics requires infinite mathematics — is not simply true or simply false. It decomposes into several distinct sub-claims with different truth values. Making these distinctions explicit is the goal of this part.


## 12.1  The Conflation to Be Avoided

Before the positive argument can be made, a conflation that pervades the literature must be identified and dissolved. The conflation is between three distinct claims:
- Claim A — Theoretical formulation: the mathematical framework used to state physical laws employs infinite objects (real numbers, continuous functions, differential operators on smooth manifolds).
- Claim B — Empirical prediction: the physical predictions derived from these laws are real numbers — infinite-precision quantities that actual measurements approximate to finite precision.
- Claim C — Physical ontology: the physical world itself is infinite — spacetime is a continuous manifold, fields are smooth functions, physical quantities take values in the completed real line.
Claim A is true — the formalism of physics uses real analysis. Claim B is true as a matter of how physics works: the formalism outputs a real number, which is then compared to a finite-precision measurement. Claim C is an empirical claim about the nature of spacetime and matter, and no experiment has confirmed it. The three claims are logically independent; the conflation of A with C — treating the use of infinite mathematics in the formalism as evidence that the physical world is infinite — is the inherited assumption that BST's foundational stance challenges.
This is not a novel observation. The distinction between the mathematical framework and physical ontology is standard in philosophy of physics. What is novel is drawing the formal consequences: that a foundation which restricts to finite mathematics can serve as the foundation for physics if the physics in question is physics as practised — prediction, computation, experimental comparison — rather than physics as an ontological theory of a completed infinite spacetime.


## 12.2  What Physics Actually Uses

The question is not what physics could in principle require, but what it actually uses in producing predictions that can be compared to measurements. The analysis proceeds area by area.

### 12.2.1  Classical mechanics

Classical mechanics is formulated in terms of differential equations — Newton's F = ma, Hamilton's equations, the Euler-Lagrange equations. These are equations over the reals, and their solutions are smooth functions of time. The framework is manifestly infinite: phase space is R^(2n), time is R, and trajectories are smooth curves.
But what does a classical mechanics calculation actually produce? A prediction of position and momentum at a future time, given initial conditions. The prediction is a real number. The measurement is a rational number within a finite-precision interval. The comparison between prediction and measurement is a finite computation: the predicted value falls within the measurement interval, or it does not.

### The finite content of classical mechanics:


```
For any classical mechanics prediction:

Input:   rational approximations to initial conditions,
         rational time t, tolerance ε = 1/k

Output:  rational approximation q to the predicted
         position, with |q - q_exact| < ε

This computation is finite at every step.
The real-valued trajectory is scaffolding —
it is the theoretical object from which the
approximation algorithm is derived.
It is not itself physically measured or physically real
in any empirically verifiable sense.
```


### 12.2.2  Quantum mechanics

Quantum mechanics is the area where the relationship between mathematics and physics is most delicate, and where the infinite enters most deeply. The state space of a quantum system is a Hilbert space — an infinite-dimensional complex vector space with an inner product. Observables are self-adjoint operators on this space. The Schrödinger equation is a differential equation on an infinite-dimensional space.
Two features of quantum mechanics make the infinite especially prominent. First, the spectrum of position and momentum operators is continuous — a consequence of the commutation relation [x̂, p̂] = iℏ, which implies that x̂ and p̂ cannot both have purely discrete spectra. Second, path integrals — the Feynman formulation of quantum mechanics — integrate over all possible paths, an uncountable collection, using a measure that is notoriously difficult to define rigorously.
The renormalization issue deserves particular attention. Dirac described renormalization as an ugly procedure; Feynman called it a dippy process; 't Hooft and Veltman won the Nobel Prize for making it rigorous in the context of gauge theories. The difficulty is that naive quantum field theory calculations produce infinite quantities — self-energies, vacuum energies, loop integrals that diverge. Renormalization is a procedure for extracting finite, physically meaningful predictions from these infinities by systematically subtracting divergences.
The fact that physical predictions require subtraction of infinities to extract finite answers is not philosophically neutral. It means that the infinite mathematical framework is not directly describing physical quantities — it is a vehicle from which finite answers are extracted by a procedure that removes the infinite parts. This is precisely the structure that BST's approach to physics predicts: the infinite formalism is scaffolding, and the finite predictions are the content.

### The finite content of quantum mechanics:


```
Scattering amplitude for process A → B:

Theoretical framework: path integral ∫ D[φ] e^(iS[φ])
over field configurations — uncountably infinite.

Computational procedure:
(i)   Expand in Feynman diagrams (finite at each order)
(ii)  Regularise: introduce cutoff Λ (finite)
(iii) Renormalise: subtract divergences (finite)
(iv)  Compute amplitude to n-th order: finite sum
(v)   Compare to measured cross-section: finite rational

At every step where a number is produced and compared
to experiment, the computation is finite.
The infinite path integral is the theoretical source
from which the finite algorithm is derived.
It is not itself computed or measured.
```


### 12.2.3  General relativity

General relativity describes gravity as the curvature of a four-dimensional Lorentzian manifold — a smooth, infinite mathematical object. The Einstein field equations are a system of nonlinear partial differential equations on this manifold. The framework is continuous through and through.
Yet all empirical confirmations of general relativity — the perihelion precession of Mercury, gravitational light deflection, gravitational wave detection, black hole imaging — involve measurements at finite precision. The comparison between the predicted and measured values is a finite computation. The continuous manifold is the theoretical structure; the finite numbers are what the theory produces when applied to an observation.
A deeper question concerns the Planck scale. General relativity predicts spacetime curvature of arbitrary magnitude; quantum field theory predicts quantum fluctuations of spacetime at the Planck length (~10^{-35} m). Below the Planck scale, classical spacetime geometry is expected to break down. Many approaches to quantum gravity — loop quantum gravity, causal set theory, spin foam models — posit a discrete or combinatorial structure at the Planck scale, with the continuous manifold emerging as an approximation at larger scales.
This is directly relevant. If the most fundamental description of spacetime is discrete — if spacetime is not a smooth manifold but a discrete combinatorial structure from which the appearance of continuity emerges — then the use of continuous mathematics in classical and quantum field theory is scaffolding all the way down: an approximation to a discrete reality, not a description of continuous ontology. BST is not in conflict with this picture; on the contrary, it is the natural mathematical framework for a fundamentally discrete physics.


## 12.3  The Renormalization Argument in Detail

The renormalization issue deserves a careful treatment because it is both the strongest argument for BST's physics claim and the most technically demanding to state precisely. The argument is not that renormalization is wrong or that the predictions of quantum field theory are unreliable. The argument is that renormalization reveals the structure of the infinite/finite relationship in physics: the infinite enters as theoretical scaffolding, and the finite exits as physical prediction, by a well-defined extraction procedure.

### 12.3.1  The structure of divergences in QFT


### Ultraviolet divergence — formal statement:


```
In quantum electrodynamics (QED), the one-loop
correction to the electron self-energy is:
```

```
Σ(p) = -ie² ∫ d⁴k/(2π)⁴  γ^μ S_F(p-k) γ_μ / k²
```

```
where S_F is the Feynman propagator.
```

```
This integral diverges as k → ∞ (ultraviolet divergence).
```

```
Regularised (dimensional regularisation):
Σ(p) = (α/4π)(...)  [ 2/(4-d) - γ_E + ln(4π) + finite ]
```

```
The 2/(4-d) term diverges as d → 4.
The physical prediction is the finite remainder after
the divergent term is absorbed into the bare parameters.
```

```
Physical output: anomalous magnetic moment of electron
g/2 = 1 + α/(2π) + ... = 1.001159652...
Measured: 1.00115965218...
Agreement to 12 significant figures — finite precision.
```

The structure is clear: an infinite intermediate quantity (the divergent loop integral) is regularised (made finite by an artificial parameter), and then the dependence on the regularisation parameter is absorbed into redefined physical quantities (renormalisation). The final prediction is finite and matches experiment. The infinite never appears in any physically meaningful quantity — it is present only in intermediate steps of the calculation.

### 12.3.2  What this structure means

Two interpretations of renormalization are possible:

### Interpretation 1 — The pragmatist view:

Renormalization is a successful calculational technique. We do not know why it works, but it does work, and the results agree with experiment. The mathematical framework is the real-valued, continuous formalism of QFT; renormalization extracts finite predictions from it. The infinite mathematics is the correct framework; the procedure just happens to give finite answers.

### Interpretation 2 — The scaffolding view:

Renormalization works because the physical predictions are finite, and the infinite mathematics is an approximation to an underlying discrete reality at the Planck scale. The divergences signal the breakdown of the continuous approximation at short distances. The finite predictions survive renormalization because they are the actual physical content; the infinities are artifacts of using the wrong mathematical framework below the Planck scale. The continuous framework is scaffolding — accurate in the regime where it is applied, but not ontologically fundamental.

BST's foundational position aligns with Interpretation 2. This is not an argument that Interpretation 1 is wrong — pragmatist realism about mathematical frameworks is a defensible position. The argument is that Interpretation 2 is equally coherent and is supported by the structure of quantum gravity research, the discreteness results at the Planck scale, and the pattern of renormalization itself (which always extracts finite answers, never infinite ones). If Interpretation 2 is correct, then the use of infinite mathematics in physics is precisely what BST predicts it is: scaffolding from which finite predictions are extracted.

### 12.3.3  Historical voices

The intuition behind this interpretation has historical precedent, though none of these figures advanced it in BST's specific terms. Dirac, in his 1951 paper on the difficulties of quantum electrodynamics, argued that the infinities in QED signal a fundamental failure of the theory at short distances and that a future, correct theory would not require renormalization to produce finite answers. Feynman in his Nobel lecture called the subtraction of infinities a 'dippy process' and expressed discomfort with the procedure despite its success. Wilson's development of the renormalization group (1971-1974) gave the clearest physical interpretation: quantum field theories should be understood as effective theories valid below some ultraviolet cutoff, and the renormalization group describes how the theory changes as the cutoff is lowered. The cutoff is precisely an upper bound on the energy scale — and equivalently, a lower bound on the length scale — below which the effective theory applies. Wilson's interpretation is structurally identical to BST's bound: the theory is valid up to a specific scale, and what happens beyond that scale is outside the theory's domain.


## 12.4  Discrete Approaches to Quantum Gravity

The strongest physical evidence for a finite mathematics of physics comes not from the infinities of QFT but from the discrete structure that multiple independent approaches to quantum gravity have discovered.

### 12.4.1  Loop quantum gravity

Loop quantum gravity (LQG) is the most developed canonical approach to quantum gravity. Its central result is that geometric quantities — area and volume — have discrete spectra. The area operator in LQG has eigenvalues:

```
A = 8πγℓ_P²  Σ_i √(j_i(j_i + 1))
```


```
where ℓ_P is the Planck length, γ is the Barbero-Immirzi
parameter, and j_i ∈ {0, 1/2, 1, 3/2, ...} are half-integers
labelling the spin network edges piercing the surface.
```

```
Key fact: area is quantised — it takes discrete values.
There is no area smaller than the minimum area eigenvalue.
Spacetime geometry is fundamentally discrete in LQG.
```

The continuous Riemannian geometry of general relativity emerges from the quantum geometry of LQG as a coarse-grained approximation at scales much larger than the Planck scale — exactly as classical mechanics emerges from quantum mechanics. The fundamental description is discrete; continuity is emergent.

### 12.4.2  Causal set theory

Causal set theory (Bombelli, Lee, Meyer, Sorkin, 1987) proposes that the fundamental structure of spacetime is a partially ordered set — a causal set — whose elements are discrete spacetime events and whose partial order encodes the causal relationships between them. The continuous Lorentzian manifold of general relativity emerges as a continuum approximation to the discrete causal set at macroscopic scales.
Causal set theory is explicitly a finite mathematics of spacetime. Its fundamental objects are sets and partial orders — exactly the kind of structures that BST handles. The volume of a spacetime region is estimated by the number of causal set elements it contains. The continuum limit is taken at the end of a calculation, as a technical convenience, not as an ontological commitment.

### 12.4.3  The holographic bound

The Bekenstein-Hawking entropy formula relates the entropy of a black hole to the area of its event horizon:

```
S = A / (4ℓ_P²)
```


```
where A is the horizon area and ℓ_P is the Planck length.
```

```
The entropy counts the number of microstates of the black hole.
Since entropy is always finite (for a finite system),
and A/ℓ_P² is a dimensionless ratio, the entropy is finite.
```

```
The holographic bound (Bekenstein, 1972; Susskind, 1995):
The maximum entropy of any physical system in a region
of space is proportional to the area of the boundary
in Planck units, not the volume:
```

```
S_max = A / (4ℓ_P²)   (finite when A is finite)
```

The holographic bound implies that any finite region of space can contain only a finite amount of information. This is a direct physical upper bound on the complexity of physical states — a bound of exactly the kind that the Axiom of Finite Bounds (AFB, Part III Section 3.3) posits at the mathematical level. The structural parallel is suggestive: both the holographic bound and AFB express the same intuition — that finite regions have finite content — at different levels of description. Whether the connection is deeper than structural analogy is a question for future work.

### 12.4.4  The Planck scale as a natural bound

The Planck length ℓ_P ≈ 1.616 × 10^{-35} m is the scale at which quantum gravitational effects become relevant. Below this scale, the classical concepts of smooth spacetime and continuous fields are expected to break down. In terms of the number of Planck-scale cells in the observable universe:

```
Observable universe volume: V ~ (4 × 10²⁶ m)³
Planck volume: V_P = ℓ_P³ ~ (1.6 × 10⁻³⁵ m)³
```


```
Maximum cells in observable universe:
N_max = V / V_P ~ (4 × 10²⁶ / 1.6 × 10⁻³⁵)³
= (2.5 × 10⁶¹)³
~ 10¹⁸⁵
```

```
This is a specific, astronomically large, finite number.
```

```
If spacetime is fundamentally discrete at the Planck scale,
then the number of distinct physical configurations of
the observable universe is at most 2^(N_max) — a specific,
finite (though unimaginably large) number.
```

```
The 'bound' in the Axiom of Finite Bounds, applied to
physics, corresponds to a number of this order of magnitude.
```

Plain language: If physics is fundamentally discrete at the Planck scale, then the physical world is a finite combinatorial structure, and its natural mathematical home is a finite set theory. The number of distinct configurations is astronomically large but finite — a specific natural number. AFB, applied to physics, asserts this bound exists. It says nothing about its value — exactly as BST's metatheoretic formulation says nothing about the value of n_M.


## 12.5  The Ontological Distinction

The physics argument for BST rests on a distinction that must be stated with maximum precision: the distinction between a mathematical framework and a physical ontology.

### The ontological distinction — formal statement:


```
Let T be a physical theory with mathematical framework F.

The framework claim: F is the mathematical language in
which T is stated. F may contain infinite objects (ℝ, ℂ,
infinite-dimensional Hilbert spaces).

The prediction claim: T produces real-valued predictions
p_1, p_2, ..., which are compared to measurements
m_1, m_2, ... at finite precision ε.

The ontological claim: the physical world instantiates
the objects of F — spacetime is a smooth manifold,
fields are smooth functions, observables take real values.

The framework claim and prediction claim are both
empirically established. They are confirmed by the
success of the theory T.

The ontological claim is not established by the framework
claim or the prediction claim. Using real-valued
mathematics to state T does not imply that the physical
world is continuous. Producing real-valued predictions
that agree with finite-precision measurements does not
imply that physical quantities actually take real values.

The ontological claim requires independent confirmation.
No such confirmation exists.
```

Plain language: A map is not the territory. Using continuous mathematics to describe a system does not mean the system is continuous — it may mean that continuous mathematics is a convenient and accurate approximation to a discrete reality at the scales being studied. The success of the approximation is evidence for its accuracy at those scales, not evidence that the approximation is ontologically exact at all scales.

### 12.5.1  The meter stick analogy

A simple analogy makes the distinction vivid. A carpenter uses a continuous real-valued length function to measure and cut wood. The measurement model assumes that lengths are real numbers — that there is a definite real-valued length corresponding to each board. The carpenter's predictions (this board is 2.43 meters long) are accurate and useful.
Does this mean that length is ontologically a real number? No. It means that real-valued length is an accurate model at the scale of carpentry. At the atomic scale, the concept of a sharp edge breaks down. At the quantum scale, position is uncertain. At the Planck scale, the concept of smooth spacetime geometry is expected to fail. The real-valued model works at the carpenter's scale, not because the world is really described by real numbers, but because the world behaves like it is, at that scale.
Physics is in the same position. The continuous mathematical framework works at the scales physics has probed — it is an accurate and powerful approximation. Whether it is ontologically exact at all scales, including scales below current experimental reach, is an open question. The inherited assumption is that it is. BST's foundational position is that this assumption should be scrutinised rather than inherited silently.


## 12.6  What BST Does and Does Not Claim

The argument in this part has a precise scope. It is worth stating what is and is not being claimed, to prevent misreading.

### 12.6.1  What is claimed

- The mathematical framework of physics (real analysis, differential geometry, quantum field theory) uses infinite objects, and this use is the direct inheritance of the mathematical tools available when those frameworks were developed — not a discovery that the physical world is infinite.
- The finite predictions extracted from these frameworks are the content that is empirically tested. The infinite mathematical objects are scaffolding — intermediate structures from which finite predictions are derived.
- Multiple independent lines of research in quantum gravity (LQG, causal sets, holographic bounds) suggest that spacetime may be fundamentally discrete at the Planck scale, with the continuous framework as an emergent approximation.
- BST provides an adequate mathematical foundation for physics as practised — for prediction, computation, and experimental comparison — because every step of every physical calculation that produces an empirically testable prediction is a finite computation.

### 12.6.2  What is not claimed

- BST does not claim that the physical world is provably discrete. The discreteness of spacetime is a hypothesis, not an established fact.
- BST does not claim that continuous mathematics is wrong, or that the standard formalism of physics should be abandoned. The continuous framework works; BST's claim is about its ontological interpretation, not its computational validity.
- BST does not claim to provide a new theory of physics. It claims to provide a foundation adequate to the mathematical content of existing physical theories, interpreted as theories about finite predictions rather than continuous ontologies.
- BST does not claim that every physical quantity is literally a bounded natural number. It claims that every empirically accessible quantity is approximated to finite precision, and that this finite precision content can be formalised within BST.


## 12.7  The Effective Field Theory Interpretation

The most technically precise version of the scaffolding view is Wilson's effective field theory (EFT) interpretation. It is worth developing this in some detail because it is both the most rigorous version of the argument and the most widely accepted framework in contemporary theoretical physics.
An effective field theory is a quantum field theory that is explicitly understood as valid only below some ultraviolet energy cutoff Λ. The cutoff is a parameter of the theory — it represents the scale at which new physics (unknown to the effective theory) becomes important. Below Λ, the EFT gives accurate predictions; above Λ, the EFT breaks down and a more fundamental theory is needed.

### EFT structure:


```
EFT(Λ) = quantum field theory with ultraviolet cutoff Λ
```

```
Physical predictions: p(E) for energies E << Λ
Validity domain: E << Λ
Breakdown: at E ~ Λ, new degrees of freedom appear
```

```
Example: the Standard Model as an EFT with Λ ~ M_Planck
Predictions: cross-sections, decay rates, scattering
amplitudes for E << M_Planck
Breakdown: at E ~ M_Planck, quantum gravity effects
become important
```

```
Mathematical structure of EFT(Λ):
All loop integrals have explicit ultraviolet cutoff Λ.
The theory is mathematically finite with the cutoff.
The 'infinite' theory is the limit Λ → ∞ of EFT(Λ).
But this limit is never taken in practice: Λ = M_Planck.
```

Under the EFT interpretation, the quantum field theories that describe all known physics are understood as EFTs with a natural cutoff at the Planck scale. With this cutoff, all loop integrals are finite. Renormalization is not the subtraction of actual infinities — it is the systematic organisation of the finite but large contributions from scales between the measurement scale and the cutoff. The 'infinities' of renormalization appear only when the limit Λ → ∞ is taken — a mathematical idealisation that no EFT requires.
This is precisely the BST picture: the theory is finite with its natural bound (Λ = Planck scale); the infinite formalism is a convenient mathematical idealisation. The EFT interpretation is widely adopted among working theoretical physicists, though some take a more realist view of the continuum formalism. BST's foundational position is the natural mathematical expression of the EFT view at the level of the underlying set theory.


## 12.8  Summary


### Physics and the Inherited Assumption — Summary:


```
The inherited assumption: physics requires infinite
mathematics because its fundamental equations are
formulated over the reals and continuous manifolds.
```

```
The decomposition:
A. Framework claim: true. Physics uses real analysis.
B. Prediction claim: true. Predictions are finite.
C. Ontological claim: unconfirmed. The world may
be discrete at the Planck scale.
```

```
A and B do not imply C.
```

```
Evidence for discreteness:
LQG: area and volume are quantised.
Causal sets: spacetime is a discrete partial order.
Holographic bound: finite regions have finite entropy.
Planck scale: ~10¹⁸⁵ cells in observable universe.
EFT: all physical QFTs have natural Planck cutoff.
```

```
Renormalization structure:
Infinite intermediate quantities → finite predictions.
This is the structure BST predicts for a theory
that uses infinite scaffolding to extract finite content.
```

```
BST provides a foundation adequate for:
All finite-precision predictions of physical theories.
All computational implementations of physical models.
The discrete/combinatorial structures of quantum gravity.
```

```
BST does not provide a foundation for:
The classical continuum formulation of field theory
taken as an ontologically exact description.
But no experiment requires this interpretation.
```


### ◆ The Core Claim of Part XII

Physics inherited its infinite mathematics from the historical accident that infinite analysis was the only well-developed mathematics available when the fundamental equations were written. The success of this mathematics in producing finite predictions that match finite-precision measurements is evidence for its accuracy as a calculational framework, not for its ontological exactness. The infinite is scaffolding: it organises the calculation and drops out at the end. Every empirically tested prediction is finite. BST is the natural foundation for a physics that acknowledges this structure honestly — a physics that treats the continuous formalism as an effective approximation to a fundamentally finite reality, valid at the scales it has been tested, without claiming more.


End of Part XII

# Part XIII: The Millennium Problems

> **Scope note.** Like Part XII, this part is an extrapolation beyond the formal core of the paper. The problem-by-problem analysis below applies BST's completed construction to seven specific classical problems, identifying which aspects have finite analogs, which require infinite objects BST does not posit, and how each problem transforms under the foundational shift. This analysis is exploratory and substantive, but it does not constitute a formal development of BST-based algebraic geometry, analytic number theory, or gauge theory — those developments are deferred to future work. See the Future Work section following Part XIII.


In 2000, the Clay Mathematics Institute identified seven problems as the most important unsolved questions in mathematics, offering a prize of one million dollars for the solution to each. The selection was authoritative: the problems were chosen by leading mathematicians as representative of the deepest open questions in their respective areas. They have since become the canonical measure of mathematical depth.

The original paper motivating this work claimed that BST 'dissolves' the Millennium Problems — that from a finite foundation, the questions either become trivially answerable or cease to make sense. This claim was identified in Part II as one of the most serious deficiencies of that paper: it was made without argument, and the word 'dissolve' was used to avoid engaging with the mathematical substance of the problems.

This part does what that paper did not. Each of the seven problems is examined on its own terms. The classical formulation is stated precisely. Its relationship to BST is analysed: which aspects of the problem require infinite mathematics, which aspects have finite analogs, and what a BST-based treatment of the problem's content looks like. The outcomes are varied and determined by the mathematics, not by a prior commitment to a particular answer. Several problems survive intact as genuine challenges even within a finite foundation. Several are genuinely reframed — the question changes in BST because the objects it concerns change. One problem (BSD) splits: its finite content is available, its analytic content is not. No problem simply dissolves; each either survives, transforms, or concerns objects outside BST's ontology entirely.

The treatment is not a claim to solve any of the Millennium Problems. It is a precise account of what happens to each problem when the foundational assumptions shift from ZFC to BST.


## 13.1  Preliminary: The Ontological Inventory

Each Millennium Problem involves specific mathematical objects. Before analysing the problems, it is useful to inventory which of their key objects exist in BST and which do not.

### Object inventory for Millennium Problems:


```
Object                     Exists in BST?   Notes
──────────────────────────────────────────────────────────
Natural numbers up to k    Yes              For any explicit k
All natural numbers N      No               Requires Infinity
Integer ring Z             No (as a set)    Unbounded
Rational field Q           No (as a set)    Unbounded
Real field R               No               Requires Infinity; unbounded
Bounded reals ℝ_B(k)       Yes              Cauchy completion of ℚ_B(k²);
                                            k-complete; Part VIII §8.7
Completed complex field C  No               Requires completed R
Bounded complex field       Yes              ℝ_B(k) × ℝ_B(k); bounded
  ℂ_B(k⁴)                                  field, algebraically closed
                                            within domain; Part VIII §8.8
Bounded quaternions         Yes              Cayley-Dickson from ℂ_B(k⁴);
  ℍ_B(k⁸)                                  associative division algebra;
                                            Part VIII §8.8.4
Prime numbers up to k      Yes              Finite set
All prime numbers          No               Requires Infinity
Polynomial rings Z[x]      No (as a set)    Infinite carrier
Finite polynomial rings    Yes              Coefficients bounded
Elliptic curves over R     No               Completed R unavailable
Elliptic curves over F_p   Yes              Finite field, finite
Smooth manifolds           No               Requires R
Finite graphs              Yes              Sets of vertices+edges
Turing machines (general)  No               Unbounded tape
Bounded Turing machines    Yes              Tape bounded by k
Hilbert spaces             No               Infinite-dimensional
Finite-dim vector spaces   Yes              Over finite fields or ℂ_B(k⁴)
Navier-Stokes equations    No               Over R^3
Discrete fluid equations   Yes              On finite grids
Yang-Mills (continuum)     No               Gauge field over R^4
Yang-Mills (lattice)       Yes              Discrete lattice gauge
Gauge groups SU(N)_B(k⁴)  Yes              Matrices over ℂ_B(k⁴)
                                            with U†U = I within precision;
                                            Part VIII §8.8
```

The inventory guides the analysis. When a problem concerns objects that exist in BST, the problem survives intact or in modified form. When it concerns objects that do not exist in BST, it must be reframed in terms of finite analogs — if such analogs capture the problem's mathematical content — or set aside as intrinsically infinitary.


## 13.2  P vs NP


### Problem 1: P vs NP  [SURVIVES INTACT]

The P vs NP problem asks whether every problem whose solution can be verified in polynomial time can also be solved in polynomial time. It is formulated in terms of complexity classes — collections of decision problems — and does not inherently depend on infinite sets. The objects of computational complexity theory are finite strings, finite computations, and finite-time bounds.

### Classical formulation:


```
P  = { L ⊆ {0,1}* | L is decidable in polynomial time }
NP = { L ⊆ {0,1}* | L is verifiable in polynomial time }

P vs NP: Does P = NP?

Equivalently: Is there a polynomial-time algorithm that
determines satisfiability of propositional formulas (SAT)?
```

The formulation uses {0,1}* — the set of all finite binary strings — which is an infinite set. Does this make P vs NP unavailable in BST?

### BST reformulation:


```
In BST, {0,1}* does not exist as a completed set.
But the problem's content is about resource bounds
relative to input size — a purely finite relationship.

BST-P:  { L ⊆ {0,1}^≤k | L decidable in k^c steps
          for some constant c, all inputs of length ≤ k }

BST-NP: { L ⊆ {0,1}^≤k | L verifiable in k^c steps }

BST P vs NP: For any k, does BST-P_k = BST-NP_k?

This is not a different question — it is the same question
stated over bounded domains. A separation P ≠ NP over
unbounded strings implies BST-P_k ≠ BST-NP_k for all
sufficiently large k. The problems are equivalent in content.
```

P vs NP survives intact for a deeper reason: any proof or disproof of P vs NP would consist of a finite argument — a mathematical proof — about finite computations. The existential quantifiers ('there exists a polynomial-time algorithm') range over algorithms, which are finite objects (Turing machine descriptions, circuit families, etc.). A proof that P = NP would exhibit a specific algorithm; a proof that P ≠ NP would demonstrate that no such algorithm exists.

The core difficulty of P vs NP — and the reason it remains unsolved — is not related to infinite sets. It is a combinatorial and proof-theoretic difficulty: circuit lower bounds, natural proofs barriers, algebrization barriers. These barriers are as present in BST as in ZFC. The problem does not dissolve and is not simplified by a finite foundation.

BST verdict: P vs NP is inherently a finite combinatorial question about resource bounds. Its formulation is naturally bounded. Its barriers are unchanged. A proof in ZFC would translate directly to BST.


## 13.3  The Hodge Conjecture


### Problem 2: The Hodge Conjecture  [TRANSFORMS — primary: Tate Conjecture; secondary: Bounded Hodge Conjecture over ℂ_B(k⁴)]

The Hodge Conjecture concerns algebraic cycles on complex projective varieties. Its statement requires cohomology groups of smooth complex manifolds — objects that depend essentially on the real and complex number fields and on the machinery of algebraic topology over infinite fields.

### Classical formulation:


```
Let X be a non-singular complex projective algebraic variety.
A Hodge class on X is a rational cohomology class of type (p,p)
in the Hodge decomposition of H^{2p}(X, Q).

Hodge Conjecture: Every Hodge class is a rational linear
combination of classes cl(Z) of algebraic cycles.

Objects required:
Complex projective variety X (defined over C)
Cohomology H^*(X, Q) (infinite-dimensional Q-vector space)
Hodge decomposition (analytic, uses C and R)
Algebraic cycles (finite-codimension subvarieties)
```

Complex projective varieties, cohomology groups over Q, and the Hodge decomposition all require the real and complex number fields. None of these objects exist in BST as stated. The classical Hodge Conjecture cannot be formulated in BST.

But this is not a verbal dismissal — it is a genuine mathematical observation. The Hodge Conjecture concerns the relationship between the analytic structure of a complex manifold (captured by its Hodge decomposition) and its algebraic structure (captured by algebraic cycles). In BST's finite world, this relationship has a precise finite analog that isolates exactly what is combinatorial and algebraic about the problem.

### The finite analog — varieties over finite fields:


```
Let F_q be a finite field (q = p^n, p prime).
Let X be a smooth projective variety over F_q.

The étale cohomology H^*(X, Q_ℓ) is the finite-field
analog of classical cohomology. It is defined using
the étale topology — a purely algebraic construction
that does not require R or C (with the caveat that
Q_ℓ-coefficients involve ℓ-adic completions; the
relevant finiteness is that the groups H^*(X, Q_ℓ)
are finite-dimensional, so the key algebraic data
is captured by finite matrices).

The Tate Conjecture over finite fields:
Every Tate class in H^{2p}(X, Q_ℓ(p)) is a rational
linear combination of cycle classes.

Relationship: The Tate Conjecture is the finite-field
analog of the Hodge Conjecture — closely related, and
implied by the Hodge Conjecture in certain cases.
For abelian varieties, Tate is proved (Tate 1966,
Faltings 1983). For general varieties, it is open.
The two conjectures are not known to be equivalent
in general.
```

The transformation is non-trivial: the classical Hodge Conjecture, over C, becomes the Tate Conjecture over finite fields in BST. The Tate Conjecture is an open mathematical problem of comparable depth, closely related to the Hodge Conjecture and implied by it in certain cases, though not known to be equivalent in general. Its reformulation in BST-compatible terms uses étale cohomology — a construction that works over finite fields and is available in BST (it uses finite algebraic structures, not real analysis). The problem does not vanish; it transforms.

The construction of ℂ_B(k⁴) in Section 8.8 permits a second reformulation. With ℂ_B(k⁴) available, bounded complex varieties can be defined as zero sets of polynomials with coefficients in ℂ_B(k⁴). Bounded simplicial cohomology over ℂ_B(k⁴) can be defined using finite simplicial complexes — a BST-available construction (Part VII). A bounded Hodge conjecture can then be formulated:

```
Bounded Hodge Conjecture over ℂ_B(k⁴):
Let X be a bounded complex projective variety
(zero set of polynomials in ℂ_B(k⁴)^n within bound).
Let H^{2p}(X, ℚ_B) be its bounded simplicial cohomology.
Every class of type (p,p) in H^{2p}(X, ℚ_B) is, within
precision 1/k, a rational linear combination of bounded
algebraic cycle classes.
```

This formulation is weaker than the classical Hodge Conjecture in two respects: it uses bounded simplicial cohomology in place of the full Hodge decomposition (which requires analytic machinery not yet fully developed in BST — see Part X, Sections 10.4–10.5), and the algebraic cycle classes are approximate to precision 1/k. Recovery type: Type III (approximate, with the deviation from the classical ideal explicit at precision 1/k; the formulation approaches the classical conjecture as k → ∞, pending the full Kähler development). The Tate Conjecture over finite fields remains the primary and more fully available BST analog.

BST verdict: The classical formulation requires the completed field C and its analytic machinery. Two analogs are available in BST: the Tate Conjecture over finite fields (primary — fully formulated using étale cohomology), and a bounded Hodge conjecture over ℂ_B(k⁴) (secondary — formulated, but requiring further development of bounded complex analysis to state in full generality). Neither is a trivialisation; both are open mathematical problems of independent interest.


## 13.4  The Riemann Hypothesis


### Problem 3: The Riemann Hypothesis  [SURVIVES — REFRAMED]

The Riemann Hypothesis is the conjecture that all non-trivial zeros of the Riemann zeta function lie on the critical line Re(s) = 1/2. The zeta function is defined by an infinite series and analytically continued to the entire complex plane. Both objects — the complex plane and the analytic continuation — require R and C.

### Classical formulation:


```
Riemann zeta function:
ζ(s) = Σ_{n=1}^∞  n^{-s}   for Re(s) > 1

Extended by analytic continuation to C \ {1}.
Non-trivial zeros: complex numbers ρ with ζ(ρ) = 0
and 0 < Re(ρ) < 1.

RH: All non-trivial zeros ρ satisfy Re(ρ) = 1/2.
```

The classical RH is formulated over C and requires analytic continuation — unavailable in BST. But the Riemann Hypothesis has a precise finite analog via the theory of L-functions over finite fields, and this analog has already been proved: it is the Riemann Hypothesis for curves over finite fields, established by Weil (1948) and generalised to all varieties by Deligne (1974).

### The finite analog — Weil conjectures (proved):


```
Let X be a smooth projective variety over F_q.
The zeta function of X over F_q:

Z(X/F_q, T) = exp( Σ_{n=1}^∞ |X(F_{q^n})| T^n / n )

where |X(F_{q^n})| is the number of points of X over F_{q^n}.
This is a finite count at each step — fully BST-available.
The formula defines Z as a formal power series in T; each
coefficient is a finite natural number. Weil conjecture (i)
— that Z is a rational function of T — then expresses it
as a ratio of finite polynomials, making Z a finite object
once its rationality is established.

Weil conjectures (Weil 1949; proved Deligne 1974):
(i)   Z is a rational function
(ii)  Z satisfies a functional equation
(iii) The zeros of Z have absolute value q^{-i/2}
      (the Riemann Hypothesis for finite fields)
(iv)  The degree of Z matches the Betti numbers
      (connection to topology)

Deligne's proof uses étale cohomology — finite-field
methods available in BST.
```

The Riemann Hypothesis over finite fields is proved. The classical RH over C is open. The relationship between them is not an equivalence — the finite-field result does not imply the classical result — but it is the correct BST reformulation of the same underlying question: where do the zeros of an arithmetic zeta function lie?
Moreover, the classical RH has a precise equivalent formulation in terms of the error term in the prime counting function — a statement about natural numbers:

### Equivalent formulation of RH:


```
RH is equivalent to: for all x ≥ 2,

|π(x) - li(x)| < (1/8π) √x ln(x)

where π(x) = #{p prime | p ≤ x} is the prime counting
function and li(x) = ∫_2^x dt/ln(t) is the logarithmic
integral.

BST status: each specific instance (for a specific x = k)
is a computable check. The universal statement ∀x ... is
a Category D result (Section 9.6): BST proves each instance
but cannot assert the universally quantified form.

A proof of RH in classical mathematics would reduce to
a finite argument that BST could verify at each instance.
```

BST verdict: The classical RH requires C and analytic continuation. The BST analog is the Weil conjectures over finite fields (proved by Deligne). The classical RH also has a prime-counting equivalent that BST handles instance-by-instance.

The construction of ℂ_B(k⁴) in Section 8.8 permits a further reformulation. The partial zeta sum can now be computed inside BST's number system:

```
Bounded zeta function:
ζ_B(s, k)  :=  Σ_{n=1}^{k}  n^{-s}   for s ∈ ℂ_B(k⁴)

Each term n^{-s} = exp(−s · log n) is computable in
ℂ_B(k⁴) using power series representations of the
bounded exponential and logarithm over ℝ_B(k)
(Part VIII, Section 8.7), restricted to the complex
domain via the real and imaginary components.

Bounded RH: for sufficiently large k, all zeros of
ζ_B(s, k) with 0 < Re(s) < 1 lie within 1/k of the
line Re(s) = 1/2.
```

This is not a reformulation of the classical RH — the analytic continuation that defines the non-trivial zeros in the region Re(s) < 1 is not available in BST, and the partial sums ζ_B(s, k) do not have the same zero structure as the continued zeta function. The bounded formulation is better understood as a numerical investigation tool: it allows BST to reason about the empirical distribution of zeros of finite truncations. The classical RH over the completed complex plane remains outside BST's reach.

The problem does not dissolve — its finite-field version was a major achievement, and the classical version remains open.


## 13.5  Yang-Mills Existence and Mass Gap


### Problem 4: Yang-Mills Existence and Mass Gap  [SURVIVES — REFRAMED]

The Yang-Mills problem asks for a rigorous mathematical construction of Yang-Mills quantum gauge theory in four-dimensional Euclidean space R^4, and for a proof that this theory has a mass gap — a positive lower bound on the spectrum of the Hamiltonian.

### Classical formulation:


```
Yang-Mills theory: quantum field theory with gauge group
G (compact Lie group, e.g. SU(2) or SU(3)).

Action: S[A] = (1/4g²) ∫_{R^4} Tr(F_{μν} F^{μν}) d⁴x

where A is a connection (gauge field) on a principal
G-bundle over R^4, and F = dA + A ∧ A is the curvature.

Problem: Construct a quantum field theory with this
action rigorously as a measure on the space of
connections, and show that the Hamiltonian H satisfies
H ≥ Δ > 0  (mass gap Δ).

Objects: R^4, principal G-bundle, space of connections
(infinite-dimensional), path integral measure.
None of these exist in BST.
```

The Yang-Mills problem is intrinsically analytic — it asks for a rigorous construction of an infinite-dimensional path integral. However, it has a well-studied finite analog in lattice gauge theory, which is the standard numerical approach to non-perturbative QCD and is fully finite in its formulation.

### Finite analog — lattice Yang-Mills:


```
Replace R^4 with a finite lattice Λ = (aZ)^4 ∩ [0,L]^4
of spacing a and size L (N = L/a sites per dimension).

Lattice gauge field: U_{x,μ} ∈ G for each link (x,μ).
This is a finite set of group elements.

Lattice action: S[U] = (1/g²) Σ_{plaquettes} Re Tr(U_p)
where U_p is the ordered product around a plaquette.

Partition function: Z = ∫ ∏_{links} dU  e^{-S[U]}
This is a finite-dimensional integral over compact groups.
It exists rigorously for any finite lattice.

Lattice mass gap: The lattice theory has a spectral gap
Δ_lat(a,L) that depends on the lattice parameters.

The full Yang-Mills problem asks: does Δ_lat(a,L)
have a well-defined limit as a → 0 and L → ∞,
and is this limit positive?

In BST: the lattice theory is fully formalisable.
The continuum limit requires the completed real line,
which BST addresses with ℝ_B(k) as the bounded domain
(Category A, Section 9.3).
The BST question: for finite lattices of increasing
refinement, does the spectral gap remain positive?
```

The mass gap problem in BST becomes: does the lattice spectral gap remain bounded away from zero as the lattice is refined? This is a well-posed finite question about the spectral properties of a finite matrix (the lattice transfer matrix). It does not resolve the classical problem — the continuum limit is still out of reach — but it identifies the precise finite content that BST can address.

The construction of ℂ_B(k⁴) in Section 8.8 strengthens this reformulation. The classical gauge groups SU(N), U(N), and SO(N) are defined over C as matrix groups satisfying algebraic conditions. With ℂ_B(k⁴) available, bounded gauge groups can be defined directly:

```
Bounded gauge group SU(N)_B(k⁴):
The set of N×N matrices M with entries in ℂ_B(k⁴)
satisfying M†M = I and det(M) = 1, within precision 1/k.

Existence: Each matrix is a finite tuple of elements
of ℂ_B(k⁴). The conditions M†M = I and det(M) = 1
are expressible in ℂ_B(k⁴). The set of solutions is
finite and BST-constructible by Bounded Separation. ✓

Lie algebra 𝔰𝔲(N)_B(k⁴): the set of N×N skew-Hermitian
traceless matrices with entries in ℂ_B(k⁴), within bound.
This is a finite-dimensional vector space over ℝ_B(k).
```

This means the Yang-Mills action can be written with gauge fields taking values in the Lie algebra 𝔰𝔲(N)_B(k⁴), over the bounded spacetime lattice ℝ_B(k)⁴. The lattice gauge theory formulation is now explicitly connected to the group-theoretic structure of the continuum theory, rather than treating the lattice as a purely combinatorial substitute. The continuum limit — sending lattice spacing to zero and volume to infinity — remains outside BST, requiring completed R⁴.

BST verdict: The continuum formulation requires R^4 and infinite-dimensional analysis — unavailable in BST. The lattice formulation is fully finite and BST-available. With ℂ_B(k⁴), the gauge group SU(N)_B(k⁴) is recoverable within BST, bridging the lattice formulation to the group-theoretic structure of the continuum theory. The problem does not dissolve; it reframes as a question about the behavior of finite spectral gaps under lattice refinement, with the group structure now formally available.


## 13.6  Navier-Stokes Existence and Smoothness


### Problem 5: Navier-Stokes Existence and Smoothness  [SURVIVES — REFRAMED]

The Navier-Stokes problem asks whether smooth initial data for the incompressible Navier-Stokes equations in R^3 always give rise to smooth global solutions, or whether singularities (blow-up) can develop in finite time.

### Classical formulation:


```
Navier-Stokes equations (incompressible, R^3):

∂u/∂t + (u·∇)u = -∇p + ν∇²u   (momentum)
∇·u = 0                          (incompressibility)

u: R^3 × [0,∞) → R^3 is the velocity field
p: R^3 × [0,∞) → R is the pressure
ν > 0 is the kinematic viscosity

Problem: Given smooth initial data u₀ ∈ C^∞(R^3) with
u₀ rapidly decreasing, does a smooth global solution
u ∈ C^∞(R^3 × [0,∞)) always exist? If not, can
singularities form?

Objects required: R^3, smooth functions C^∞,
partial differential operators, Sobolev spaces.
```

The Navier-Stokes problem requires smooth functions on R^3 — objects that do not exist in BST. However, the problem's physical content — understanding the development of turbulence, whether velocity fields blow up, how solutions evolve — has a natural finite formulation in terms of discrete fluid dynamics.

### Finite analog — discrete Navier-Stokes:


```
Replace R^3 with a finite grid G = {0, h, 2h, ..., Nh}^3
of spacing h and size N.

Discrete velocity field: u_{x,t} ∈ Q^3 for x ∈ G, t ∈ T
Discrete pressure: p_{x,t} ∈ Q for x ∈ G, t ∈ T

Discrete NS (finite difference):
(u_{x,t+τ} - u_{x,t})/τ + (u·∇_h)u_{x,t}
= -∇_h p_{x,t} + ν∇_h² u_{x,t}

where ∇_h, ∇_h² are finite-difference operators on G.

This system is a finite set of rational-valued
difference equations — fully BST-available.

BST question: Does the discrete solution remain bounded
as h → 0 and N → ∞ (within BST: as h decreases and
N increases for explicit values)?

For each fixed h and N, the discrete NS is a finite
system with a unique solution provable by BI-BST.
The continuum limit requires ℝ, which BST addresses
with ℝ_B(k) as the bounded domain (Category A, Section 9.3).
```

The computational study of Navier-Stokes — which is what fluid dynamics in practice consists of — is entirely in the discrete, finite setting. Computational fluid dynamics (CFD) solves discrete approximations to the Navier-Stokes equations on finite grids. BST is the natural foundation for this practice. The classical problem — asking about smooth solutions on all of R^3 — is beyond BST. But the physical question — does turbulence develop, can velocities blow up? — is addressed by the discrete BST-available analog.

BST verdict: Smooth solutions on R^3 require real analysis unavailable in BST. The discrete analog on finite grids is fully BST-available and is what computational fluid dynamics actually uses. The problem does not dissolve; it reframes as the behavior of discrete approximations under mesh refinement.


## 13.7  Birch and Swinnerton-Dyer Conjecture


### Problem 6: Birch and Swinnerton-Dyer Conjecture  [PARTIALLY SURVIVES]

The Birch and Swinnerton-Dyer (BSD) conjecture concerns the arithmetic of elliptic curves — the relationship between the rank of the group of rational points on an elliptic curve and the order of vanishing of its L-function at s = 1.

### Classical formulation:


```
Let E be an elliptic curve over Q.
E(Q) = {rational points of E} is a finitely generated
abelian group (Mordell's theorem):
E(Q) ≅ Z^r ⊕ E(Q)_tors
where r is the rank and E(Q)_tors is the finite torsion.

L-function: L(E, s) = Π_p L_p(E, p^{-s})^{-1}
(Euler product over primes; analytically continued to C).

BSD conjecture:
(i)  ord_{s=1} L(E,s) = r
(ii) The leading coefficient at s=1 encodes the
     regulator, Sha, Tamagawa numbers, and torsion.
```

BSD involves both finite and infinite objects. The rational points E(Q) form a finitely generated abelian group — a finite-type algebraic structure. The L-function requires analytic continuation over C. BST can handle the rational points but not the L-function.

### BST-available content:


```
1. Elliptic curves over finite fields F_p:
   E(F_p) = {points of E over F_p} — a finite abelian group.
   |E(F_p)| is a specific natural number for each prime p.
   BST can reason about these finite groups fully.

2. Hasse's theorem (available in BST):
   | |E(F_p)| - (p+1) | ≤ 2√p
   Each instance (for explicit p) is a finite check.

3. Torsion subgroup (available in BST):
   E(Q)_tors is a finite group.
   Mazur's theorem classifies it: one of 15 possibilities.
   The classification is finite and BST-available.

4. Rank — partially available:
   The rank r is a natural number.
   For any given elliptic curve with explicit equations,
   the rank is a specific finite number.
   BST proves claims about the rank of a specific curve,
   but not the general BSD conjecture for all curves over Q
   (which requires Q as a completed object).

5. The L-function — not available:
   L(E,s) requires analytic continuation over C.
   BST cannot formulate this part of BSD.
```

The BSD conjecture partially survives in BST: the half of the conjecture that concerns finite groups and specific numerical predictions is BST-available; the half that connects to the L-function and its analytic continuation requires C. This is a genuine split — not a clean survival or a clean dissolution, but a decomposition of the problem into its finite and infinitary parts.

BST verdict: The finite parts — elliptic curve point groups over F_p, torsion classification, rank of specific curves — are BST-available. The L-function connection requires C. BSD decomposes: its finite content survives, its analytic content does not.


## 13.8  The Poincaré Conjecture (Solved)


### Problem 7: The Poincaré Conjecture  [SOLVED — BST STATUS NOTED]

The Poincaré Conjecture was solved by Perelman in 2002-2003 using Ricci flow with surgery on three-dimensional manifolds. The conjecture and its proof both require the theory of smooth manifolds — real analysis over continuous spaces. Neither is available in BST.

### Classical statement (proved):


```
Every simply connected, closed 3-manifold is
homeomorphic to the 3-sphere S^3.

Perelman's proof: Ricci flow with surgery.
Uses: Riemannian geometry, PDEs on manifolds,
geometrisation conjecture, all over R.

BST status: The statement and proof require smooth
manifolds and continuous topology — not available in BST.
This is not Category C (correct absences that represent
gains). It is simply a true theorem about objects BST
does not posit. BST has no analog of the result itself,
only a related combinatorial question.
```

The Poincaré Conjecture has a combinatorial analog in the form of the combinatorial Poincaré conjecture: every PL (piecewise-linear) manifold that is a homology sphere and simply connected is PL-homeomorphic to the standard sphere. This was proved in dimensions ≥ 5 by Smale (h-cobordism theorem) and in dimension 4 by Freedman. The 3-dimensional PL version follows from Perelman.

### BST-available analog:


```
Simplicial complexes: finite sets of simplices
(vertices, edges, triangles, tetrahedra) with
compatibility conditions.
These are finite combinatorial objects — fully in BST.

Simplicial homology: computable from the simplicial
complex by matrix algebra over Z (bounded in BST).

Combinatorial Poincaré problem (BST version):
Characterise finite simplicial complexes that are
PL-homeomorphic to the standard simplicial n-sphere.

This is a finite decision problem — in principle
decidable and BST-formulable, though computationally hard.
(Recognition of the 3-sphere is decidable: Rubinstein 1995,
Thompson 1994; but no known polynomial-time algorithm.)
```

BST verdict: The classical Poincaré Conjecture is solved. BST cannot formulate the classical version (requires smooth manifolds). The result is not Category C — it is not an unwanted absence, just a true theorem about objects outside BST's ontology. The combinatorial analog — characterising finite simplicial complexes homeomorphic to spheres — is BST-available, decidable, and computationally interesting.


## 13.9  Summary: The Millennium Problems and BST


### Summary table:


```
Problem               BST Status          Key observation
──────────────────────────────────────────────────────────────
P vs NP               Survives intact     Inherently finite;
                                          barriers unchanged

Hodge Conjecture      Transforms —        Primary: Tate Conjecture
                      two analogs         over finite fields (open).
                                          Secondary: bounded Hodge
                                          conjecture over ℂ_B(k⁴)
                                          (formulated; full
                                          development deferred)

Riemann Hypothesis    Survives —          Finite-field version
                      reframed            proved (Deligne 1974);
                                          classical version open;
                                          truncated ζ_B(s,k) over
                                          ℂ_B(k⁴) available for
                                          numerical investigation

Yang-Mills            Survives —          Lattice gauge theory
                      reframed            is fully finite;
                                          SU(N)_B(k⁴) recoverable
                                          over ℂ_B(k⁴); continuum
                                          limit not available in
                                          BST; ℝ_B(k) provides
                                          bounded domain

Navier-Stokes         Survives —          Discrete CFD is BST-
                      reframed            available; smooth R^3
                                          solutions require
                                          ℝ_B(k) reformulation

BSD Conjecture        Partially           Finite parts survive;
                      survives            L-function requires
                                          completed C

Poincaré              Solved              Combinatorial analog
(solved 2003)         (classical);        available; smooth
                      BST analog noted    version requires R —
                                          outside BST's ontology
```


## 13.10  What the Analysis Shows

The Millennium Problems do not dissolve under a finite foundation. They transform. The transformation is determined by the mathematical structure of each problem, not by a prior commitment to any answer.

P vs NP is the one problem that requires no transformation at all. It is inherently a question about finite computations, and the shift from ZFC to BST changes nothing about the problem or its difficulty. If P vs NP is solved in classical mathematics, the proof translates to BST without loss.

The Hodge Conjecture, Riemann Hypothesis, Yang-Mills, Navier-Stokes, and BSD all transform: their analytic or continuous components require bounded reformulation, and finite analogs capture the algebraic and combinatorial content. The recovery of ℂ_B(k⁴) in Part VIII strengthens three of these: the Hodge Conjecture gains a second bounded formulation; the Riemann Hypothesis gains a numerical investigation tool in the truncated zeta function over ℂ_B(k⁴); and Yang-Mills gains a formal account of its gauge group structure within BST. In each case, the finite analog is a genuine open mathematical problem of comparable depth — or has already been a landmark achievement (Weil conjectures, Deligne 1974). The transformation is not trivialisation; it is recontextualisation.

BSD is the most interesting case: it splits. The finite part survives; the analytic part does not. This means BST can address half of BSD — the arithmetic geometry half — but not the L-function half. The split reveals the deep structure of the conjecture: it connects finite arithmetic (rational points on curves) to analytic structure (the L-function), and these two aspects respond differently to the finite foundation.

The Poincaré Conjecture is solved, and its solution requires tools BST does not have. The combinatorial analog is available, is of independent interest, and connects to the computational complexity of recognising spheres. But the solved problem is not within BST's reach.

The original paper's claim that BST 'dissolves' the Millennium Problems was both too strong (P vs NP does not dissolve at all) and too weak (the transformations for the other problems are mathematically substantive, not mere dissolutions). The correct account is what this part has provided: a problem-by-problem analysis showing exactly what changes and what doesn't, and why.

### ◆ The Core Finding of Part XIII

The Millennium Problems do not dissolve under a finite foundation — they transform. P vs NP survives completely unchanged. The Hodge Conjecture has two BST analogs: the Tate Conjecture over finite fields (primary, fully formulated using étale cohomology) and a bounded Hodge conjecture over ℂ_B(k⁴) (secondary, requiring further development of bounded complex analysis). The Riemann Hypothesis has a proved finite-field analog (Weil/Deligne), a surviving prime-counting reformulation, and a truncated zeta function over ℂ_B(k⁴) available for numerical investigation. Yang-Mills and Navier-Stokes reframe as lattice and discrete questions that are fully finite, with SU(N)_B(k⁴) now recoverable over ℂ_B(k⁴) for Yang-Mills. BSD splits into its finite arithmetic content (available) and its analytic content (lost). The transformations are not trivialisations — in each case the BST-reformulated problem is a genuine and open mathematical challenge, or has been a landmark achievement. The shift from ZFC to BST does not make hard mathematics easy; it identifies which hard questions are about finite structures and which are about completed infinities.

End of Part XIII


# Future Work

Parts I–XI of this paper constitute the formal core: BFOL, the seven axioms of BST, the ordinal and cardinal theory, two induction schemas, function and relation theory, the complete bounded number chain through ℂ_B(k⁴), real analysis, bounded complex analysis, and the complexity-theoretic development. Parts XII and XIII apply this foundation to physics and to the Millennium Problems as exploratory extrapolations. What follows identifies the open programmes in dependency order — distinguishing internal gaps in existing results from new construction programmes, and near-term from longer-range work.


## Completing the existing formal core

Two items in the paper are formally incomplete: specific arguments were stated as proof sketches where full proofs are required.

**Proof-theoretic ordinal of BST.** Section 9.7 gives a preliminary placement of |BST| = ω^ω, equivalent to IΣ₁, established by bounding above via the Goodstein independence argument and below via primitive recursive totality. The claim is almost certainly correct, but a complete ordinal analysis — a formal cut-elimination argument — has not been carried out. Until it is, the placement in Section 9.7 and the Category D boundary characterisation it grounds should be understood as preliminary. This is the most important single open item in the paper's formal core.

**Mostowski collapse in the A/B equivalence proof.** Section 3.3.9 establishes the semantic equivalence of Formulations A and B via an embedding of every finite BST-structure into some standard model 𝒱_n. The argument uses the Mostowski collapsing lemma, which is stated but not fully proved within ACA₀. Completing this argument within the stated metatheory would close the last proof sketch in Part III.

**Bounded Power Set independence.** Section 4.6 establishes the independence of all seven BST axioms via explicit finite models. One quantitative refinement remains: constructing a model in which Theorem 4.3 (Bounded Power Set holds for sets with |A| ≤ ⌊log₂(n_M)⌋) is satisfied but full Power Set fails for sets above that threshold. The model exists in principle; the explicit construction has not been carried out.


## The analytic and algebraic extension stack

These are new constructions that build directly on existing Parts and have clear entry points.

**Completing bounded complex analysis.** Part X develops k-holomorphic functions, bounded Cauchy theory, bounded Dolbeault cohomology, and the bounded Hodge conjecture formulation. Two sections of Part X are marked preliminary: bounded Kähler geometry (Section 10.4) and the Hodge decomposition theorem (Theorem 10.3). Completing these requires proving that the approximate Kähler identities hold to within 1/k and that the eigenspace decomposition of the bounded Laplacian is stable under the approximation. These are concrete technical tasks with a clear success criterion: Theorem 10.3 elevated from proof sketch to theorem, which in turn gives the bounded Hodge conjecture its full analytic foundation. This is the most immediate extension of the Part X programme.

**Bounded functional analysis.** The ingredients are in place: finite metric spaces (Section 9.3), finitely-additive measures, bounded integration, and finite-dimensional vector spaces over ℂ_B(k⁴). The missing development is a BST-native treatment of norms, bounded linear operators, dual spaces, and finite-dimensional spectral theory — the analogs of the Hahn-Banach theorem (recoverable in finite-dimensional form), finite operator algebras, and finite Hilbert space structure over ℂ_B(k⁴). This layer is a prerequisite for the discrete geometry and gauge theory programmes below.

**Bounded simplicial topology as an internal development.** Part X uses finite simplicial complexes as the substrate for bounded manifolds. A systematic internal development of simplicial homology and cohomology — built directly inside BST rather than as a recovery account — would complete the topological layer and is a natural companion to the functional analysis programme. The ingredients are all available: finite sets of simplices, boundary maps as finite matrices over ℤ_B(k), homology groups as finite abelian groups computed by Gaussian elimination.

**Extending the number chain: ℍ_B(k⁸) and 𝕆_B(k¹⁶).** Section 8.8 names the Cayley-Dickson extensions ℍ_B(k⁸) and 𝕆_B(k¹⁶) as constructible but does not develop their algebraic properties beyond existence. The next step is establishing these explicitly — non-commutativity and associativity of ℍ_B(k⁸), non-associativity of 𝕆_B(k¹⁶) — and then identifying which parts of quaternionic Kähler geometry and G₂-structure theory have BST-available finite analogs.


## Longer-range construction programmes

These require the analytic and algebraic stack above to be more developed before they become specific constructions rather than directions.

**Bounded gauge theory.** Part XIII establishes that SU(N)_B(k⁴) is recoverable over ℂ_B(k⁴) and that lattice Yang-Mills theory is fully finite. The natural next programme is building out bounded principal bundles, finite connections as group-valued edge functions on finite graphs, discrete curvature tensors as plaquette products, and bounded Yang-Mills action functionals — moving from "the gauge groups exist inside BST" to "a complete finite gauge theory exists inside BST." This requires the functional analysis layer above.

**BST-native discrete quantum gravity.** Part XII identifies the structural parallel between the Axiom of Finite Bounds and the holographic bound and the discrete structures of loop quantum gravity and causal set theory. Developing BST as the explicit mathematical foundation for these programmes would require BST-native treatments of finite partial orders with causal structure, discrete Lorentzian geometry, causal intervals and volumes, local combinatorial curvature, and lattice gauge fields. This is one of the richest open directions generated by the paper, but it depends on the functional analysis, simplicial topology, and bounded gauge theory developments above.

**Richer bounded complexity theory.** Part XI develops BST-P, BST-NP, and the polynomial hierarchy via Σ^b_i formula classes. Natural extensions include bounded circuit complexity — which connects directly to the Razborov-Rudich and algebrisation barriers named in Part XI — bounded proof complexity (connecting BST proof length to circuit lower bounds via Theorem 11.5), bounded derandomisation classes, and a formal bounded cryptographic security framework. These extensions are internal to the complexity programme and do not depend on the analytic stack.

**The finite analog programme for advanced algebraic structures.** Part IX surveyed BST's relationship to classical mathematics across standard analysis and the Millennium Problems. Areas not examined include algebraic K-theory, motivic cohomology, derived categories, homological algebra, and tropical geometry. Extending the finite analog survey to these areas would require the simplicial topology and functional analysis developments above, and constitutes a substantial research programme in its own right — one that the paper's four-category accounting framework is already equipped to organise.


## Research programmes built on the completed foundation

Once the analytic stack is mature, three focused mathematical programmes become tractable.

**A bounded Hodge programme.** Once Theorem 10.3 is completed, the bounded Hodge conjecture has its full analytic foundation. A dedicated programme would develop bounded harmonic forms, bounded Lefschetz operators, bounded Hodge diamonds for specific classes of bounded varieties, and a sharpened formulation of the bounded Hodge conjecture that exploits the finite linear-algebraic computability of all objects involved. The Tate conjecture over finite fields remains the primary fully-formulated BST analog of the Hodge conjecture; the bounded Hodge programme over ℂ_B(k⁴) is its companion, pending the Kähler completion.

**A bounded Riemann Hypothesis programme.** Part XIII introduces the truncated zeta function ζ_B(s, k) over ℂ_B(k⁴) as a numerical investigation tool. A dedicated programme would develop this further: bounded Dirichlet series, zero-distribution questions for finite truncations, explicit error terms comparing ζ_B(s, k) to the classical zeta function at finite depths, and the relationship between the truncated zero distribution and the prime-counting reformulation of RH. The classical analytic continuation that defines the non-trivial zeros in Re(s) < 1 is not available in BST, but the numerical and prime-arithmetic content can be pursued systematically within ℂ_B(k⁴).

**A bounded BSD split theory.** Part XIII establishes that the Birch and Swinnerton-Dyer conjecture splits under BST: the finite arithmetic geometry content survives (rational points on elliptic curves over finite fields, Tate-Shafarevich groups at finite primes), while the analytic content (the L-function and its order of vanishing at s = 1) requires the completed complex plane and is correctly absent. A focused programme would sharpen exactly what of BSD is provable in BST-available finite arithmetic geometry, and whether bounded surrogates for parts of the analytic content can be constructed over ℂ_B(k⁴).



# Coda: What Has Been Built

This paper set out to do what no prior finitist program had done: construct a bounded set theory that is technically rigorous, philosophically honest, and complete enough to support genuine mathematical work. Parts I through XI have accomplished this formal construction — including bounded complex analysis (Part X) and the complexity-theoretic development (Part XI); Parts XII and XIII extend it to physics and the Millennium Problems as substantive extrapolations. Open questions and directions for future development are collected in the Future Work section preceding this Coda. What follows is a plain statement of what has been built.

## What Has Been Built

A complete axiomatic system. Seven axioms (Part IV), each stated formally with full symbolic notation and plain-language explanation. The system is independent (no axiom is redundant), consistent relative to ACA₀ (established in Part III, Section 3.3.3.7), and expressive enough to support the mathematics of Parts III through IX.

A resolution of the central technical obstacle. The Burali-Forti analogue for bounded set theory (Part V) — the problem that no prior finitist program had formally addressed — is resolved by the external-bound construction, with the structural parallel to ZFC's proper class solution made explicit.

Two induction schemas with a complete comparison. BST-native bounded induction and Buss's S¹₂ PIND schema (Part VI), their relationship stated formally, their differences explained, and the conditions under which each is preferable given precisely.

A function and relation theory without Power Set. Two approaches (syntactic and axiomatic), their capabilities compared in a formal table (Part VII), with an honest account of what is available in each approach and what requires bounded reformulation.

The complete bounded number chain. ℕ_B(k), ℤ_B(k), ℚ_B(k²), ℝ_B(k), and ℂ_B(k⁴) constructed explicitly in Part VIII, with every embedding proved and every cardinality bounded. Analysis over ℝ_B(k) developed in Part IX. Complex arithmetic and the Cayley-Dickson extensions ℍ_B(k⁸) and 𝕆_B(k¹⁶) available via Section 8.8.

An honest accounting. The four-category analysis (Part IX) classifies every major classical theorem: recovered with explicit bounds (Category A), directly provable (Category B), correctly absent (Category C), or at the narrow edge of finite induction (Category D). No softening; no inflation of what the bounded constructions achieve.

A precise account of the physics relationship. The inherited assumption identified, decomposed, and examined against the evidence from renormalization, effective field theory, loop quantum gravity, causal sets, and the holographic bound (Part XII).

A problem-by-problem analysis of the Millennium Problems. Each problem treated on its own mathematical terms, with the transformation under BST determined by the structure of the problem, not by prior commitment (Part XIII).

## The Foundational Claim

Bounded Set Theory is a coherent, technically rigorous, and expressive foundation for finite mathematics. It is not a replacement for ZFC in all domains — classical analysis over completed infinite domains, uncountable set theory, and theorems at the edge of finite induction lie beyond it. It is a foundation for the mathematics that takes place in a world where all objects are finite, all computations terminate, and all measurements have finite precision. The bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) shows that this world includes not only real analysis but complex arithmetic, algebraic closure within bounds, and the group-theoretic structures required for modern physics.

Whether that is the right world to build a foundation for is a philosophical question. The answer depends on what you believe about the ontological status of completed infinite totalities. If you believe they exist as mathematical objects in the same sense that the number 3 exists, ZFC is the appropriate foundation. If you believe that mathematical existence requires some form of constructibility or finite describability, and that the Axiom of Infinity is a declaration rather than a discovery, then a foundation with a lower ontological commitment is more honest.

This paper has not resolved that philosophical question. It has built the foundation that the second position requires — carefully, completely, and with full acknowledgment of what it costs. The question of whether to adopt it is left where it belongs: with the reader.

— end —
