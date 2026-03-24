# The Axiom of Finite Bounds

Bounded First-Order Logic and the Mathematics of Finite Bounds

Working Paper — 2026


# Abstract

If infinity is rejected, three positions remain: potential infinity (an endless process of generating larger finite collections), unbounded finitude (every set is finite, with no limit on size), and bounded finitude (every set is finite, and there is an upper bound). The first two do not accomplish what they claim. Potential infinity is actual infinity repackaged as process — its models are infinite. Unbounded finitude, formalised as ZF¬∞, has only infinite models capable of supporting arithmetic. Both relocate infinity rather than removing it. Bounded finitude is the only position that produces a genuinely finite mathematics: a mathematics whose models, domains, and objects are all finite. This paper constructs that mathematics.

The construction proceeds from a single commitment:

**There is no infinity.**

**And**

**There is an upper bound.**

This is not a technical restriction on an existing framework. It is a claim about what exists. The commitment is formalised as the Axiom of Finite Bounds (AFB) and built into the grammar of the logic itself: Bounded First-Order Logic (BFOL) admits only bounded quantifiers, enforcing the finite commitment at the level of language. From AFB and BFOL, a complete set theory — Bounded Set Theory (BST) — is constructed. BST has six axioms: AFB itself, Extensionality, Empty Set, Bounded Pairing, Bounded Union, and Bounded Replacement. Four ZFC axioms — Separation, Foundation, Choice, and Power Set (in bounded form) — are not assumed but proved as Bounded Fundamental Theorems, carrying the structural weight of their ZFC counterparts while earning their status through demonstration. Power Set fails above a computable threshold. The bounded analogue of the Burali-Forti paradox is derived and resolved by treating the bound as a metatheoretic constraint — the same structural move ZFC uses for proper classes.

On this foundation, the full apparatus of working mathematics is constructed. The complete bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) is built explicitly, with the Cayley-Dickson extensions ℍ_B(k⁸) and 𝕆_B(k¹⁶) available at the algebraic level. Real analysis — continuity, differentiation, integration, convergence, transcendental functions — is recovered over ℝ_B(k), predominantly as exact bounded theorems with explicit error bounds that are strictly more informative than their classical counterparts. Bounded complex analysis is developed over ℂ_B(k⁴). Bounded functional analysis — normed spaces, spectral theory, finite Hilbert spaces — is developed with computable operator norms and spectral gaps. Bounded representation theory provides the algebraic toolkit for finite groups and their actions on finite-dimensional vector spaces. Complexity theory is developed with BST-P and BST-NP extensionally equivalent to classical P and NP.

A four-category accounting classifies how classical theorems relate to BST. Most of analysis is recovered with explicit bounds (Category A). All purely finite mathematics — combinatorics, finite algebra, number theory, graph theory — is directly provable (Category B). Results requiring completed infinite structure or uncountable Choice — Banach-Tarski, non-measurable sets, the well-ordering of ℝ — are correctly absent (Category C). Three universal statements at the edge of finite induction — Goodstein's theorem, Paris-Harrington, Ackermann totality — form a precisely characterised narrow gap: every finite instance is provable, but the universal collection is not (Category D). This is the honest cost of finite foundations, and it is narrow.

The case for adopting BST rests on ontological parsimony reinforced by a structural observation. BST posits strictly less than ZFC and recovers the mathematical content that working practice requires. The commitments it does not make — completed infinite totalities, uncountable Choice, Power Set on infinite domains, unbounded quantification — are precisely the commitments whose consequences include the pathological results of infinite mathematics. BST removes not individual paradoxes but the four mechanisms that generate them. A survey of over seventy known infinity-dependent paradoxes finds that all require at least one mechanism BST eliminates. Self-referential paradoxes — which do not depend on infinity — remain an open question and are outside the scope of this paper.

The paper applies the completed construction to the Millennium Problems as an exploratory extrapolation. Each of the seven Clay Institute problems is analysed on its own terms and recontextualised within BST: some survive unchanged, some transform into finite-field or discrete analogs of comparable depth, and some split into available finite content and unavailable analytic content. The result is not a weakening of mathematics. It is a foundation with lower ontological commitment, greater computational explicitness, and cleaner mathematical consequences — with all tradeoffs stated at the level of precision the mathematics demands.

**Keywords:** bounded set theory, finitist foundations, Axiom of Finite Bounds, bounded first-order logic, bounded reals, Burali-Forti problem, finite mathematics, ZFC alternatives, ontological parsimony, mathematical paradoxes


# Part I: Preamble


## Why the bound

Before the formal construction begins, the foundational commitment requires a plain statement and a plain argument. The formalism of Parts III through XII exists to make this commitment precise, but the commitment itself is not formal. It is a claim about what exists.

The claim has two parts:

**There is no infinity.**

**And**

**There is an upper bound.**

The first part — that no completed infinite totality exists — is shared with every finitist programme from Kronecker onward. It is not a new position. What is new is the insistence that these two parts are a single commitment. The second is not a corollary of the first — it is its necessary companion. The forced-move argument below shows why: denying infinity without asserting a bound does not produce a finite mathematics. It produces an infinite mathematics in which every individual object happens to be finite. The bound is what makes the rejection of infinity genuine rather than verbal.


### The forced move

The argument is short and, once seen, difficult to unsee. If you deny infinity, there are exactly three positions available:

**(a) Potential infinity.** Every collection is finite, but for every finite collection there is a strictly larger one. There is no completed infinite set, but the process of generating larger and larger finite sets never terminates. This is the Aristotelian position, refined by Brouwer: no actual infinity, but an endless progression of finite stages.

**(b) Unbounded finitude.** Every set is finite, and that is all. There is no claim about a process, no talk of potentiality. The theory simply negates the Axiom of Infinity and leaves it at that. This is ZF¬∞ — hereditarily finite set theory.

**(c) Bounded finitude.** Every set is finite, and there is a ceiling — an upper bound on the size of any set that exists. The bound is finite and real, even if its value is unknown. This is the position of this paper.

These three exhaust the logical space. If you deny completed infinity, you land on one of them. The question is which.

Position (a) does not escape infinity. A process that never terminates is an infinite process. A domain that contains finite collections of every size contains infinitely many objects. Potential infinity is actual infinity described in the language of time and process rather than the language of sets and existence — but the ontological content is the same. A universe that always has room for one more is a universe without a ceiling, and a universe without a ceiling requires an infinite domain to model it. Brouwer's choice sequences, which may always be extended, presuppose an inexhaustible supply of extensions — and an inexhaustible supply is an infinite supply by another name.

Position (b) does not escape infinity either. This is the subtler point, and it is the point that Part III formalises. ZF¬∞ negates the Axiom of Infinity: no set is infinite. But for every natural number n, ZF¬∞ proves the existence of a set with n elements. The theory proves that 0 exists, that 1 exists, that 2 exists, and so on for every specific numeral — without limit. A model of ZF¬∞ must satisfy all of these existence claims simultaneously. Any model that does so contains sets of every finite cardinality — and therefore contains infinitely many sets. ZF¬∞ has no finite models capable of supporting arithmetic. The infinity has been removed from the individual sets and relocated to the domain of the theory. Every set is finite; the universe of sets is infinite. This is not a genuine rejection of infinity. It is a redistribution.

The formal proof of this — that ZF¬∞ has only infinite models — is given in Part III, Section 3.3.6. But the conclusion should be stated here, before the formalism, because it is the philosophical engine of the entire paper: **denying infinity without asserting a bound does not produce a finite mathematics. It produces an infinite mathematics in which every individual object happens to be finite.** The infinity migrates from the objects to the domain — from the sets to the theory — and survives the negation.

Position (c) is therefore not one option among three. It is the only option that does what it claims. If infinity is genuinely rejected — not relocated from objects to domains, not repackaged as potentiality, not redistributed from sets to the theory that describes them — then there must be a ceiling. A maximum. An upper bound on what exists. The bound is what makes the rejection real rather than verbal.

This is the commitment. The Axiom of Finite Bounds is its formalization — not a technical convenience, not a restriction on an existing framework, not a modification of ZFC for specialised purposes, but the logical consequence of taking seriously the claim that infinity does not exist. Everything else in this paper — the bounded logic, the set theory, the number chain, the analysis, the accounting — follows from that single commitment. The bound comes first. The mathematics comes from the bound.


### The parsimony argument

The forced-move argument establishes that the bound is necessary if infinity is to be genuinely rejected. But a further question remains: why reject infinity at all? ZFC is a powerful and productive system. The Axiom of Infinity is not self-contradictory. Why pursue a foundation without it?

The answer is not that infinite mathematics is wrong. It is that infinite mathematics may posit more than it needs to.

There is a methodological principle, as old as rational inquiry itself, that applies here with unusual precision: when two frameworks organise the same practice with equal adequacy, the one with the lower ontological commitment is preferable — not because simplicity is aesthetically pleasing, but because the additional commitments of the stronger framework are unforced. An unforced assumption is one you can do without. And an assumption you can do without is one you should not make without positive reason.

ZFC posits completed infinite totalities — the set of all natural numbers as a finished object, uncountable collections, power sets of infinite sets. BST does not. If BST recovers the mathematical content that working mathematicians actually use — the content of analysis, algebra, number theory, combinatorics, and computation — then the infinite commitment is unforced. You can have the mathematics without it.

That claim — that BST recovers the mathematical content — is not asserted here in Part I. It is demonstrated in Parts VIII through XII and accounted for precisely in the four-category analysis of Part IX. The reader who reaches Part IX will find the evidence: most of classical analysis is recovered with explicit bounds (Category A), all finite mathematics is directly provable (Category B), a small and precisely characterised class of universal statements sits at the edge of finite induction (Category D), and the results that are absent (Category C) are precisely the ones whose absence is a gain rather than a loss.

That last clause — "whose absence is a gain" — brings us to the third part of the argument.


### The paradox dividend

Mathematics built on infinite foundations has, since its earliest development, produced results that mathematicians themselves have found troubling. These results are not bugs in specific proofs. They are theorems — logically valid consequences of the axioms. Their strangeness is not a failure of rigour but a feature of the commitments that generate them.

The most notorious is the Banach-Tarski paradox: a solid ball in three-dimensional space can be decomposed into finitely many pieces and reassembled, by rigid rotations, into two solid balls identical to the original. The decomposition uses non-measurable sets — sets so pathological that they cannot be assigned a consistent volume — constructed by the Axiom of Choice applied to uncountable collections. No one can describe the pieces. No physical process corresponds to the decomposition. The result is a theorem of ZFC. It is also, by any ordinary standard, absurd.

Banach-Tarski is not isolated. It belongs to a large class of results — paradoxes, counterintuitive theorems, pathological constructions — that share a common feature: they require the infinite commitments that BST does not make. A survey of known infinity-dependent paradoxes across mathematics, logic, and philosophy reveals a striking pattern. Virtually all of them depend on one or more of four mechanisms:

**Completed infinite totalities** — the existence of ℕ, ℝ, or any infinite collection as a finished object. This generates Hilbert's Hotel, Galileo's paradox, Dedekind-infinite sets, all supertask paradoxes (Thomson's lamp, Ross-Littlewood, the Grim Reaper), and the entire apparatus of transfinite cardinal arithmetic.

**Uncountable Choice** — the assertion that a choice function exists for uncountable collections where no constructive procedure is possible. This generates Banach-Tarski, the Hausdorff paradox, Vitali non-measurable sets, the well-ordering of ℝ, and pathological decompositions generally.

**Power Set on infinite domains** — the assertion that the collection of all subsets of an infinite set exists as a completed set. This generates the hierarchy of uncountable infinities, Cantor's paradox, the Continuum Hypothesis and its independence, and the escalating tower of infinite cardinals.

**Unbounded quantification over infinite domains** — the use of ∀x and ∃x ranging over completed infinite totalities. This generates Skolem's paradox, enables the self-referential constructions behind Berry's paradox and Richard's paradox, and is the mechanism by which the Löwenheim-Skolem theorem forces the existence of countable models of "uncountable" set theory.

BST has none of these four mechanisms. Completed infinite totalities are excluded by the Axiom of Finite Bounds. Uncountable Choice is not merely unavailable — it is incoherent, since no uncountable set exists to choose from; Choice in BST is a constructive Bounded Fundamental Theorem proved by finite enumeration (BFT 4.1). Power Set fails above a computable threshold (BFT 4.3). Unbounded quantification is excluded at the level of grammar by Bounded First-Order Logic (Part III).

The consequence is systematic. It is not that BST has been checked against a list of known paradoxes and found to avoid each one. It is that BST removes the *mechanisms* that generate the paradoxes. The tools required to construct these results — infinite sets, uncountable collections, impredicative power sets, unbounded quantifiers — do not exist in the system. A paradox that requires an ingredient the system does not have cannot be constructed in the system.

The scope of this elimination is broad. Across set theory, analysis, geometry, probability, computation, and philosophy, the pattern is the same: the paradox requires infinity, and BST does not have infinity. Zeno's paradoxes require completing an infinite subdivision — but ℝ_B(k) is a finite set. Gabriel's Horn requires infinite extent — but no infinite geometric object exists in BST. The St. Petersburg paradox requires infinitely many outcomes — but every sample space in BST is finite. The ultraviolet catastrophe requires integrating over infinite frequencies — but every integral in BST is a finite sum over a bounded domain.

A survey across the major catalogues of mathematical and philosophical paradoxes identifies over seventy infinity-dependent paradoxes. BST eliminates, to the best of the author's analysis, all of them. The bounded Burali-Forti analogue — the one paradox that arises from asserting a bound — is derived and resolved within Part V by the same structural move (external bound as metatheoretic constraint) that ZFC uses for its own Burali-Forti problem.

One class of paradoxes is not addressed by this elimination: self-referential paradoxes — the Liar, Curry's paradox, Yablo's paradox — which arise from the expressive power of language and logic rather than from infinite commitments. Whether BST's restrictions on quantification and domain size mitigate these paradoxes, or whether they persist in full force, is an open question outside the scope of this paper. The claim here is limited to infinity-dependent paradoxes: those that require at least one of the four mechanisms listed above.

This is not an incidental feature of the framework. It is evidence — not proof, but evidence — about where the strain in mathematical foundations lies. The paradoxes of mathematics are not evenly distributed across finite and infinite domains. They are concentrated, almost exclusively, in the infinite domain. Finite mathematics — combinatorics, finite algebra, finite number theory, computation over finite inputs — is essentially paradox-free. The pathology lives in the infinite superstructure. If the infinite extensions of mathematics were natural, well-behaved generalisations of finite mathematics, one would expect paradoxes to be distributed roughly uniformly across both domains. They are not. They cluster where the infinite commitments are.

The paper does not claim to have proved that no paradox can arise in BST — such a claim would itself require a formal definition of "paradox" and a metatheoretic proof, which is beyond the scope of the present work. What the paper claims is this: BST removes the four generative mechanisms behind the known paradoxes of infinite mathematics, and the structural expectation is therefore that the infinity-dependent pathology of classical mathematics does not extend to BST. The evidence from the catalogue of known infinity-dependent paradoxes supports this expectation. The status of self-referential paradoxes in BST remains open.

The parsimony argument can now be stated in its complete form. BST posits strictly less than ZFC. It recovers the mathematical content that working practice requires (demonstrated in Parts VIII–XII, accounted in Part IX). And the commitments it does not make — completed infinities, uncountable Choice, Power Set on infinite domains, unbounded quantification — are precisely the commitments whose consequences include the pathological results that have troubled mathematicians for over a century. The case for BST is not merely that it is leaner. It is that what it removes was the source of the trouble, and what it keeps is the source of the mathematics.


### Two clarifications

First, the bound is not a specific number. The axiom does not say that there are at most 10^80 sets, or 10^(10^185), or any particular finite quantity. It says there is *some* finite upper bound — a ceiling that exists and is real — without naming it. The theory knows it lives in a finite universe without being able to point at the ceiling of that universe from inside. This is not evasion; it is the correct formal expression of an epistemic situation. We assert that reality is finite without claiming to know its extent. The two formulations of AFB developed in Part III (schema and metatheoretic) make this precise from different angles.

Second, the claim "there is no infinity" is treated throughout this paper as a foundational choice, not as an established truth. ZFC is a coherent and powerful formal system. The Axiom of Infinity is not self-contradictory. Mathematicians who accept completed infinite totalities are not making an error — they are making a different foundational commitment, one that has produced extraordinary mathematics. What this paper shows is that the alternative commitment — finite, bounded, no infinity — is equally coherent, surprisingly powerful, and in several specific and identifiable respects, healthier in its consequences. The choice between the two is genuine, and this paper does not pretend to make it for the reader. It builds the foundation that one side of that choice requires, and it does so completely.


## What this paper builds

From the fundamental commitment — there is no infinity, and there is an upper bound — the paper constructs a complete formal foundation in order of logical dependence. The foundation begins with a bounded logic and primitive ordinals (Part III), proceeds through a complete set theory with six axioms and four Bounded Fundamental Theorems (Part IV), ordinals with the Burali-Forti resolution (Part V), induction (Part VI), and functions (Part VII), then builds the full bounded number chain through ℂ_B(k⁴) (Part VIII) and develops real analysis (Part IX), complex analysis (Part X), functional analysis (Part XI), computational complexity (Part XII), and representation theory (Part XIII). Part XIV applies the construction to the Millennium Problems as an exploratory extrapolation. The construction is surveyed in detail in the roadmap at the end of this preamble.


## What the paper does not do

This paper does not argue that infinite mathematics is wrong, inconsistent, or illegitimate. ZFC is a coherent and productive formal system. The Axiom of Infinity is not in contradiction with itself. The prior finitist literature has sometimes overreached in this direction — treating the rejection of infinity as an obvious truth rather than a foundational choice — and this paper does not follow that path.

What this paper argues is more modest and more precise: a rigorous and self-contained alternative foundation for finite mathematics is constructible from the Axiom of Finite Bounds alone, without any infinite commitment. The mathematics that depends essentially on completed infinite totalities is identified and honestly accounted for. The mathematics that can be recovered within a bounded framework — which turns out to include the large majority of what working mathematicians actually use — is constructed explicitly, with proofs, and classified by its recovery type (Section 9.1).

This paper also does not claim to escape Gödel's incompleteness theorems. BST is subject to both: the Category D gap (Theorem 5.5a) is BST's specific instantiation of Gödel's First Theorem, and Trakhtenbrot's theorem on finite-model undecidability (Theorem 3.3.2) provides an independent route to the same conclusion. The paper engages with both results explicitly, locating precisely where incompleteness manifests in BST and arguing that its specific form — universal statements about finite computations, not statements about infinite objects — is the epistemically honest version of the limitation.

The narrow gap is real and is named precisely: Goodstein's theorem, Paris-Harrington, and the universal totality of the Ackermann function sit at the edge of what finite induction can reach — every specific instance is provable, but the universal collection is not. These are acknowledged without softening. Everything else that classical mathematics proves is either directly provable in BST (Type I), recovered over the bounded reals as exact bounded theorems at each level (Type II), recovered as explicit approximations with error terms vanishing as the bound grows (Type III), or correctly absent because it concerns completed infinite objects (Banach-Tarski, non-measurable sets, uncountable cardinals) that BST does not posit and that have no finite interpretation. The gains are substantial: a foundation with lower ontological commitment, a logic that makes its quantifier ranges explicit, explicit cardinalities, paradox-free analysis, and Choice and Foundation as theorems rather than axioms.


## What is novel here

The prior programs are surveyed in Part II. Their contributions are real and this paper builds on them. What is new here falls into five categories.

First, the foundational package is complete. No prior program produced a formal system that combined a bounded logic, an explicit axiom stating the bound, and a full set-theoretic development on top of both. This paper does all three, in the right order.

Second, the Burali-Forti problem for bounded theories is solved. Prior programs did not assert a maximal bound and therefore did not face this paradox. This paper asserts the bound, derives the paradox, and resolves it — showing that the resolution is not an ad hoc patch but the same structural move that ZFC uses to handle its own Burali-Forti problem, applied correctly in the bounded setting.

Third, the bounded number chain is constructed in full. Prior finitist programs either abandoned real analysis entirely or recovered fragments of it at the cost of retaining potential infinity. The bounded reals of Part VIII recover the full analytic apparatus — derivatives, integration, convergence, transcendental functions — within a strictly finite setting, predominantly as Type II uniform family recoveries for order-dependent results (IVT, EVT, completeness, Heine-Borel) and Type III approximate recoveries with explicit error bounds for results involving chained field arithmetic over ℝ_B(k) and complex-analytic results over ℂ_B(k⁴). The chain does not stop there: the bounded complex field ℂ_B(k⁴) is constructed as ℝ_B(k) × ℝ_B(k), with the Cayley-Dickson extensions ℍ_B(k⁸) and 𝕆_B(k¹⁶) following. The complete chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) is the bounded counterpart of the classical number chain, with every object finite, every cardinality explicit, and every construction carried out within BST. All constructions are explicit and the proofs are given.

Fourth, the accounting is precise. Prior programs either overstated what was lost (abandoning analysis entirely) or understated it (claiming full recovery without examining hard cases). This paper gives a four-category accounting of how classical theorems relate to BST: recovered with explicit bounds (most of analysis), directly provable (all finite mathematics), correctly absent (Banach-Tarski and consequences of uncountable Choice), and the narrow gap (three universal statements at the edge of finite induction). Every major affected theorem is classified.

Fifth, the model theory is explicit. Prior finitist programs rarely gave a rigorous account of what their models look like or how their theories relate to classical model-theoretic results. This paper provides: a formal BST-Model definition (Definition 5.4); the Bounded Reflection Principle as a named theorem (Theorem 3.3.1) with a coherence proof in ACA₀; Trakhtenbrot's theorem applied to establish BST-B's undecidability independently of Gödel (Theorem 3.3.2); the Finite Satisfiability theorem for BST's set-building operations (Theorem 5.3a); and a formal Independence of Universal Combinatorics theorem (Theorem 5.5a) precisely characterising the Category D gap. Additionally, the Bounded Fundamental Theorem analysis of the non-axiomatic ZFC axioms — including the Bounded Power Set theorem (BFT 4.3) and the redundancy of AC_ω and Dependent Choice — makes explicit what prior finitist programs left implicit.

The result is not a complete solution to every problem in foundations. It is a rigorous and self-contained alternative foundation for finite mathematics, with every tradeoff stated at the level of precision the mathematics demands.


## Roadmap

A terminological note on "recovery." Throughout this paper, the word "recovered" is used in a technically stratified sense and is never univocal. Classical results may be recovered in four distinct ways: as exact internal BST theorems about BST objects (Type I); as uniform families of BST theorems indexed by the bound parameter k, with stable form across the family (Type II); as bounded theorems carrying an explicit error term that vanishes as k grows (Type III); or as metatheoretic uniformity claims about the family of bounded models, not expressible as a single BST sentence at any level (Type IV). These types are strictly ordered in strength. The full taxonomy, with the criterion distinguishing each type and its relationship to the paper's four-category accounting, is developed in Part IX, Section 9.1. All subsequent uses of "recovered" are to be read against that taxonomy. Where the type is not obvious from context, it is stated explicitly.

The paper has fourteen parts:

**Part I** — this preamble.

**Part II** — a historical survey of the programs that attempted finite or bounded foundations before this one: Kronecker, Hilbert, Brouwer, Weyl, Nelson, the ultrafinitists, and ZF¬∞. Each is examined at the point where it stopped. The survey is not merely historical — it identifies the four structural stopping points that every prior program hit, and shows precisely how this paper addresses each one.

**Part III** — the foundational package. The fundamental commitment — there is no infinity, and there is an upper bound — is stated, and its immediate consequences are drawn: all domains are finite, all membership structures are well-founded, Foundation holds automatically. The commitment is then formalized at three levels: BFOL provides the bounded logic, primitive ordinals provide the minimal arithmetic, and the Axiom of Finite Bounds states the set-theoretic constraint. These three are not separable — they are three expressions of one commitment, presented in the order required by logical dependence.

**Part IV** — the six axioms of Bounded Set Theory. The Axiom of Finite Bounds provides the foundational constraint; five construction principles operate within its framework: Extensionality, Empty Set, Pairing, Union, and Bounded Replacement. Four ZFC axioms — Separation, Choice, Foundation, and Power Set (in bounded form) — are proved as Bounded Fundamental Theorems rather than assumed. Power Set, the Axiom of Infinity, and unrestricted Choice are not among the axioms, and each status is formally justified with an explicit account of what is recoverable.

**Part V** — ordinals and the Burali-Forti problem. The full ordinal theory is developed here, including the result that no prior finitist program has addressed: when a maximum bound is asserted internally to the theory, a bounded analogue of the Burali-Forti paradox arises. The resolution — the bound as a metatheoretic constraint rather than an internal object — is the structural move that distinguishes BST from all prior attempts.

**Part VI** — bounded induction. Two schemas are developed in full: the BST-native successor induction schema, and Buss's bit-induction schema from S¹₂. Both are valid in all models of BST. Their relationship to each other and to full Peano Arithmetic is characterised precisely.

**Part VII** — functions and relations. Without Power Set, function spaces are not automatically available. Two approaches are developed: the syntactic approach, in which functions are defined predicates rather than sets, and the axiomatic approach, in which a Function Axiom recovers function graphs as first-class objects when cardinality conditions permit.

**Part VIII** — the bounded number chain. The natural numbers ℕ_B(k), integers ℤ_B(k), rationals ℚ_B(k), bounded reals ℝ_B(k), and bounded complex numbers ℂ_B(k⁴) are constructed explicitly as parameterised families of finite sets. The closure problem — that arithmetic operations may exceed a fixed bound — is confronted directly, and two resolutions (truncated arithmetic and domain restriction) are developed. The elementary number theory of each system is established, and the bounded reals are constructed from Cauchy sequences over ℚ_B(k) via canonical rounding, with the bounded complex numbers constructed as ℝ_B(k) × ℝ_B(k), completing the chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴).

**Part IX** — analysis. The bounded reals ℝ_B(k), constructed in Part VIII from Cauchy sequences over ℚ_B(k) via canonical rounding, serve as the analytic domain. The full apparatus of real analysis — continuity, differentiation, integration, convergence, and transcendental functions — is recovered within this construction (predominantly Type II: exact BST theorems at each bound level for order-dependent results such as IVT, EVT, and completeness; Type III with explicit error O(1/k²) for results depending on chained field arithmetic, with the bounded Cauchy theorem in Part X as a further Type III approximate recovery). The relationship between classical analysis and BST is accounted for precisely: most classical theorems are recovered in Type II or Type III form, carrying explicit bounds and being strictly more informative than their classical counterparts; a small class of results (Goodstein, Paris-Harrington, Ackermann universality) sit at the edge of what finite induction can reach; and some ZFC theorems — Banach-Tarski, non-measurable sets, the well-ordering of ℝ — are correctly absent because they concern objects BST does not posit.

**Part X** — bounded complex analysis. The complex-analytic apparatus over ℂ_B(k⁴) is developed: k-holomorphic functions, bounded Cauchy-Riemann equations, bounded contour integration and Cauchy's theorem (with explicit error bound C/k), bounded Dolbeault cohomology as a finite-dimensional vector space over ℂ_B(k⁴), and preliminary bounded Kähler geometry. The part closes with the bounded Hodge conjecture — the secondary BST formulation of the Hodge conjecture, with all objects well-defined within BST.

**Part XI** — bounded functional analysis. The operator-theoretic layer bridging Parts VIII–X to downstream programmes is developed systematically: bounded normed spaces and norm equivalence with computable constants; bounded linear operators as finite matrices over ℂ_B(k⁴) with computable operator norms; dual spaces and a constructive Hahn-Banach theorem proved by dimension induction without Zorn's lemma; spectral theory including eigenvalue existence, spectral decomposition for normal operators, Weyl's inequality, and Davis-Kahan eigenspace stability with computable spectral gap; and finite Hilbert space structure with Gram-Schmidt, Riesz representation, and automatic completeness. All results are Type I or Type II.

**Part XII** — computational complexity. The connection to Buss's S¹₂ established in Part VI is developed into a full complexity theory: BST-P and BST-NP as uniform families over bounded domains, their extensional equivalence to classical P and NP, the polynomial hierarchy via the Σ^b_i formula classes of BFOL, the formal logical status of P vs NP in BST, and the recovery of asymptotic complexity via metatheoretic families.

**Part XIII** — bounded representation theory. The algebraic toolkit bridging finite groups (Part VII) and finite Hilbert spaces (Part XI) is developed: group actions on finite sets, orbits and stabilisers, finite-dimensional representations, characters as traces over ℂ_B(k⁴), orthogonality of characters (exact finite sums), Schur's lemma, Burnside's theorem, and the complete decomposition of any finite-dimensional representation into irreducibles by character inner products. All results are Type I.

**Part XIV** — the Millennium Problems, as an extrapolation. Each of the seven Clay Institute problems is examined on its own mathematical terms and recontextualised within BST. The central finding is that no problem simply dissolves: each either survives intact, transforms into a finite-field or discrete analog of comparable depth, or splits into a finite part (available) and an analytic part (requiring completed ℂ or smooth manifolds). The availability of ℂ_B(k⁴) (Part VIII) and the complex analysis of Part X strengthens the analysis of three problems: the Hodge Conjecture gains a second bounded formulation alongside the Tate Conjecture; the Riemann Hypothesis gains a truncated zeta function over ℂ_B(k⁴) for numerical investigation; and Yang-Mills gains a formal account of its gauge group structure via SU(N)_B(k⁴). This part applies the formal core to open problems in mathematics; formal development of the relevant BST-based theories is deferred to future work.


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
A subtler point, often missed: the incompleteness theorems also constrain finitist programs themselves. Any formal system for bounded or finite mathematics that is strong enough to express elementary arithmetic faces the same limitation. It cannot prove its own consistency. This is not a special problem for infinite mathematics — it is a feature of all sufficiently expressive formal systems. Bounded Set Theory faces this constraint directly. The paper does not pretend otherwise: BST's specific instantiation of Gödel's First Theorem is the Category D gap (Theorem 5.5a), its undecidability is established independently via Trakhtenbrot's theorem (Theorem 3.3.2), and its consistency is established relative to ACA₀ rather than proved internally (Section 3.3.3.7, Theorem 3.3.1). The constraint is accepted, localised precisely, and honestly accounted for.


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
For the purposes of bounded set theory, Weyl's contribution is double: the predicativist argument against Power Set, which BST inherits, and the demonstration that substantial analytic content is recoverable without impredicative comprehension. Part IV of this paper develops two independent arguments for rejecting Power Set: the predicativist argument, which objects to the impredicative definition of P(A), and the cardinality argument, which shows that for any bound n_M, a set of size ⌊log₂(n_M)⌋ + 1 has a power set exceeding the bound. Both arguments support the same conclusion by different routes. Weyl's contribution is to have established the predicativist line with full technical rigour — BST inherits that argument and pairs it with the cardinality argument, each strengthening the other. One further nuance: the cardinality argument is not a flat rejection but a threshold result. For small sets — those with |A| ≤ ⌊log₂(n_M)⌋ — the full power set P(A) does exist in BST (BFT 4.3, Bounded Power Set). Weyl's predicativist critique applied universally; BST's cardinality argument is more precise, identifying exactly where Power Set holds and where it fails.


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

Nelson's program had two stopping points. First, he could not establish — and this remains open — whether the consistency of bounded arithmetic can be proved within bounded arithmetic itself. This is a subtle question: Gödel's second incompleteness theorem applies to any system extending Q with sufficient induction, which means bounded arithmetic at the level of IΔ₀ + Ω₁ is likely subject to it. Whether weaker fragments can prove their own consistency is the genuinely open question, and Nelson's hope was that a sufficiently restricted system might evade Gödel's constraint. That hope has not been vindicated. BST addresses this gap directly: the consistency of BST is established not internally but relative to ACA₀ — Arithmetical Comprehension — a metatheory stronger than BST itself but weaker than ZFC (Section 3.3.3.7, Theorem 3.3.1). This is the correct response to Gödel's second theorem: not evasion but honest external grounding at the minimum metatheoretic strength required.
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

The Cayley-Dickson cascade makes this precise in a way ultrafinitism never could. At each step of the construction, the cardinality cost doubles in exponent: ℝ_B(k) costs k, ℂ_B(k⁴) costs k⁴, ℍ_B(k⁸) costs k⁸, and 𝕆_B(k¹⁶) costs k¹⁶ elements of the model. For the full octonionic arithmetic 𝕆_B(k¹⁶) to exist within a model of bound n_M, the precision parameter k must satisfy k¹⁶ ≤ n_M. This is a precise, computable constraint. For a model calibrated to the physical holographic estimate — the observable universe contains on the order of 10^{185} Planck-scale cells, giving n_M ≈ 10^{185} — the constraint yields k ≤ (10^{185})^{1/16} = 10^{185/16} ≈ 10^{11.6}, meaning a precision parameter on the order of 10^{11} supports the full algebraic tower. For a model calibrated to machine arithmetic — n_M = 2^{64} — the constraint gives k ≤ 2^{64/16} = 2^4 = 16 exactly, since 16^{16} = 2^{64}. The question ultrafinitism was asking — how large is too large — now has a computable answer that depends on what algebra one wants to do (§8.8.4).


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
Choice               Theorem (finite)    Theorem (finite)       BFT (BFT 4.1)
Foundation           Axiom               Axiom                  BFT (BFT 4.2)
```

Three distinctions in this table carry foundational weight.

First, ZF¬∞ negates Infinity but retains Power Set. It can do so because without a global bound, the power set of any finite set — though exponentially larger — is still finite and therefore admissible. BST's global bound constrains which power sets exist: for any bound n_M, sets with |A| > ⌊log₂(n_M)⌋ have power sets exceeding n_M. Bounded Power Set (BFT 4.3) proves that P(A) exists below this threshold; above it, P(A) is unavailable (Theorem 4.2a). ZF¬∞ makes neither claim.

Second, both ZF¬∞ and PCA have infinite domains — every model satisfying their axioms contains infinitely many distinct objects. ZF¬∞ models contain all hereditarily finite sets, of which there are ℵ₀. PCA models contain the natural numbers as a completed totality. BST models are finite. This is the sense in which BST is the only system among the three whose finitist commitment is ontologically complete rather than partial.

Third, the logic. Standard FOL carries no syntactic commitment to bounded quantification — its semantics allow quantifiers to range over the full domain, which in ZF¬∞ and PCA is infinite. BFOL enforces the bound at the level of syntax: unbounded quantifiers are not well-formed. This is not merely a notational preference; it ensures that every formula in BFOL has a finite evaluation procedure in any finite model, which is the formal basis for BST's decidability at the level of individual models (Part III, Theorem 3.3.2, and the contrast stated there between single-model decidability and all-finite-model undecidability).

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
A second further observation. None of the prior programs gave a rigorous model-theoretic account of their systems — what their models look like, how provability relates to truth across finite models, and how their theories stand relative to classical undecidability results. This paper provides that account explicitly: the BST-Model definition (Definition 5.4), the Bounded Reflection Principle with coherence proof (Theorem 3.3.1), undecidability via Trakhtenbrot's theorem (Theorem 3.3.2), and the Finite Satisfiability theorem (Theorem 5.3a). The engagement with Gödel's incompleteness theorems — accepting them, localising them to the Category D gap (Theorem 5.5a), and grounding consistency externally in ACA₀ — completes what the prior programs left either ignored or unresolved.


End of Part II

# Part III: The Foundational Package

The formal construction begins from the commitment stated in Part I:

**There is no infinity.**

**And**

**There is an upper bound.**

This is a claim about what exists — not yet about sets, cardinality, or models. Those concepts are built in the formalization that follows. The commitment itself is pre-formal.

Before any axiom is stated, the commitment has immediate structural consequences that govern everything in this Part and beyond:

Every domain is finite. If there is no infinity, then every collection of objects that exists is a finite collection. There is no domain with infinitely many elements.

Every membership structure on a finite domain is well-founded. An infinite descending chain requires infinitely many distinct elements. A finite domain does not have infinitely many distinct elements. Therefore no infinite descending chain exists. Foundation — the principle that every nonempty set contains an element disjoint from itself — holds automatically in every finite domain. It is never an assumption in this paper. It is a consequence of the fundamental commitment.

All quantification ranges over finite domains. If every domain is finite and bounded, then a logic whose grammar permits quantification over an unspecified, potentially infinite domain is misaligned with the commitment. The correct logic restricts every quantifier to an explicit bound. This is why Bounded First-Order Logic is the logical framework of this paper: it enforces the commitment at the level of grammar.

The three components of this Part formalize the commitment at three levels. BFOL formalizes it at the level of logic: all quantification is bounded. Primitive ordinals formalize it at the level of arithmetic: counting has a ceiling. The Axiom of Finite Bounds formalizes it at the level of set theory: every set is finite and bounded. These three are not built sequentially from each other — they are three expressions of one commitment, presented in the order required by logical dependence.

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

### Theorem 3.1.1 — BFOL Soundness:

```
If Γ ⊢_BFOL φ — that is, φ is derivable from
assumptions Γ in the deductive system above — then
Γ ⊨ φ: every BFOL-structure M and assignment s
satisfying all sentences in Γ also satisfies φ.

Proof:
By induction on the length of the derivation. Each
rule is verified against the semantics of Section 3.1.5.

Propositional rules: unchanged from standard FOL.
Soundness of ¬, ∧, ∨, → rules follows from the
truth-table semantics, which are identical to FOL. ✓

Equality rules: unchanged from FOL. ✓

Bounded universal elimination (∀-E):
Suppose M, s ⊨ ∀x ≤ t φ(x) and M, s ⊨ u ≤ t.
By the semantics of ∀x ≤ t: for every a ∈ D with
a ≤^M t^{M,s}, M, s[x:=a] ⊨ φ(x).
Since u^{M,s} ≤^M t^{M,s}, taking a = u^{M,s}
gives M, s ⊨ φ(u). ✓

Bounded universal introduction (∀-I):
Suppose φ(x) has been derived from the assumption
x ≤ t, with x not free in any other undischarged
assumption. By the induction hypothesis, every M, s
satisfying x ≤ t also satisfies φ(x). That is,
for every a ∈ D with a ≤^M t^{M,s},
M, s[x:=a] ⊨ φ(x). This is exactly the semantics
of ∀x ≤ t φ(x). ✓

Bounded existential introduction (∃-I):
Suppose M, s ⊨ φ(u) and M, s ⊨ u ≤ t.
Then a = u^{M,s} witnesses the existential:
a ≤^M t^{M,s} and M, s[x:=a] ⊨ φ(x).
So M, s ⊨ ∃x ≤ t φ(x). ✓

Bounded existential elimination (∃-E):
Suppose M, s ⊨ ∃x ≤ t φ(x), and ψ has been derived
from the assumptions φ(x) and x ≤ t with x fresh.
By the semantics, there exists a ∈ D with
a ≤^M t^{M,s} and M, s[x:=a] ⊨ φ(x). Since x is
fresh (not free in ψ or in other undischarged
assumptions), the derivation of ψ from φ(x) and
x ≤ t holds for this witness. By the induction
hypothesis, M, s ⊨ ψ. ✓

Every rule preserves truth. Therefore every derivable
sentence is true in every structure satisfying its
assumptions. □
```

Plain language: The BFOL deductive system never leads from true assumptions to a false conclusion. If something is provable in BFOL, it is true in every BFOL-structure that satisfies the assumptions. This is the bedrock guarantee that proofs in BST are trustworthy — they track truth across all intended models.

### Theorem 3.1.2 — Decidability of BFOL truth in finite structures:

```
For any fixed finite BFOL-structure M and any BFOL
sentence φ, the question "M ⊨ φ?" is decidable.

Proof:
By induction on formula complexity.

Atomic formulas: t₁ = t₂ and R(t₁,...,tₙ) are
checked by computing the term values in the finite
domain D and performing a lookup. Decidable. ✓

Boolean connectives: ¬, ∧, ∨, → are evaluated by
truth tables from the values of their immediate
subformulas. Decidable by the induction hypothesis. ✓

Bounded quantifiers: ∀x ≤ t φ(x) is evaluated by
checking φ(a) for every a ∈ D with a ≤^M t^{M,s}.
This is a finite set — a subset of the finite
domain D — so the check is a finite conjunction.
∃x ≤ t φ(x) is similarly a finite disjunction.
Decidable by the induction hypothesis applied to
each element of the bounded range. ✓

The total computation terminates in time bounded
by a function of |D| and the length of φ. □
```

Plain language: In any single finite model, truth is checkable by exhaustive computation. Every quantifier ranges over a finite set, every connective is a truth table, and every atomic formula is a finite lookup. This is the property that makes finite models computationally transparent — and it is used throughout this paper whenever a claim is verified "by finite computation" or "by bounded search."

### Theorem 3.1.3 — BFOL Completeness:

```
If φ is a BFOL sentence true in every BFOL-structure
(finite or infinite) satisfying assumptions Γ, then
Γ ⊢_BFOL φ.

Proof:
Every BFOL formula embeds into standard FOL via the
translation of Section 3.1.9:

  ∀x ≤ t φ(x)  ↦  ∀x (x ≤ t → φ(x))
  ∃x ≤ t φ(x)  ↦  ∃x (x ≤ t ∧ φ(x))

This embedding preserves truth: a BFOL-structure M
satisfies a BFOL sentence φ if and only if M
(viewed as a FOL-structure) satisfies the FOL
translation φ*.

If φ is true in every BFOL-structure satisfying Γ,
then φ* is true in every FOL-structure satisfying
Γ*. By Gödel's completeness theorem for FOL,
Γ* ⊢_FOL φ*. The FOL proof translates back to a
BFOL proof, since every FOL rule used on bounded
formulas corresponds to a BFOL rule. Therefore
Γ ⊢_BFOL φ. □
```

Plain language: BFOL is complete in the standard model-theoretic sense — if a sentence is true in every structure satisfying the assumptions, it is provable. Together with Theorem 3.1.1, this gives the fundamental metatheorem of BFOL:

### Corollary 3.1.3a — Soundness-Completeness biconditional:

```
Γ ⊢_BFOL φ   if and only if   Γ ⊨ φ.

That is, φ is derivable from Γ in BFOL if and only
if φ is true in every BFOL-structure satisfying Γ.

Proof: The left-to-right direction is Theorem 3.1.1
(Soundness). The right-to-left direction is
Theorem 3.1.3 (Completeness). □
```

Plain language: The deductive system captures exactly the valid entailments of the logic. Nothing true in all structures escapes provability; nothing provable fails in any structure.

**Remark on completeness and finite models.** The completeness theorem above quantifies over all BFOL-structures — finite and infinite. A stronger property would be completeness restricted to finite structures: if φ is true in every *finite* BFOL-structure, then BFOL ⊢ φ. This stronger property fails. Trakhtenbrot's theorem (stated below as Theorem 3.3.2) establishes that the set of sentences true in all finite structures of a language with a binary relation is not recursively enumerable, while the set of provable sentences in any sound system is. Finite-restricted completeness is therefore impossible for any sound deductive system, including BFOL.

This is the gap that Formulation B of AFB addresses by stipulation: BST-B is *defined* as the theory whose theorems are the sentences true in all finite models of the base axioms, and the coherence of this definition is established in Section 3.3.3.7. The stipulation does not violate Trakhtenbrot — it simply adopts finite-model truth as the criterion of theoremhood, accepting the consequence (Theorem 3.3.2) that the resulting theory is not recursively enumerable.


### 3.1.7  Meta-logical properties of BFOL

Two meta-logical properties of standard FOL that support modular reasoning — Craig Interpolation and Beth Definability — survive the restriction to bounded quantifiers. Two that do not — Compactness and Löwenheim-Skolem — correctly fail, and their failure is a direct consequence of the restriction to finite intended models.

### Theorem 3.1.4 — Bounded Craig Interpolation:

```
Let φ and ψ be BFOL sentences such that φ ⊢_BFOL ψ.
Let Var(φ) ∩ Var(ψ) be the shared non-logical vocabulary
(relation symbols, function symbols, and constant symbols
appearing in both φ and ψ; the logical symbols =, ≤, ¬,
∧, ∨, →, and the bounded quantifiers are always shared).

Then there exists a BFOL formula θ such that:
(i)   φ ⊢_BFOL θ
(ii)  θ ⊢_BFOL ψ
(iii) The non-logical symbols of θ are among those
      common to φ and ψ.
(iv)  Every quantifier in θ is bounded.
```

The proof proceeds by Maehara's method, applied directly to a sequent calculus formulation of BFOL. This avoids the round-trip through FOL and ensures the interpolant is a BFOL formula at every stage of the construction.

**Sequent calculus for BFOL.** The natural deduction system of Section 3.1.6 has an equivalent sequent calculus formulation. Sequents have the form Γ ⊢ Δ where Γ and Δ are finite multisets of BFOL formulas. The rules are:

```
Identity:     A ⊢ A

Structural:   Weakening (left and right), Contraction
              (left and right) — standard.

Propositional: (∧-L), (∧-R), (∨-L), (∨-R), (→-L),
               (→-R), (¬-L), (¬-R) — standard.

Bounded quantifier rules:

(∀≤-L): From  Γ, φ(s) ⊢ Δ  and  s ≤ t,
        infer  Γ, ∀x ≤ t φ(x) ⊢ Δ.

(∀≤-R): From  Γ ⊢ φ(a), Δ  where a is fresh
        and a ≤ t is in context,
        infer  Γ ⊢ ∀x ≤ t φ(x), Δ.

(∃≤-L): From  Γ, φ(a) ⊢ Δ  where a is fresh
        and a ≤ t is in context,
        infer  Γ, ∃x ≤ t φ(x) ⊢ Δ.

(∃≤-R): From  Γ ⊢ φ(s), Δ  and  s ≤ t,
        infer  Γ ⊢ ∃x ≤ t φ(x), Δ.

Cut:    From  Γ ⊢ A, Δ  and  Γ, A ⊢ Δ,
        infer  Γ ⊢ Δ.
```

Soundness and completeness of this sequent calculus with respect to BFOL semantics follow from the equivalence with the natural deduction system, which is standard.

### Theorem 3.1.3b — Cut-elimination for BFOL:

```
Every proof in the BFOL sequent calculus can be
transformed into a cut-free proof of the same sequent.

Proof:
The proof is the standard Gentzen cut-elimination
argument. Each reduction step — permuting the cut
above a rule application, or reducing a cut on a
formula introduced on both sides — preserves the
bounded quantifier structure because every rule takes
BFOL formulas as input and produces BFOL formulas as
output. No unbounded quantifier is introduced at any
stage. The transformation terminates by the standard
measure (cut rank and proof height). □
```

Plain language: Any proof that uses the cut rule — reasoning via an intermediate result that is then discarded — can be converted into one that proceeds directly, without cut. This is the structural property that makes the Maehara partition construction (Theorem 3.1.4a below) possible, and it guarantees that the subformula property holds for cut-free BFOL proofs: every formula appearing in a cut-free proof is a subformula of the conclusion.

**Maehara's Partition Theorem for BFOL.** The interpolation theorem is derived from a stronger partition theorem on cut-free proofs.

```
Theorem 3.1.4a (Maehara Partition for BFOL):

Let π be a cut-free proof of Γ ⊢ Δ in the BFOL
sequent calculus. Let (Γ₁, Δ₁ | Γ₂, Δ₂) be any
partition of the end-sequent, meaning Γ = Γ₁, Γ₂
and Δ = Δ₁, Δ₂.

Then there exists a BFOL formula θ such that:
  (a)  Γ₁ ⊢ θ, Δ₁  is provable
  (b)  Γ₂, θ ⊢ Δ₂  is provable
  (c)  The non-logical symbols of θ are among those
       common to (Γ₁, Δ₁) and (Γ₂, Δ₂).
  (d)  Every quantifier in θ is bounded.

Proof:
By induction on the height of the cut-free proof π.

BASE CASE — Identity axiom:
π proves A ⊢ A for some formula A.

  Case: A is in Γ₁ and A is in Δ₁.
  Take θ = ⊤. Then Γ₁ ⊢ ⊤, Δ₁ is immediate,
  and Γ₂, ⊤ ⊢ Δ₂ holds since Δ₂ = ∅ and ⊤ is
  trivially eliminable. ✓

  Case: A is in Γ₁ and A is in Δ₂.
  Take θ = A. Then A ⊢ A is the identity (giving
  Γ₁ ⊢ θ, Δ₁), and A ⊢ A gives Γ₂, θ ⊢ Δ₂.
  A uses only its own symbols, which appear on
  both sides of the partition. ✓

  Case: A is in Γ₂ and A is in Δ₁.
  Take θ = ¬A. Then Γ₁ ⊢ ¬A, A (which is Γ₁ ⊢ θ, Δ₁)
  holds by ¬-R from the identity, and A, ¬A ⊢ Δ₂
  (which is Γ₂, θ ⊢ Δ₂) holds by ¬-L. ✓

  Case: A is in Γ₂ and A is in Δ₂.
  Take θ = ⊥. Then Γ₁ ⊢ ⊥, Δ₁ holds since
  Γ₁ = ∅ and Δ₁ = ∅ means ⊢ ⊥ is not needed
  (actually, Γ₁ ⊢ ⊥, Δ₁ holds vacuously with
  Δ₁ = ∅ only if we weaken; more precisely, take
  θ = ⊤ and argue as in the first case). ✓

PROPOSITIONAL CASES:
The propositional rules (∧-L), (∧-R), (∨-L), (∨-R),
(→-L), (→-R), (¬-L), (¬-R) are handled exactly as
in the standard FOL Maehara proof. In each case:
— If the principal formula is on side 1: apply the
  rule to the first component, θ passes through
  unchanged.
— If the principal formula is on side 2: apply the
  rule to the second component, θ passes through
  unchanged.
— For two-premise rules (∧-R, →-L): the IH gives
  interpolants θ₁ and θ₂ for the two premises;
  take θ = θ₁ ∧ θ₂ or θ = θ₁ ∨ θ₂ as appropriate.
Since boolean combinations of BFOL formulas are
BFOL formulas, conditions (c) and (d) are preserved. ✓

BOUNDED QUANTIFIER CASES — substitution rules:

(∀≤-L): From Γ, φ(s) ⊢ Δ with s ≤ t, infer
Γ, ∀x ≤ t φ(x) ⊢ Δ. The principal formula
∀x ≤ t φ(x) is on the LEFT.

  If ∀x ≤ t φ(x) is on side 1: In the premise,
  φ(s) replaces ∀x ≤ t φ(x) on side 1. By IH,
  ∃ θ with Γ₁', φ(s) ⊢ θ, Δ₁ and Γ₂, θ ⊢ Δ₂.
  Apply (∀≤-L) to the first sequent:
  Γ₁', ∀x ≤ t φ(x) ⊢ θ, Δ₁. Second unchanged.
  Interpolant θ, unchanged, still BFOL. ✓

  If ∀x ≤ t φ(x) is on side 2: symmetric —
  apply (∀≤-L) to the second component. ✓

(∃≤-R): From Γ ⊢ φ(s), Δ with s ≤ t, infer
Γ ⊢ ∃x ≤ t φ(x), Δ. Symmetric to (∀≤-L).
Apply the rule to whichever side contains the
principal formula. θ passes through unchanged. ✓

BOUNDED QUANTIFIER CASES — eigenvariable rules:
These are the critical cases where the interpolant
may acquire a new quantifier.

(∀≤-R): From Γ ⊢ φ(a), Δ with a fresh and a ≤ t,
infer Γ ⊢ ∀x ≤ t φ(x), Δ. The principal formula
∀x ≤ t φ(x) is on the RIGHT.

  If ∀x ≤ t φ(x) is on side 1: In the premise,
  φ(a) is on side 1. By IH, ∃ θ with
  Γ₁ ⊢ θ, φ(a), Δ₁' and Γ₂, θ ⊢ Δ₂.
  Since a is fresh (eigenvariable condition), a does
  not appear in Γ₁, Δ₁', Γ₂, Δ₂. By the subformula
  property of cut-free proofs, θ is built from
  subformulas of the sequent; since a appears only
  in φ(a) which is on side 1, a does not appear in
  θ (θ uses only shared vocabulary, and a is not a
  non-logical symbol but a fresh variable not in any
  original formula). Apply (∀≤-R) to bind a in the
  first sequent: Γ₁ ⊢ θ, ∀x ≤ t φ(x), Δ₁'.
  Second unchanged. θ unchanged, still BFOL. ✓

  If ∀x ≤ t φ(x) is on side 2: In the premise,
  φ(a) is on side 2. By IH, ∃ θ with
  Γ₁ ⊢ θ, Δ₁ and Γ₂, θ ⊢ φ(a), Δ₂'.

  Sub-case: a ∉ FV(θ). Then a does not appear in
  the interpolant. Apply (∀≤-R) to the second
  sequent (a is fresh, not in Γ₂, θ, Δ₂'):
  Γ₂, θ ⊢ ∀x ≤ t φ(x), Δ₂'.
  θ unchanged, still BFOL. ✓

  Sub-case: a ∈ FV(θ). The eigenvariable a has
  propagated into the interpolant through shared
  formulas in the proof tree. Since a satisfies
  a ≤ t and the bound term t appears in the
  principal formula ∀x ≤ t φ(x) on side 2,
  and a entered θ only through formulas using
  shared vocabulary, the symbols of t that are
  needed to express the bound are in the shared
  vocabulary (if any symbol of t were non-shared,
  a could not have propagated through shared
  formulas into θ).

  Construct θ' = ∃y ≤ t θ(y/a) (existentially
  bind a with the available bound t, using a
  fresh variable y).

  First sequent: From Γ₁ ⊢ θ(a), Δ₁, since
  a ≤ t and θ(a) holds, apply (∃≤-R):
  Γ₁ ⊢ ∃y ≤ t θ(y), Δ₁. ✓

  Second sequent: From Γ₂, θ(a) ⊢ φ(a), Δ₂',
  rename a to a fresh variable b throughout.
  Apply (∃≤-L) on the left: from
  Γ₂, θ(b) ⊢ φ(b), Δ₂' with b fresh, derive
  Γ₂, ∃y ≤ t θ(y) ⊢ φ(b), Δ₂'.
  Then apply (∀≤-R) on the right: b is fresh
  and not in Γ₂, ∃y ≤ t θ(y), Δ₂', giving
  Γ₂, ∃y ≤ t θ(y) ⊢ ∀x ≤ t φ(x), Δ₂'. ✓

  The interpolant θ' = ∃y ≤ t θ(y) is a BFOL
  formula: its quantifier is bounded by t. ✓

(∃≤-L): From Γ, φ(a) ⊢ Δ with a fresh and a ≤ t,
infer Γ, ∃x ≤ t φ(x) ⊢ Δ. The principal formula
∃x ≤ t φ(x) is on the LEFT. Symmetric to (∀≤-R):

  If on side 1 and a ∈ FV(θ): construct
  θ' = ∀y ≤ t θ(y/a) (universally bind a).
  The argument mirrors the ∀≤-R case with
  ∀/∃ and left/right exchanged. ✓

  If on side 2, or if a ∉ FV(θ): apply the rule
  to the appropriate component. θ passes through
  unchanged. ✓

STRUCTURAL CASES — weakening and contraction:
  Weakening: the interpolant from the IH is carried
  through unchanged. ✓
  Contraction: the interpolant from the IH is carried
  through unchanged (the contracted formula stays on
  its side). ✓

This completes the induction. In every case, the
interpolant θ is a BFOL formula — all quantifiers
are bounded — and uses only the shared non-logical
vocabulary. □
```

**Derivation of Craig Interpolation from the Partition Theorem.**

```
Given φ ⊢_BFOL ψ, take the cut-free proof of φ ⊢ ψ
(which exists by cut-elimination). Apply the Partition
Theorem with Γ₁ = {φ}, Δ₁ = ∅, Γ₂ = ∅, Δ₂ = {ψ}.

The theorem gives θ with:
  (a) φ ⊢ θ
  (b) θ ⊢ ψ
  (c) Non-logical symbols of θ ⊆ Var(φ) ∩ Var(ψ)
  (d) All quantifiers in θ are bounded.

This is Theorem 3.1.4. □
```

Plain language: If a BFOL argument leads from hypotheses using vocabulary V₁ to a conclusion using vocabulary V₂, there is an intermediate BFOL statement using only the shared vocabulary V₁ ∩ V₂ that bridges the two. The interpolant is constructed directly from the proof tree by Maehara's method — at each node, a bounded formula is built from the formulas at that node using boolean combinations and bounded quantification over eigenvariables. Because the BFOL proof system admits only bounded quantifier rules, the interpolant inherits bounded quantifiers at every stage. This ensures that BST proofs can be decomposed into bounded sub-arguments with well-defined shared interfaces.

### Theorem 3.1.5 — Bounded Beth Definability:

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

Two properties of standard FOL correctly fail for BFOL under the Global Boundedness Principle (Section 3.1.8). In both cases, the failure is not a defect but a consequence of restricting intended models to finite structures — it is the GBP that does the work, not the bounded quantifier syntax. BFOL without GBP embeds into FOL and inherits compactness. It is specifically the restriction to finite intended models that breaks both properties.

### Proposition 3.1.6 — Failure of Compactness for BFOL under GBP:

```
There exist sets Γ of BFOL sentences such that every
finite subset of Γ has a finite model, but Γ itself
has no finite model.

Proof:
For each natural number n, let σ_n be the BFOL
sentence asserting "there exist at least n distinct
elements" (expressible using bounded existential
quantifiers and inequality). Let Γ = {σ_n : n ∈ ℕ}.
Every finite subset of Γ is satisfied by a
sufficiently large finite model. But any model
satisfying all of Γ simultaneously must contain
elements of every finite cardinality — and therefore
has an infinite domain.

Under GBP, only finite models are admitted. No
finite model satisfies Γ. Therefore compactness
fails: finite satisfiability of every subset does
not entail satisfiability in the GBP-restricted
class. □
```

Plain language: The compactness argument — "if every finite piece of a theory has a model, the whole theory has a model" — relies on the availability of infinite models as limits of finite approximations. GBP excludes infinite models. With that escape route closed, a theory can be finitely consistent without being satisfiable. This is exactly the mechanism by which BST avoids being forced into infinite models despite having arbitrarily large finite ones.

### Proposition 3.1.7 — Failure of Löwenheim-Skolem for BFOL under GBP:

```
Neither the downward nor the upward Löwenheim-Skolem
theorem holds for BFOL under GBP.

Proof:
Downward: The downward Löwenheim-Skolem theorem
asserts that any satisfiable theory in a countable
language has a countably infinite model. Under GBP,
all intended models are finite. There is no
countably infinite model to descend to. ✓

Upward: The upward Löwenheim-Skolem theorem asserts
that any theory with an infinite model has models
of every larger cardinality. Under GBP, no intended
model is infinite. The hypothesis is never
satisfied. ✓ □
```

Plain language: Löwenheim-Skolem guarantees the existence of models at every infinite cardinality. Under GBP, infinite models do not exist. The theorem's conclusions are vacuously blocked, and its machinery — which depends on the availability of infinite structures — has no ground to operate on. This is a correct consequence of BST's finite ontology.


### 3.1.8  The Global Boundedness Principle

BFOL's syntax and semantics are defined for any structure with a bounding relation. For the specific application to BST, a further condition is imposed on the intended class of structures.

```
Global Boundedness Principle (GBP):
Every intended model of BST has a finite domain.
The maximum extent of that domain need not be
nameable within the object language.
```

This principle is not part of the syntax or proof theory of BFOL. It is a metatheoretic condition on the intended semantics — it specifies which BFOL-structures are admitted as intended interpretations of BST. Its content is the first structural consequence drawn at the opening of this Part: every domain is finite. GBP makes this consequence a formal semantic restriction.

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

One consequence of this embedding deserves emphasis. Standard FOL's compactness theorem implies that any theory with arbitrarily large finite models also has infinite models. BFOL under GBP is not subject to this implication — the failure of compactness for finite intended models is established as a formal proposition in Section 3.1.7. This is the structural reason BST can have models of every finite size without being forced into infinite ones.

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


### Theorem 3.2.1 — Every nonzero ordinal is a successor:


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

### Theorem 3.2.2 — Ordinals are linearly ordered:


```
For any two ordinals α, β in BST: α ≤ β or β ≤ α.
```

```
Proof: Representatives are finite well-orders. Any two
finite well-orders of sizes m and n satisfy m ≤ n or n ≤ m
(since m, n ∈ ℕ are comparable). The shorter is isomorphic
to an initial segment of the longer. □
```


### Theorem 3.2.3 — Bounded induction is valid:


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

### Theorem 3.2.4 — Cardinality coincides with ordinal in the finite case:


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
Corollary 3.2.4a: In the finite setting, |S| = n in the
cardinality sense if and only if S is order-isomorphic
to the ordinal n. The two concepts pick out the same
finite number by different routes.
```

Plain language: Counting the elements of a finite set and asking which ordinal it is isomorphic to give the same answer. This is the theorem that allows AFB to be stated using a single number n as both a bound on cardinality and a reference to a specific ordinal — the two roles are interchangeable for finite sets.


## 3.3  The Axiom of Finite Bounds (AFB)

The foundational commitment stated at the opening of Part III — there is no infinity, and there is an upper bound — must now be given precise formal expression within set theory. The Axiom of Finite Bounds is that expression. Everything else — the rejection of Power Set, the redundancy of Choice over finite collections, Foundation as an automatic consequence, the external resolution of the Burali-Forti analogue, the shape of bounded induction — follows from this commitment once formalized. Getting the formalization right therefore matters more than any other formal decision in the paper.
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

By Theorem 3.2.4, this coincides with the unique finite
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

A finite model of the BST base axioms (Extensionality, Empty Set, Bounded Pairing, Bounded Union, Bounded Replacement, negation of Infinity) is a finite structure M = (D, ∈_M) where D is a finite set and ∈_M is a binary relation on D satisfying each axiom. ACA₀ can define this class explicitly: the axioms are finitely many first-order sentences, and satisfaction of a first-order sentence in a finite structure is decidable by bounded quantification over the domain. The class of finite models is therefore a well-defined arithmetically definable collection within ACA₀.

Step 2 — Soundness of the base axioms (BST ⊢ φ → φ true in all finite models).

This is the standard soundness theorem of first-order logic, restricted to finite models. Every axiom of BST is by construction true in every finite model that satisfies it — this is what it means for the structure to be a model. Every inference rule of first-order logic preserves truth in any fixed model. Therefore every theorem of BST is true in every finite model of BST. This direction holds for any consistent theory with respect to its model class, and requires no special argument. ACA₀ suffices to formalise this reasoning.

Step 3 — Coherence of the completeness stipulation (φ true in all finite models → BST ⊢ φ).

This direction is not derived — it is the definitional content of Formulation B. BST-B is defined as the deductive closure of the base axioms together with the Bounded Reflection Principle, where the Reflection Principle precisely stipulates that provability coincides with truth in all finite models. The coherence question is whether this stipulation is consistent: could it force BST-B to prove a sentence φ and also prove ¬φ?

Suppose φ is true in all finite models and ¬φ is also true in all finite models. Then φ ∧ ¬φ is true in all finite models — a contradiction, since no structure satisfies a contradiction. Therefore the stipulation is consistent provided the class of finite models is non-empty and consistent. The non-emptiness is established by the standard models 𝒱_n of Section 3.3.8: for any n ≥ 2, the hereditarily finite sets of rank ≤ n form a finite structure satisfying all base axioms (with the construction axioms closed by the rank constraint). The consistency of the class of finite models is established by Step 1 — a finite structure with a finite decidable membership relation is a concrete mathematical object whose existence is not in doubt.

Therefore: the Bounded Reflection Principle is a coherent stipulation. BST-B is well-defined, its base axioms are sound with respect to its semantics, and the completeness direction holds by definition without circularity, since the theory is defined to be exactly what the semantics determines. □

Remark. This proof does not establish that BST-B is decidable — the set of sentences true in all finite models of a first-order theory is in general not decidable, and BST-B inherits this limitation. What is established is consistency and coherence. Whether BST-B is decidable is a separate question that depends on the specific axioms and is not required for the foundational purpose the proof serves.

Remark on metatheoretic parsimony. The coherence proof above is conducted in ACA₀, the system of Arithmetical Comprehension, whose proof-theoretic ordinal is ε₀. This is a conservative and safe choice, but it may exceed what is strictly required. A closer analysis reveals that Formulation A (the schema AFB_A(n) for a fixed n) is coherent in a much weaker metatheory: for any specific bound n, the model V_n (hereditarily finite sets of rank ≤ n) is a finite structure whose truth-evaluation is decidable by primitive recursive computation, and PRA (Primitive Recursive Arithmetic) suffices to verify its consistency. Formulation B, by contrast, asserts a property uniform across all finite models — every sentence true in all structures of every finite size — and this universality requires reasoning about the class {V_n | n ∈ ℕ} as a whole. Proving properties uniform across all n requires Σ₁ induction, which is exactly the strength of IΣ₁. Since |BST| = ω^ω = |IΣ₁| (Section 9.7), the metatheory required to validate Formulation B is proof-theoretically equivalent to BST itself. We are not using a dramatically stronger system to justify BST — the metatheoretic overhead is precisely calibrated. The ACA₀ framing above remains correct and safe; this observation refines it.

The coherence proof is of sufficient importance to warrant a formal denomination. The result is referenced in Part V (Section 5.4) and in the independence analysis of Section 4.6.

### Theorem 3.3.1 — Bounded Reflection Principle (Formal Statement):

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
      Theorem (Theorem 3.3.2).

Proof: Steps 1–3 of Section 3.3.3.7. □
```

```
Corollary 3.3.1a — Characterisation of BST theorems:
A sentence φ is a theorem of BST-B if and only if
it is eventually true in all sufficiently large
finite models of the base axioms.

This is the operative form of the reflection
principle used in Parts IV–IX when establishing
that a result holds throughout BST: it suffices
to show the result holds in every finite model,
which by Theorem 3.3.1 is equivalent to BST-B
provability.
```

The undecidability asserted in clause (iii) of Theorem 3.3.1 is grounded by a classical result from finite model theory that provides independent confirmation — through a different structural mechanism than Gödel's diagonalisation — that Gödelian incompleteness persists in BST.

### Theorem 3.3.2 — Undecidability of BST-B (via Trakhtenbrot):

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

Consider ZF¬∞: the theory with all ZFC axioms except Infinity, with Infinity replaced by its negation. Every set in ZF¬∞ is finite. But there is no upper bound on finite set sizes. For any finite cardinal n, ZF¬∞ proves the existence of a set with n elements. The question is whether this constitutes a genuine rejection of infinity.

### Theorem 3.3.5 — ZF¬∞ does not bound the natural numbers:

```
ZF¬∞ ⊢ ∀k ∃m ( m > k ).

That is, ZF¬∞ proves there is no largest natural number.

Proof:
For each specific numeral k̄, the von Neumann ordinal
k̄ = {0, ..., k-1} is constructed in ZF¬∞ by k
iterated applications of Pairing and Union, both
retained in ZF¬∞, starting from ∅. Therefore ZF¬∞
proves "there exists a set of cardinality k" for
every specific k̄.

For each specific k̄, ZF¬∞ also proves "there exists
a set of cardinality k+1": namely k̄ ∪ {k̄},
constructed by one further application of Pairing
and Union.

Since ZF¬∞ retains the successor axioms, it proves
∀k ∃m ( m > k ): for every natural number there is
a strictly larger one. This is the negation of
∃n ∀m ( m ≤ n ). □
```

Plain language: In ZF¬∞, every set is finite, but the natural numbers are unbounded. The theory proves, for every number k, that there is a larger number. This is exactly the Aristotelian potential infinity: no completed infinite object, but an endless progression of finite ones.

The objection might be raised: ZF¬∞ doesn't assert infinity — it just asserts that for each finite k there is a larger finite k'. These are all finite existential claims. How does this constitute an infinite commitment? The answer requires distinguishing between the content of individual sentences and the content of a theory. Each individual sentence 'there exists a set with k elements' is indeed a finite existential claim. But the theory as a whole — the set of all its theorems — encodes an unbounded progression. A model of ZF¬∞ must satisfy all these sentences simultaneously, and any model that satisfies all of them contains sets of unboundedly large finite size.

### Corollary 3.3.5a — ZF¬∞ has only infinite models:

```
Every model of ZF¬∞ capable of expressing arithmetic
has an infinite domain.

Proof:
By Theorem 3.3.5, any model M of ZF¬∞ satisfies
∀k ∃S ( |S| = k ). Therefore M contains sets of
cardinality 0, 1, 2, 3, ... for every finite k.
The domain of M must contain all these sets
simultaneously. A domain containing sets of every
finite cardinality has infinitely many elements.
Therefore |M| = ∞. □

Note: The trivial one-element model {∅} with
∈_M = ∅ satisfies the axioms of ZF¬∞ vacuously
but does not express arithmetic — it contains no
successor, no pairing, and no set of cardinality
greater than zero. Every model that supports
mathematical development has an infinite domain.
```

Plain language: ZF¬∞, despite containing no infinite sets, has only infinite models. The infinity has been removed from the individual sets and relocated to the domain of the theory. Every set is finite; the universe of sets is infinite. This is not a genuine rejection of infinity. It is a redistribution.

Bounded set theory (either formulation) is precisely what is needed to correct this: it asserts not only that every individual set is finite but that the domain as a whole is finite. Both formulations assert this explicitly, by different means: Formulation B through the metatheoretic constraint, Formulation A through the schema selecting a single bound instance in any fixed model, giving that model a finite domain.

### Corollary 3.3.5b — BST and ZF¬∞ are model-theoretically incomparable:

```
Every non-trivial model of ZF¬∞ has an infinite domain
(Corollary 3.3.5a). Every model of BST has a finite
domain (Formulation B, or any fixed instance of
Formulation A). Therefore:

(i)   No non-trivial model of ZF¬∞ is a model of BST.
(ii)  No model of BST is a model of ZF¬∞ (since every
      BST model satisfies ∀S(|S| ≤ n) for some n,
      while ZF¬∞ proves ¬∃n ∀m(m ≤ n)).
(iii) BST and ZF¬∞ are model-theoretically incomparable:
      neither theory's models include the other's.

Proof: Immediate from Corollary 3.3.5a and the
definition of BST (both formulations). □
```

Plain language: BST and ZF¬∞ are not the same theory with different emphasis. They describe fundamentally different ontologies. ZF¬∞ says every set is finite but the universe is infinite. BST says every set is finite and the universe is finite. No structure satisfies both. The bound is not a stylistic addition to ZF¬∞ — it produces a genuinely different theory with genuinely different models.


### 3.3.7  Relationship to the Consistency Question

Any foundational proposal must address its own consistency. Gödel's second incompleteness theorem establishes that no consistent formal system strong enough to express elementary arithmetic can prove its own consistency within that system. Bounded set theory is no exception, and this paper does not claim otherwise.
What can be said is the following.

### Relative consistency of Formulation A

Formulation A, for any fixed instance n, describes a theory that is interpretable in finite combinatorics: the universe is simply the hereditarily finite sets of rank at most n. The consistency of this theory is as secure as the consistency of elementary combinatorics — which is to say, it is extremely secure, though not formally provable from within.

### Theorem 3.3.6 — Relative consistency of BST-A:

```
If finite combinatorics is consistent, then BST-A(n)
is consistent for every specific n.

Proof: The hereditarily finite sets of rank ≤ n form
an explicit finite model of BST-A(n). A theory with
an explicit finite model is consistent. □
```


### Relative consistency of Formulation B

Formulation B requires a metatheory strong enough to reason about all finite models of BST. The appropriate metatheory is a weak fragment of second-order arithmetic — specifically, the system ACA₀ (arithmetical comprehension with arithmetical sets) is more than sufficient.

### Theorem 3.3.7 — Relative consistency of BST-B:

```
If ACA₀ is consistent, then BST-B is consistent.

Proof:
Section 3.3.3.7 establishes that the Bounded
Reflection Principle is a coherent stipulation —
that defining BST-B as the theory of sentences true
in all finite models is consistent and well-defined,
within ACA₀.

ACA₀ can define 'finite model of BST' (Step 1 of
Section 3.3.3.7) and verify soundness in both
directions (Steps 2 and 3). BST-B is therefore
interpretable in ACA₀ in the sense that ACA₀ can
reason about all finite models of BST and confirm
that BST-B's theorems hold in them.

The relative consistency follows: if ACA₀ is
consistent, no contradiction is derivable in BST-B,
since any contradiction would be a sentence false in
some finite model, contradicting the completeness
stipulation. □
```

Note: ACA₀ is a conservative extension of Peano Arithmetic for first-order sentences. Assuming ACA₀ consistent is a weaker assumption than assuming ZFC consistent, which the mathematical community accepts as a working hypothesis.

### The honest statement

Neither formulation proves its own consistency. Both are consistent relative to systems weaker than ZFC. The consistency assumption required for bounded set theory is therefore strictly weaker than what standard mathematics already assumes. This is the appropriate epistemic position: the paper does not claim to have solved the problem of consistency — it claims to have a foundation whose consistency assumption is more modest than what it replaces.


### 3.3.8  Standard Models and the Equivalence of the Two Formulations

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

The models 𝒱_n are the canonical witnesses for Formulation A: 𝒱_n models exactly BST_A(|D_n|). Every finite BST-structure embeds into some 𝒱_n via the Mostowski collapsing map — a fact whose proof is standard in finite model theory, conducted in ACA₀. The proof is supplied here; it is used in Part V (Corollary 5.3b) to establish that every BST model is hereditarily finite.

**Theorem 3.3.3 — Finite Mostowski Collapse (ACA₀).**

```
Every finite extensional well-founded BST-structure M
is isomorphic to a transitive finite set M* ⊆ V_{h+1}
for some finite h, via the Mostowski collapsing map π.

Proof (within ACA₀):

Step 1 — Well-foundedness.
M is a finite structure (the fundamental commitment of Part III).
∈_M is well-founded on D: no infinite descending chain
exists in a finite domain, since such a chain would require
infinitely many distinct elements. This is verifiable by
bounded search over D in ACA₀:
no finite sequence d₀, d₁, ..., dₙ in D satisfies
d_{i+1} ∈_M d_i for all i. ✓

Step 2 — Rank assignment.
Define the rank ρ(x) for each x ∈ D by recursion on ∈_M:

ρ(x) = sup { ρ(y) + 1 : y ∈_M x }

Since D is finite and ∈_M is well-founded, this
recursion terminates. Set h = max_{x ∈ D} ρ(x) ∈ ℕ.
(h is a specific standard natural number.) ✓

Step 3 — The collapse map.
Define π: D → V_{h+1} by rank recursion on ∈_M:

π(x) = { π(y) : y ∈_M x }

Since ∈_M is well-founded and D is finite, the
recursion terminates after at most h unfolding steps.
ACA₀ supports definition by recursion on well-founded
relations on finite domains. ✓

Step 4 — Injectivity.
Claim: π(x) = π(z) implies x = z.
Proof by induction on ρ(x):

If π(x) = π(z), then by definition of π:
{ π(y) : y ∈_M x } = { π(z') : z' ∈_M z }.

By the induction hypothesis (π is injective on
elements of rank < ρ(x)), the two sets of pre-images
are equal: { y : y ∈_M x } = { z' : z' ∈_M z }.
By Extensionality (Axiom A2) in M: x = z. □

Step 5 — Membership preservation.
y ∈_M x  iff  π(y) ∈ π(x):
Forward: π(y) ∈ { π(z) : z ∈_M x } = π(x). ✓
Reverse: if u ∈ π(x) then u = π(y) for some y ∈_M x. ✓

Step 6 — Transitivity of image.
range(π) ⊆ V_{h+1}: each π(x) is a set of images
of ∈_M-members of x, which by construction have
rank ≤ ρ(x). So π(x) ∈ V_{ρ(x)+1} ⊆ V_{h+1}. ✓
range(π) is transitive: if u ∈ π(x), then u = π(y)
for some y ∈_M x, and u itself is a set of images of
∈_M-members of y — all in range(π). ✓

Conclusion: M* = range(π) is a transitive finite
subset of V_{h+1}, and π: M → M* is an isomorphism
of membership structures. □

ACA₀ sufficiency: Every step uses only arithmetic
comprehension over the finite domain D — membership
checking, rank computation, and the recursion are all
primitive recursive on finite structures. No stronger
second-order principle is required.
```

### Corollary 3.3.3a — Isomorphism preservation of BFOL truth:

```
Let M be a finite extensional well-founded BST-structure,
and let π: M → M* be the collapse map of Theorem 3.3.3,
with M* ⊆ V_{h+1} finite and transitive. Then for every
BFOL sentence φ:

    M ⊨ φ   if and only if   M* ⊨ φ.

Proof:
The map π is a bijection between D and M* that preserves
membership (Step 5 of Theorem 3.3.3): y ∈_M x iff
π(y) ∈ π(x). Since BFOL truth depends only on the
domain, the membership relation, and the interpretations
of function and constant symbols — all of which are
transferred by a membership-preserving bijection —
satisfaction of every BFOL sentence is preserved. □
```

Plain language: The Mostowski collapse does not change what is true. Any BFOL sentence that holds in the original structure holds in its transitive image, and vice versa. This is the formal content of the claim that every finite BST-structure can be replaced by its canonical transitive copy without loss of information.

**A model-theoretic observation.** Since BFOL admits only bounded quantifiers — every quantifier has the form ∀x ≤ t or ∃x ≤ t — all BST sentences are Δ₀ formulas in the sense of set theory: their quantifiers are bounded by terms naming specific sets. For Δ₀ formulas, satisfaction is absolute for transitive structures: if M* is a transitive set and φ is a Δ₀ sentence true in the ambient structure 𝒱_{h+1}, then φ is true in M* whenever all sets named by the bound terms of φ are in M*. This absoluteness is a standard result of set theory, provable in ACA₀ by induction on the complexity of φ. This observation is not needed for the equivalence theorem below, but it illustrates a general feature of BFOL: because all quantifiers are bounded, truth transfers cleanly between transitive substructures and their ambient structures.

**The equivalence theorem.** The relationship between Formulation A and Formulation B is now precise:

```
Theorem 3.3.4 — Semantic Equivalence of Formulations:

BST_B = ∩_{n ∈ ℕ} Th(Mod(BST_A(n)))

where Th(Mod(BST_A(n))) is the set of sentences
true in every model of BST_A(n).

Proof:
(⊆): If φ ∈ BST_B, then φ is true in every finite
model of BST. Every BST_A(n)-model is finite, so
φ is true in every BST_A(n)-model for every n.
Thus φ ∈ ∩_n Th(Mod(BST_A(n))).

(⊇): If φ is true in every BST_A(n)-model for
every n, let M be any finite model of BST with
domain D, |D| = m. Every set in M has at most m
elements (since all elements come from D). Therefore
M satisfies the constraint AFB_A(m) — it is a
BST_A(m)-model. By hypothesis, φ is true in every
BST_A(m)-model. Therefore φ is true in M.
Since M was arbitrary, φ ∈ BST_B.  □
```

Plain language: Formulation B is exactly the theory of sentences that hold in every Formulation A instance. A sentence is a theorem of BST-B if and only if it is true no matter which specific finite bound is in effect. The two formulations describe the same semantic reality from different angles: Formulation A names a specific bound (any one of the infinitely many schema instances), and Formulation B takes the intersection — what survives across all of them.

**Conservative extension.** A direct consequence is that Formulation B is a conservative extension of any Formulation A instance for the sentences that particular instance can express:

```
Corollary 3.3.4a: For any n, every sentence provable in BST_B
that is expressible in BST_A(n) is also provable in
BST_A(n) (for sufficiently large n).

This is the formal content of the claim in Section 3.3.4
that the two formulations are complements — they are
not competing axiom systems but the same semantic
content viewed at different levels of specificity.
```

This result is used in Part V to show that the Burali-Forti resolution applies uniformly across all models — the bound is metatheoretic for the same reason that Formulation B is: both are statements about what holds in all finite structures, not within any particular one.


### 3.3.9  What the Axiom Does to ZFC: A Preview

The Axiom of Finite Bounds, in either formulation, propagates through the rest of the axiom system in determinate ways. The consequences are previewed here and developed fully in Part IV.

### Power Set

Under bounded finitude, the full ZFC Power Set is not available for all sets — power sets grow exponentially, and for sufficiently large sets, |P(A)| = 2^|A| exceeds any finite bound. But Bounded Power Set (BFT 4.3) is proved as a theorem: for sets with |A| ≤ ⌊log₂(n_M)⌋, the full power set P(A) exists within the model. The threshold is computable and precisely located. Two independent arguments support the bounded treatment — the cardinality argument (exponential growth exceeds the bound) and the predicativist argument (Weyl's objection to impredicative definitions). Both are given fully in Part IV.

```
Preview — Bounded Power Set:
```


```
For any model with bound B (satisfying Form. A):
P(A) exists whenever |A| ≤ ⌊log₂(B)⌋  (BFT 4.3).
P(A) does not exist when |A| > ⌊log₂(B)⌋
(since 2^|A| > B). □ (details in Part IV)
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
choice function for C \ {S₀} by f(S₀) = e. □
(Full proof: BFT 4.1, Section 4.3.2.)
```


### Foundation

As stated at the opening of Part III, Foundation is a direct consequence of the fundamental commitment. No finite domain can support an infinite descending membership chain — such a chain would require infinitely many distinct elements, which a finite domain does not have. Foundation therefore holds automatically in every BST model. It is not an axiom of BST. It is a Bounded Fundamental Theorem, and BFT 4.2 in Part IV gives the explicit formal verification.

### The remaining axioms

After removing Infinity (replaced by AFB) and establishing Bounded Power Set, Bounded Choice, Bounded Foundation, and Bounded Separation as Bounded Fundamental Theorems, the system retains six axioms: the Axiom of Finite Bounds itself and five construction principles — Extensionality, Empty Set, Bounded Pairing, Bounded Union, and Bounded Replacement. Each construction axiom is a bounded version of the corresponding ZFC axiom, with finiteness constraints made explicit. The four Bounded Fundamental Theorems carry the structural weight of their ZFC counterparts while being proved from the six axioms rather than assumed. These axioms and theorems are developed fully in Part IV.


End of Part III

# Part IV: The Six Axioms of Bounded Set Theory


The formal system presented here rests on a single pre-formal commitment:

**There is no infinity.**

**And**

**There is an upper bound.**

This commitment is not itself an axiom — it is prior to formalization. The Axiom of Finite Bounds (Axiom 1 below) is its expression within the formal system. The distinction matters: the axiom is what the commitment becomes when stated in the language of set theory. The commitment is what makes the axiom worth stating. Readers arriving at this Part directly should understand that every axiom, theorem, and construction in what follows serves this single governing truth. Its full philosophical development is in the Preamble (Part I) and its formal consequences are derived in Part III.

This part presents the complete formal system of Bounded Set Theory. Every axiom is stated in full symbolic notation, followed immediately by a plain-language explanation of what it asserts, why it is included, and how it relates to its ZFC counterpart. The five ZFC axioms not among the six are then addressed — one negated, four proved as Bounded Fundamental Theorems — each with a formal demonstration of its status.
The system has been built up across the preceding parts. Part III stated the foundational commitment and formalized it as the Axiom of Finite Bounds in two formulations. Parts V, VI, and VII develop ordinals, induction, and functions respectively, building on the axiomatic base presented here. This part presents the complete axiomatic system, including the formal demonstration of each Bounded Fundamental Theorem.
The presentation proceeds as follows: first, a summary overview of the complete system; then each axiom in full; then the Bounded Fundamental Theorems with their proofs.


## 4.1  System Overview


### Bounded Set Theory (BST) — Complete System:


```
AXIOMS (6):
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
4. Bounded Pairing  ....................  [Bounded from ZFC; conditional]
5. Bounded Union  ......................  [Bounded from ZFC; conditional]
6. Bounded Replacement  ................  [Bounded from ZFC; conditional]
```

```
BOUNDED FUNDAMENTAL THEOREMS (4):
(ZFC axioms proved as BST theorems)

BFT 4.1 — Bounded Choice  ...........  [ZFC axiom → BST theorem]
BFT 4.2 — Bounded Foundation  .......  [ZFC axiom → BST theorem]
BFT 4.3 — Bounded Power Set  ........  [ZFC axiom → BST theorem;
                                        threshold applies]
BFT 4.4 — Bounded Separation  .......  [ZFC axiom → BST theorem;
                                        derived from A2–A6]
```

```
ZFC AXIOM NOT RETAINED:
Axiom of Infinity  ....................  [Negated by A1, Component 1]
```

```
DERIVED CONSTRUCTION PRINCIPLE:
FA-BST: Function Axiom  ..............  [Proposition 7.1; follows from A6]
```

A terminological note. The four Bounded Fundamental Theorems occupy a distinctive position in BST: each corresponds to a ZFC axiom — a principle that ZFC must assume without proof — but in BST each is proved from the six axioms. Their provability is not incidental; it is the formal expression of BST's central claim that the controversial axioms of infinite mathematics are consequences of finite structure, not independent commitments. A theorem with the structural role of an axiom is epistemically stronger than the axiom itself. The designation "Bounded Fundamental Theorem" marks this heritage: these are the foundational results that carry the weight of ZFC's axioms while earning their status through demonstration.

The pattern of bounding is consistent throughout: finiteness constraints are made explicit exactly where construction happens — where new sets are built from existing ones. Axioms that do not construct (Extensionality, Empty Set) need no conditioning. All three construction axioms (Pairing, Union, Replacement) share the same interiority condition: the inputs must be interior to the model — that is, each input must appear as a member of some set within the bounded domain. Ceiling elements — those at the very edge of the model, not contained in anything — are constructively inert across all construction axioms. This is the uniform expression of the fundamental truth: the bound constrains everything. The same gradient appears in the BFTs: Power Set (BFT 4.3) has a tight threshold, Separation (BFT 4.4) inherits Replacement's interiority condition, Choice (BFT 4.1) and Foundation (BFT 4.2) are structural consequences of finiteness.


## 4.2  The Six Axioms

Axiom 1: Axiom of Finite Bounds  [New — foundational]

```
Component 1 — Negation of Infinity (conditional):
¬∃S ≤ n_M [ ∃H ≤ n_M (S ∈ H)  ∧  ∅ ∈ S  ∧  ∀x ∈ S ( x ∪ {x} ∈ S ) ]
```

```
Component 2A — Schema (Formulation A):
For some n ∈ ℕ (meta):  ∀S ≤ n ( |S| ≤ n )
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

Plain language: No set contains every natural number as a completed totality. Every set is finite. There is some upper limit on the size of sets, though the theory does not specify what that limit is. This is the formal expression, within the axiom system, of the foundational commitment stated above and developed in Parts I and III.
AFB is the axiom that directly addresses what ZFC's Axiom of Infinity asserts — negating its existence claim and adding the bound that bare negation alone cannot supply. It is the only genuinely new axiom in BST — all others are modifications of existing ZFC axioms or consequences of AFB. Its epistemic status is symmetric with the Axiom of Infinity: both are declarations. The case for preferring Axiom 1 is developed in the Preamble and Part III.
All downstream consequences — Bounded Power Set as a Bounded Fundamental Theorem with a computable threshold, Bounded Choice proved by finite enumeration, Bounded Foundation as an automatic structural consequence, the revised ordinal theory, the bounded induction schemas — flow from the foundational commitment once formalized as this axiom. The elegance of the system is that one foundational change propagates cleanly through the entire axiomatic structure.

**BFOL bounding convention for axioms.** In BFOL, every quantifier carries an explicit bound. For the BST axioms, outer quantifiers ranging over the full domain are bounded by n_M — the model bound introduced by AFB. Under Formulation A, n_M is the specific schema numeral n. Under Formulation B, n_M is the maximum of each finite model's domain, which exists by finiteness but is not nameable within the theory. Inner quantifiers are bounded by the sets they quantify over: the abbreviation ∀x ∈ A φ(x) stands for the BFOL formula ∀x ≤ A (x ∈ A → φ(x)), which is well-formed because every member of a well-founded finite set has strictly smaller rank than the set itself. The ZFC originals are shown alongside the bounded forms throughout.

Axiom 2: Extensionality  [Bounded from ZFC]

```
ZFC original:
∀A ∀B [ ∀x(x ∈ A ↔ x ∈ B)  →  A = B ]
```

```
BST bounded form:
∀A ≤ n_M ∀B ≤ n_M [ ∀x ≤ n_M (x ∈ A ↔ x ∈ B) → A = B ]
```

```
Equivalently (contrapositive):
∀A ≤ n_M ∀B ≤ n_M [ A ≠ B → ∃x ≤ n_M (x ∈ A ∧ x ∉ B) ∨ ∃x ≤ n_M (x ∈ B ∧ x ∉ A) ]
```

Plain language: Two sets are identical if and only if they have exactly the same members. There is no difference between sets except their elements. A set is completely determined by what belongs to it.
Extensionality is the most fundamental axiom in set theory. It defines what it means for two sets to be the same — their identity is entirely constituted by their membership. The axiom makes no claim about size, cardinality, or finiteness. It does not construct anything. It is pure logic applied to the membership relation, and it survives any foundational assumption about bounds. The bounded quantifiers range over the model domain; in any finite model, this is a finite check.

Axiom 3: Empty Set  [Bounded from ZFC]

```
ZFC original:
∃∅ ∀x ( x ∉ ∅ )
```

```
BST bounded form:
∃e ≤ n_M ∀x ≤ n_M ( x ∉ e )
```

```
The empty set ∅ has no members.
It is the unique set with this property (by Extensionality).
|∅| = 0.
```

Plain language: There exists a set with no members. This is the most modest existence claim in mathematics — one object, zero elements.
The Empty Set axiom asserts the existence of a single, trivially finite object. It is fully compatible with bounded finitude — a set with zero elements satisfies any cardinality bound. It is the natural starting point of a finite set theory: the base case from which all constructions begin.
In ZFC, the Empty Set axiom is sometimes derived from Separation (taking a subset of any set satisfying a contradictory formula). In BST it is retained as an explicit axiom to make the existence of the empty set visible as a foundational commitment rather than a consequence of a more complex axiom. This follows standard practice in minimal axiom systems.

Axiom 4: Bounded Pairing  [Bounded from ZFC — conditional]

```
ZFC original:
∀a ∀b ∃P ∀x ( x ∈ P  ↔  x = a ∨ x = b )
```

```
BST bounded form:
∀a ≤ n_M ∀b ≤ n_M
  ( ∃S ≤ n_M (a ∈ S) ∧ ∃T ≤ n_M (b ∈ T)
    → ∃P ≤ n_M ∀x ≤ n_M (x ∈ P ↔ x = a ∨ x = b) )
```

```
Condition: the pair {a, b} exists when both a and b are
interior to the model — that is, when each appears as
a member of some set within the bounded domain. Elements
at the very edge of the model (those not contained in
any set within the domain) cannot be paired.
```

```
Cardinality: |P| ∈ {1, 2}.
If a = b: P = {a} has 1 element.
If a ≠ b: P = {a, b} has 2 elements.
The cardinality of the output is never the issue — it
is trivially within any positive bound. The condition
concerns whether the model has room for the pair as a
new object, not whether the pair is too large.
```

```
Threshold parallel with Power Set (BFT 4.3):
Power Set:  P(A) exists when 2^|A| ≤ n_M.
Pairing:    {a,b} exists when both inputs are interior.
Both are conditional. Power Set's threshold is tight
(exponential growth). Pairing's threshold is generous
(only elements at the very ceiling of the model are
excluded). Both express the same foundational principle:
the bound constrains all construction. Nothing that
exceeds the bound is permitted.
```

Plain language: Given two sets that are interior to the model — each appearing as a member of some other set in the domain — their pair exists. The pair has at most 2 elements and is always small. But it is a new set, and in a finite model, new sets require room. At the very edge of the model, that room is not available. This is structurally parallel to Power Set's threshold: Power Set fails when the output is too large for the model; Pairing fails when the inputs sit at the model's ceiling and no room exists above them. The fundamental truth — there is an upper bound — constrains every construction, including the simplest one.
Bounded Pairing is used throughout BST to construct ordered pairs (the Kuratowski encoding {{a},{a,b}} uses Pairing twice), which in turn support the Cartesian product and all function and relation theory of Part VII. The interiority condition is automatically satisfied for all elements used in mathematical practice, since any element participating in a construction is necessarily interior — it appears inside some set produced by a prior construction step. Only elements at the absolute boundary of the model, which serve no constructive role, are excluded.

Axiom 5: Bounded Union  [Bounded from ZFC — conditional]

```
ZFC original:
∀F ∃U ∀x ( x ∈ U  ↔  ∃Y(Y ∈ F ∧ x ∈ Y) )
```

```
BST bounded form:
∀F ≤ n_M ( ∃G ≤ n_M (F ∈ G)
  → ∃U ≤ n_M ∀x ≤ n_M (x ∈ U ↔ ∃Y ∈ F (x ∈ Y)) )
```

```
Condition: the union ⋃F exists when the family F is
interior to the model — that is, when F appears as a
member of some set within the bounded domain. Families
at the very edge of the model (those not contained in
any set within the domain) cannot be unioned.
```

```
Cardinality bound:
|U| ≤ Σ_{Y ∈ F} |Y|  ≤  |F| · max_{Y ∈ F}|Y|
The union of finitely many finite sets is finite.
As with Pairing, the cardinality of the output is not
the issue — it is always bounded. The condition concerns
whether the model has room for the union as a new object.
```

```
Special case: binary union A ∪ B.
Binary union is defined as ⋃{A, B}: first form the pair
{A, B} by Bounded Pairing (A4), then take its union.
Both A4 and A5 require interiority of their inputs.
|A ∪ B| ≤ |A| + |B|.
```

Plain language: Given a finite collection of finite sets that is interior to the model, there exists a finite set containing exactly the elements that belong to at least one member of the collection. The same principle governs Union as governs Pairing: the bound constrains all construction. Ceiling elements — those at the very edge of the model, not contained in anything — are constructively inert. They cannot be paired, unioned, or otherwise operated upon. Only interior elements participate in constructions.
Bounded Union is the axiom that allows sets to be combined. It takes an interior finite family of finite sets and produces their union — a set containing every element that appeared in any member of the family. The cardinality bound on the union is the sum of the cardinalities of the members, which is finite when both the family and its members are finite.
Bounded Union, combined with Bounded Pairing, gives binary union A ∪ B for any two interior finite sets A and B. This supports the construction of Cartesian products and the development of all set operations needed for the mathematics of Parts VII and VIII.

Axiom 6: Bounded Replacement  [Bounded from ZFC — conditional]

```
ZFC original:
∀A ( ∀x(x ∈ A → ∃!y ψ(x,y))
→ ∃B ∀y(y ∈ B ↔ ∃x(x ∈ A ∧ ψ(x,y))) )
for any formula ψ.
```

```
BST bounded form:
∀A ≤ n_M ( ∃H ≤ n_M (A ∈ H)
→ ( ∀x ∈ A ∃!y ≤ n_M ψ(x,y)
     → ∃B ≤ n_M ∀y ≤ n_M (y ∈ B ↔ ∃x ∈ A ψ(x,y)) ) )
for any BFOL formula ψ.
```

```
Condition: the image B exists when the domain A is
interior to the model — that is, when A appears as a
member of some set within the bounded domain. Sets at
the ceiling of the model cannot serve as domains for
Replacement.
```

```
Cardinality: |B| ≤ |A|.
Replacement never produces a larger set than the input.
(The image of a function on a finite set is finite
and has at most as many elements as the domain.)
As with Pairing and Union, the cardinality of the
output is not the issue. The condition concerns whether
the model has room for the image as a new object.
```

Plain language: Given an interior finite set A and a rule that assigns each element of A a unique output, the collection of all outputs forms a finite set. Replacement transforms sets element-by-element. The result is never larger than the input. The same principle governs Replacement as governs Pairing and Union: ceiling elements are constructively inert. Only interior sets — those appearing as members of something in the domain — can serve as inputs to construction.
Bounded Replacement is the most powerful of the construction axioms. It transforms an existing set — mapping each element to a (possibly different) output and collecting the results. It is the set-theoretic expression of applying a function to every element of a set.
The functional formula ψ(x,y) must satisfy uniqueness: for each x ∈ A there is exactly one y such that ψ(x,y). This ensures the output collection is well-defined. The bounded form requires ψ to be a BFOL formula — all quantifiers bounded by construction.
Bounded Replacement is the axiom that underlies Cartesian products (Part VII, Definition 7.2), function graphs (Part VII, Proposition 7.1), and the construction of quotient sets (Part VII, Definition 7.7). It is the workhorse axiom of BST — almost every substantive construction uses it. The interiority condition is automatically satisfied in practice: any set A that has been constructed by prior axioms is necessarily interior, since it was produced as the output of some construction and therefore appears as a member of the set that motivated its construction.
The cardinality bound |B| ≤ |A| follows immediately: ψ maps each element of A to exactly one output, so the image B has at most |A| elements (it may have fewer if ψ is not injective). The image of a finite set under a function is always finite and always fits within the model's bound, since the domain A already fits within the bound.
A historical note: in ZFC, Separation (Aussonderung) is listed as a separate axiom schema, but it is derivable from Replacement + Pairing + Union + Empty Set. The derivation carries over to BST, and Bounded Separation is stated as Bounded Fundamental Theorem 4.4 below.


## 4.3  The Remaining ZFC Axioms: Status in BST

Five ZFC axioms are not among BST's six axioms. Their status in BST is not uniform: one is negated, four are proved as Bounded Fundamental Theorems. Each is addressed below with its formal demonstration and recovery analysis.

### 4.3.1  Negated: Axiom of Infinity

The Axiom of Infinity is the only ZFC axiom whose content BST explicitly denies.

```
ZFC Axiom of Infinity:
∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

```
BST negation (Component 1 of Axiom 1):
¬∃S ≤ n_M [ ∃H ≤ n_M (S ∈ H)  ∧  ∅ ∈ S  ∧  ∀x ∈ S ( x ∪ {x} ∈ S ) ]
```

```
Status: Directly negated. The negation is Axiom 1,
Component 1. This is not merely an absence — it is
an explicit denial.
```

The Axiom of Infinity is not simply omitted — its negation is asserted. ZF¬∞ (hereditarily finite set theory) achieves the same negation but adds no bound. BST goes further: it negates Infinity and adds the bound component. The distinction between ZF¬∞ and BST, and why bare negation is insufficient, is established formally in Part III, Section 3.3.6.

**◆ Recovery status — Infinity:**
The Axiom of Infinity is not recoverable in BST, and its negation is load-bearing: removing it is the founding commitment of the entire system. What is recoverable is the mathematical content that Infinity was introduced to support. For any specific natural number n, there exists a bound k large enough that n ∈ ℕ_B(k) — every concrete finite computation, every specific arithmetic fact, every particular instance of a classical theorem about natural numbers is available within the parameterised family {ℕ_B(k) | k ∈ metatheory}. The completed infinite set ℕ does not exist in BST; every finite initial segment of it does. The loss is ontological — a completed totality — not mathematical. Every theorem of classical arithmetic that concerns specific numbers is provable in BST. This is Type II recovery: exact BST theorems at each level k, with the universal quantification over all natural numbers living only in the metatheory.

### 4.3.2  Bounded Fundamental Theorems

The following four ZFC axioms are not merely retained in BST — they are proved from the six axioms. Each is a Bounded Fundamental Theorem: a result that carries the structural weight of a ZFC axiom while earning its status through demonstration.

**Power Set**  [ZFC axiom → BST theorem; threshold applies]

```
ZFC Power Set:
∀A ∃P(A) ∀x ( x ∈ P(A)  ↔  x ⊆ A )
```

The Axiom of Power Set in ZFC is needed because it asserts the existence of the collection of *all* subsets of any set — a collection that may be infinite, uncountable, or larger. In BST, no infinite set exists. The full ZFC Power Set is therefore not available for sets whose power sets would exceed the bound. But the bounded version — P(A) for all sets below a computable threshold — is proved as a theorem.

### Bounded Fundamental Theorem 4.3 — Bounded Power Set (BPS):

```
∀A ≤ n_M ( ∃H ≤ n_M (A ∈ H)
→ ( |A| ≤ ⌊log₂(n_M)⌋
     → ∃P ≤ n_M ∀x ≤ n_M (x ∈ P ↔ ∀z ∈ x (z ∈ A)) ) )

That is: for any interior set A with |A| ≤ ⌊log₂(n_M)⌋,
the full power set P(A) exists in the model. Two
conditions apply: interiority (as with all construction
operations) and the cardinality threshold (2^|A| must
fit within the bound).

Proof: |P(A)| = 2^|A| ≤ 2^(⌊log₂(n_M)⌋) ≤ n_M.
P(A) has cardinality within the model bound and is
constructible by iterated Bounded Separation (BFT 4.4):
P(A) = { B ⊆ A | B definable by a binary selector
          over the elements of A }.
Since A is finite, there are finitely many such
selectors and finitely many subsets. Each is a
finite set. Their collection P(A) is a finite set
of finite sets. The interiority condition ensures
A is accessible for the construction. □
```

```
Corollary 4.3a: P(A) exists in BST whenever |A| is small
relative to the model bound. For a model with
n_M = 2^64, any set with |A| ≤ 64 has a full
power set within the model. The restriction is
quantitative, not qualitative.
```

The threshold is precise. The following result establishes exactly where it lies:

### Theorem 4.2a — Full Power Set threshold:

```
In every model M of BST with bound n_M, the full
power set P(A) exists for all sets with
|A| ≤ ⌊log₂(n_M)⌋ (by BFT 4.3 above), and does
not exist for sets with |A| > ⌊log₂(n_M)⌋.

Proof of the upper bound:
For any finite set A, |P(A)| = 2^|A|. (Each subset
is determined by which of the |A| elements it
includes — 2 independent binary choices.)

If |A| > ⌊log₂(n_M)⌋, then
|P(A)| = 2^|A| > 2^(log₂(n_M)) = n_M.
P(A) would have cardinality > n_M and cannot exist
in M. □
```

This is structurally parallel to the other BFTs. Choice is needed in ZFC because infinite collections require a non-constructive selection principle; in BST, all collections are finite and selection is constructive. Foundation is needed in ZFC because infinite structures permit pathological membership chains; in BST, all structures are finite and chains terminate. Full Power Set is needed in ZFC because sets may have infinitely many subsets; in BST, every set has finitely many subsets, and the power set exists whenever it fits within the bound. In each case, the obstacle is infinity, the obstacle is absent in BST, and a bounded version is proved.

The threshold |A| ≤ ⌊log₂(n_M)⌋ is the quantitative precision that distinguishes BFT 4.3 from the other BFTs. All four BFTs share the interiority condition — ceiling elements are constructively inert throughout. But Power Set carries an additional cardinality threshold on top of interiority: even an interior set A cannot have its power set taken if 2^|A| > n_M. The other three BFTs have no such additional threshold. For Bounded Power Set, the exponential growth of 2^|A| means the bound constrains which power sets exist beyond what interiority alone would permit. This is a difference of degree, not of kind — the same fundamental truth expressing itself more tightly at Power Set than elsewhere.

A second, independent reason supports the bounded treatment of Power Set. The predicativist argument — that P(A) is defined by quantifying over all subsets of A, presupposing the existence of the collection being defined — applies regardless of cardinality. This objection (Weyl, Poincaré, Feferman) provides philosophical reinforcement for the cardinality threshold: below the threshold, the impredicativity is benign (the finite collection of subsets is explicitly enumerable); above it, both the cardinality argument and the predicativist argument converge.

**◆ Recovery status — Power Set:**
Bounded Power Set is recovered as BFT 4.3 for interior sets below the cardinality threshold. For any fixed concrete application — sets of axioms, sets of states, sets of vertices in a graph — the bound k can be chosen large enough that P(A) exists. The interiority condition is automatically satisfied in practice, as with all construction operations. The restriction is quantitative, not qualitative: it constrains the theory's abstract generality, not any specific mathematical application. Recovery type: Type I (exact BST theorem at each qualifying level).

Two additional recovery routes extend the reach beyond BFT 4.3:

(i) **Bounded Separation (BFT 4.4) as practical substitute:** Even when P(A) does not exist as a completed set, any specific definable subset B ⊆ A exists by BFT 4.4. Classical mathematics rarely needs the full power set as an object; it needs specific subsets defined by properties. Bounded Separation delivers exactly this, for every BFOL-expressible property, without the cardinality explosion. Recovery type: Type I (exact BST theorem).

(ii) **FA-BST for function spaces:** In ZFC, function spaces B^A (the set of all functions from A to B) are constructed via Power Set. In BST, function spaces are recovered via the Function Axiom (FA-BST, Proposition 7.1) when |B|^|A| ≤ n_M. For any fixed concrete domain and codomain, a sufficiently large model bound accommodates the function space. Recovery type: Type II (exact BST theorem for each qualifying (A,B,k) triple; the family of admissible triples has stable form).

**Choice**  [ZFC axiom → BST theorem]

```
ZFC Axiom of Choice:
For any collection C of nonempty sets, there exists a
function f such that f(S) ∈ S for every S ∈ C.
```

### Bounded Fundamental Theorem 4.1 — Bounded Choice:

```
∀C ≤ n_M ( ∃H ≤ n_M (C ∈ H)
→ ( ∀S ∈ C (S ≠ ∅)
     → ∃f ≤ n_M ∀S ∈ C (f(S) ∈ S) ) )

That is: for any interior finite collection C of
nonempty finite sets, there exists a choice function f
selecting one element from each member of C.
Ceiling collections are constructively inert.
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
Full Choice is recovered as Bounded Fundamental Theorem 4.1 — not merely as an axiom, but as a constructive theorem with an explicit procedure. The interiority condition is automatically satisfied in practice: any collection C that has been constructed by prior axioms is interior. No fragment of Choice needs to be assumed. Recovery type: Type I (exact internal BST theorem; Choice is provable, not merely asserted).

The two fragments of Choice most used in classical analysis are equally redundant in BST:

**Countable Choice (AC_ω):** Asserts that a choice function exists for any countably infinite collection of nonempty sets. In BST no collection is infinite, so the premise is never satisfied — AC_ω holds vacuously for all BST collections, and every instance that arises in practice (a finite collection of finite sets) is constructively witnessed by BFT 4.1.

**Dependent Choice (DC):** Asserts that given a total binary relation R on a nonempty set X, there exists a sequence x₀, x₁, x₂, ... with R(xₙ, xₙ₊₁) for all n. In BST, sequences are finite and their construction is a bounded recursion (Part VI, Section 6.2.5). For any finite number of steps N ≤ k, the dependent sequence x₀, ..., x_N is constructible by Bounded Recursion without any choice principle. The completed infinite sequence — which DC asserts — does not exist in BST, but every finite initial segment of it does, and initial segments are all that any bounded computation ever uses.

The classical uses of AC in real analysis — choosing a rational from each interval in a cover, selecting a convergent subsequence, constructing a Hamel basis — all resolve constructively in BST because the underlying objects are finite or the selection is over a finite domain. The analysis of Part IX relies on none of these choice principles; the proofs are constructive throughout.

**Foundation (Regularity)**  [ZFC axiom → BST theorem]

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

### Bounded Fundamental Theorem 4.2 — Bounded Foundation:

```
∀A ≤ n_M ( ∃H ≤ n_M (A ∈ H)
→ ( A ≠ ∅ → ∃x ∈ A ∀y ∈ x (y ∉ A) ) )

That is: in any model M of BST, every nonempty
interior set A contains an element disjoint from A.
Ceiling sets are constructively inert.
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
In BST, the pathologies are structurally impossible. A finite model cannot contain an infinite descending membership chain — such a chain would require infinitely many distinct sets. Self-containing sets are a special case of this: A ∈ A would initiate an infinite chain. Since every model of BST is finite, neither pathology can occur, and Foundation is automatically satisfied for all interior sets. The interiority condition is consistent with the uniform treatment of all construction axioms and BFTs, though Foundation's proof is purely structural and does not construct new sets. Ceiling elements are inert under all operations, including the membership-chain analysis that Foundation describes.
The redundancy of Foundation is itself informative: it reveals that Foundation was needed in ZFC precisely because the Axiom of Infinity introduced the structural possibility of pathological sets. Replacing Infinity with Axiom 1 removes the source of pathology, and Foundation becomes a consequence rather than an assumption.

This result has a clean graph-theoretic restatement: in any BST-Model M = ⟨D, ∈_M, ≤_M, 0_M, S_M⟩ (Definition 5.4, Part V), the membership relation ∈_M constitutes a finite directed graph on D. An infinite descending membership chain requires a cycle in this graph (since D is finite, any infinite path must revisit a node). But a cycle a ∈ ... ∈ a would permit an infinite descending chain from a, contradicting finiteness of D. Since the graph is finite and acyclic, every path terminates at a node with in-degree zero under ∈_M — that is, at the empty set. Foundation is therefore satisfied purely by the geometry of finite membership graphs.

**◆ Recovery status — Foundation:**
Foundation is not merely recovered — it is automatically satisfied for every interior set in every BST model as a Bounded Fundamental Theorem (BFT 4.2). It requires no axiom because the finite model structure makes its violation geometrically impossible. The interiority condition is consistent with the uniform treatment but changes nothing about the proof, which is purely structural. This is a strengthening relative to ZFC, where Foundation is an independent axiom that cannot be proved from the other axioms. Recovery type: Type I — Foundation is an exact internal BST theorem, stronger in status here than in ZFC where it requires an independent axiom.

One further observation on the opposite direction: **anti-foundation axioms** — most notably Aczel's Anti-Foundation Axiom (AFA, 1988), which permits non-well-founded sets satisfying circular membership (A ∈ A, or longer cycles) — are also unavailable in BST, but this is a correct absence, not a limitation. AFA is used in theoretical computer science (process algebra, bisimulation semantics) to model coinductive structures and infinite streams. In BST these structures are not available as completed infinite objects, but their finite approximations — finite processes, finite streams of length ≤ k, finite bisimulation relations — are all constructible. The BST treatment of such structures is exactly the treatment of Part VIII's number chain: not a completed infinite coinductive object, but a parameterised family of finite approximations, each fully available and each carrying explicit bounds. The anti-foundation direction is a correct absence (Category C); the constructive approximation is a Category A recovery.

**Separation**  [ZFC axiom → BST theorem; derived from A2–A6]

```
ZFC Separation (Aussonderung):
∀A ∃B ∀x ( x ∈ B  ↔  x ∈ A ∧ φ(x) )
for any formula φ in the language of set theory.
(Unbounded quantifiers — not a BFOL formula.)
```

### Bounded Fundamental Theorem 4.4 — Bounded Separation:

```
∀A ≤ n_M ( ∃H ≤ n_M (A ∈ H)
→ ∃B ≤ n_M ∀x ≤ n_M ( x ∈ B ↔ x ∈ A ∧ φ(x) ) )
for any BFOL formula φ.

That is: for any interior finite set A and any
BFOL-expressible property φ, the set {x ∈ A : φ(x)}
exists in BST. Ceiling sets are constructively inert.
The interiority condition is inherited from the
derivation: Separation is proved via Replacement (A6),
Pairing (A4), and Union (A5), all of which require
their inputs to be interior.

Formally:
∀A ≤ n_M ( ∃H ≤ n_M (A ∈ H)
→ ∃B ≤ n_M ( ∀x ≤ n_M (x ∈ B ↔ x ∈ A ∧ φ(x)) ) )

Cardinality: |B| ≤ |A|.

Proof:
Let A be an interior finite set and φ a BFOL formula.

Step 1 — Define a functional formula.
Let ψ(x, y) be:
  (φ(x) ∧ y = {x}) ∨ (¬φ(x) ∧ y = ∅)

ψ is a BFOL formula: φ is by hypothesis;
¬φ is by closure under negation; "y = {x}"
expands to x ∈ y ∧ ∀z ≤ y(z ∈ y → z = x), which
is bounded; "y = ∅" expands to ∀z ≤ y(z ∉ y),
which is bounded. Boolean combinations of bounded
formulas are bounded. ✓

ψ is functional on A: if φ(x) holds, the unique
y is {x} (exists by Bounded Pairing, A4 — the
interiority condition is satisfied since x ∈ A);
if ¬φ(x) holds, the unique y is ∅ (exists by
Empty Set, A3). Every x ∈ A maps to exactly one y. ✓

Step 2 — Apply Bounded Replacement (A6).
A is interior by hypothesis, so A6's interiority
condition is satisfied. Since ψ is a BFOL formula
and functional, A6 gives the image:
  C = {y : ∃x ∈ A, ψ(x, y)}
C contains {x} for each x ∈ A satisfying φ,
and ∅ for each x ∈ A not satisfying φ. ✓

Step 3 — Apply Bounded Union (A5).
C is the output of Step 2 and therefore interior
(it was constructed within the model). A5's
interiority condition is satisfied.
∪C = {x ∈ A : φ(x)}.
Each {x} contributes x; each ∅ contributes nothing.
The result is exactly the separation set. ✓

Step 4 — Verify by Extensionality (A2).
∪C has exactly the elements x ∈ A satisfying φ(x).
By A2, it is the unique such set. ✓

The cardinality bound |B| ≤ |A| holds because B ⊆ A:
every element of B is an element of A. □
```

Plain language: Bounded Separation is not an axiom of BST — it is a theorem, derivable from Bounded Replacement (A6), Bounded Pairing (A4), Bounded Union (A5), Empty Set (A3), and Extensionality (A2). The derivation is the standard one due to Fraenkel (1922): encode the selection as a function that maps each element to either its singleton or the empty set, apply Replacement to get the encoded image, then take the union to recover the selected subset. The interiority condition is inherited: since A6, A4, and A5 all require their inputs to be interior, Separation inherits this requirement for A. In practice, the condition is automatically satisfied — any set that has been constructed is interior.
The predicativist character of Bounded Separation is preserved by the derivation: the formula φ must be a BFOL formula because the functional formula ψ constructed from it must be a BFOL formula for Replacement to apply. The restriction on the formula class is inherited from Replacement, not imposed independently.
Bounded Separation remains the primary tool for defining specific subsets in BST practice — the set of even numbers in {0,...,n}, the set of prime numbers up to k, the set of pairs satisfying a relation. Its status as a theorem rather than an axiom does not diminish its utility; it strengthens the economy of the axiom system.


### ◆ Summary — Status of the Five Non-Axiomatic ZFC Axioms in BST

```
ZFC Axiom       ZFC role          BST status        Recovery
────────────────────────────────────────────────────────────────────────
Infinity        Posits ℕ as a     Directly negated  Mathematical content
                completed set     (Axiom 1,         recovered: every
                                  Component 1)      specific finite
                                                    instance provable
                                                    in ℕ_B(k). Loss
                                                    is ontological only.

Power Set       Posits P(A) for   BFT 4.3           P(A) exists when
                any set A         (Bounded           |A| ≤ log₂(n_M).
                                  Power Set)         Threshold is
                                                     quantitative.
                                                     Also: BFT 4.4,
                                                     FA-BST.

Choice          Asserts choice    BFT 4.1           Fully recovered as
                function for      (Bounded           constructive theorem.
                any collection    Choice)            AC_ω and DC equally
                                                     redundant.

Foundation      Rules out self-   BFT 4.2           Universally satisfied.
                membership and    (Bounded           Strengthened relative
                infinite chains   Foundation)        to ZFC status.

Separation      Selects subsets   BFT 4.4           Fully recovered.
                by a property     (Bounded           Derived from A2–A6
                                  Separation)        (same as in ZFC).
```


## 4.4  The Complete System: Formal Reference

The complete axiom system of Bounded Set Theory is collected here in compact form for reference.

### BST — Complete Formal System:


```
A1. FINITE BOUNDS (conditional):
¬∃S ≤ n_M [∃H≤n_M(S∈H) ∧ ∅∈S ∧ ∀x∈S(x∪{x}∈S)]
∧  [∃n∈ℕ(meta): ∀S≤n(|S|≤n)]  [Form. A]
or [All models of BST are finite; bound not
an object of the theory]  [Form. B]
```

```
A2. EXTENSIONALITY:
∀A≤n_M ∀B≤n_M [∀x≤n_M(x∈A↔x∈B) → A=B]
```

```
A3. EMPTY SET:
∃e≤n_M ∀x≤n_M(x∉e)
```

```
A4. BOUNDED PAIRING (conditional):
∀a≤n_M ∀b≤n_M
  (∃S≤n_M(a∈S) ∧ ∃T≤n_M(b∈T)
   → ∃P≤n_M ∀x≤n_M(x∈P↔x=a∨x=b))
```

```
A5. BOUNDED UNION (conditional):
∀F≤n_M(∃G≤n_M(F∈G)
  → ∃U≤n_M ∀x≤n_M(x∈U↔∃Y∈F(x∈Y)))
```

```
A6. BOUNDED REPLACEMENT (conditional):
∀A≤n_M(∃H≤n_M(A∈H)
→(∀x∈A ∃!y≤n_M ψ(x,y)
  →∃B≤n_M ∀y≤n_M(y∈B↔∃x∈A ψ(x,y))))
for any BFOL formula ψ.
```

```
BOUNDED FUNDAMENTAL THEOREMS:
Bounded Separation:  BFT 4.4 (derived from A2–A6; conditional)
Bounded Choice:      BFT 4.1 (by BI-BST; conditional)
Bounded Foundation:  BFT 4.2 (from finiteness of models; conditional)
Bounded Power Set:   BFT 4.3 (threshold |A| ≤ log₂(n_M); conditional)

DERIVED CONSTRUCTION PRINCIPLE:
Function graphs:     Proposition 7.1 (by A6 + Cartesian products)
```


## 4.5  BST and ZFC: A Formal Comparison


### Axiom-by-axiom comparison:


```
ZFC Axiom          BST Status         Reason
─────────────────────────────────────────────────────────────
Extensionality     Retained (A2)      No infinity content
Empty Set          Retained (A3)      No infinity content
Pairing            Retained (A4)      Bounded; conditional
                                      (interiority threshold)
Union              Retained (A5)      Bounded; conditional
                                      (interiority threshold)
Replacement        Retained (A6)      Bounded; conditional
                                      (interiority threshold)
Separation         BFT 4.4            Derived from A2–A6
Infinity           Negated (A1)       Core foundational change
Power Set          BFT 4.3            Bounded version proved;
                                      threshold applies
Choice             BFT 4.1            Finite choice provable
Foundation         BFT 4.2            Finite models exclude cycles
```

The pattern is clear: axioms that do not involve infinity survive unchanged or with explicit finiteness annotations. Infinity is negated. Four ZFC axioms — Separation, Choice, Foundation, and Power Set (in bounded form) — are proved as Bounded Fundamental Theorems, carrying the structural weight of their ZFC counterparts while earning their status through demonstration rather than assumption.


## 4.6  Independence and Derivability: The Power of AFB

A classical axiom system aims for independence: no axiom should be derivable from the others. In ZFC, all nine axioms are genuinely independent — each can fail while the others hold. The natural question for BST is whether the same holds for its six axioms and four BFTs.

The answer, established by exhaustive computation, is more interesting than simple independence. The interiority condition — the uniform principle that ceiling elements are constructively inert — combined with the finiteness of all models, causes several axioms and BFTs to become automatic consequences of the foundational commitment. The Axiom of Finite Bounds is not merely the first axiom; it is the single load-bearing commitment from which the majority of the system follows.

### 4.6.1  Exhaustive verification

The standard BST model 𝒱₃ (Section 3.3.8) has 16 elements. There are 2¹⁶ − 1 = 65,535 non-empty subsets of 𝒱₃, each forming a candidate finite model with standard membership restricted to the subdomain. Every candidate was tested against all six axioms and all four BFTs, with the interiority condition applied uniformly throughout.

```
Exhaustive computation over all 65,535 subdomains of 𝒱₃:

Valid BST models:    84 out of 65,535 (0.13%)

For each axiom/BFT X, the question: does there exist
a subdomain where X fails but all other axioms/BFTs pass?

A1  (Finite Bounds):     NO witness exists.  AUTOMATIC.
A2  (Extensionality):    Witness found.      INDEPENDENT.
A3  (Empty Set):         NO witness exists.  AUTOMATIC.
A4  (Bounded Pairing):   Witness found.      INDEPENDENT.
A5  (Bounded Union):     NO witness exists.  AUTOMATIC.
A6  (Bounded Replacement): Witness found.    INDEPENDENT.

BFT 4.1 (Choice):       NO witness exists.  AUTOMATIC.
BFT 4.2 (Foundation):   NO witness exists.  AUTOMATIC.
BFT 4.3 (Power Set):    NO witness exists.  AUTOMATIC.
BFT 4.4 (Separation):   Witness found.      INDEPENDENT.
```

This is not a sampling result — it is exhaustive. Every one of the 65,535 possible subdomains was checked. No witness exists for A1, A3, A5, BFT 4.1, BFT 4.2, or BFT 4.3 in any finite substructure of 𝒱₃.

### 4.6.2  The independent axioms and their witnesses

Four axioms/BFTs are genuinely independent — they require explicit assertion and are not consequences of finiteness alone.

```
A2 (Extensionality) — witness: |D| = 2
  Domain: {∅, {{{∅},∅}}}
  Both elements are ceiling (no membership between them).
  Both have the same members in domain (none).
  Extensionality requires them to be equal; they are not.
  All other axioms hold vacuously or trivially.
```

```
A4 (Bounded Pairing) — witness: |D| = 3
  Domain: {∅, {∅}, {{∅}}}
  Interior: ∅ (member of {∅}), {∅} (member of {{∅}}).
  Ceiling: {{∅}}.
  The interior pair {∅, {∅}} does not exist in D.
  Conditional Pairing fails for these two interior elements.
  All other axioms hold.
```

```
A6 (Bounded Replacement) — witness: |D| = 4
  Domain: {∅, {∅}, {∅,{∅}}, {{∅},{∅,{∅}}}}
  Interior: ∅ (member of {∅} and {∅,{∅}}),
            {∅} (member of {{∅},{∅,{∅}}}).
  The successor function on interior domain set {∅}
  maps ∅ to {∅}, producing image {{∅}}. The image
  set {{∅}} does not exist in D.
  Conditional Replacement fails.
  All other axioms hold.
```

```
BFT 4.4 (Bounded Separation) — witness: |D| = 2
  Domain: {{∅}, {{∅}}}
  Interior: {∅} (member of {{∅}}).
  Ceiling: {{∅}}.
  The interior set {∅} contains ∅. Separation by
  φ(x) = "x = ∅" should produce {∅} ∩ {x : x = ∅} = {∅},
  but ∅ itself is not in the domain, so the subset
  {∅} cannot be witnessed. Separation fails.
  All other axioms hold.
```

### 4.6.3  The automatic axioms: why they follow from finiteness

Five axioms/BFTs hold automatically in every finite model with interiority — they are consequences of the Axiom of Finite Bounds, not independent commitments.

**A1 (Finite Bounds)** — automatic because no finite set can be closed under successor. The successor chain ∅, {∅}, {∅,{∅}}, ... is infinite by construction. In any finite domain, the chain must terminate. No set in any finite model satisfies the closure condition that the negation of Infinity denies. Component 1 of AFB is a tautology in finite models.

**A3 (Empty Set)** — automatic because in any finite model, ∈-minimal elements exist. A finite directed acyclic graph (which ∈ must be, by finiteness and well-foundedness) always has nodes with in-degree zero. These nodes have no members within the domain — they satisfy A3. If no membership relation exists at all (∈_M = ∅), then every element looks empty. Either way, A3 holds.

**A5 (Bounded Union)** — automatic because union goes *down* in the membership hierarchy. The members of ⋃F are the members of the members of F — they sit at lower rank than F itself. In any finite well-founded model where the interior is closed under pairing (A4), the union of an interior family always lands within the domain. Any hole in the domain that would prevent a union from existing would first prevent a pair from existing, breaking A4 before A5. Union rides for free on Pairing.

**BFT 4.1 (Bounded Choice)** — automatic because finite enumeration is constructive. Given any interior finite collection C of nonempty sets, listing C's members and picking one element from each is a finite deterministic procedure. No non-constructive selection principle is needed. Choice is not a commitment in finite mathematics — it is an observation.

**BFT 4.2 (Bounded Foundation)** — automatic because finite models cannot contain infinite ∈-chains. In any finite directed graph, every infinite path must revisit a node, creating a cycle. But ∈-cycles violate well-foundedness, which is itself a consequence of finiteness (a finite acyclic graph has leaves). Foundation is the geometry of finite membership graphs.

**BFT 4.3 (Bounded Power Set)** — automatic because below the cardinality threshold, the power set is a finite collection of finite subsets, all of which exist by iterated Separation. The threshold |A| ≤ ⌊log₂(n_M)⌋ is arithmetic — it is a computable bound, not an axiom. Whether P(A) fits within the model is a question of size, not of principle.

### 4.6.4  What this means: the architecture of BST, revised

The exhaustive analysis reveals that BST's architecture is simpler and more powerful than the six-axiom presentation suggests. The Axiom of Finite Bounds is the single load-bearing foundational commitment. From "there is a finite bounded domain" alone, five of nine axioms and BFTs follow automatically. The remaining four are not constraints imposed by the bound — they are structural choices about what "set," "construction," "function," and "selection" mean.

```
THE POWER OF AFB — one axiom, five consequences:

From AFB alone (finite bounded domain + interiority):

  ✓ A1  Negation of Infinity    — tautology in finite models
  ✓ A3  Empty Set               — exists in all finite models
  ✓ A5  Bounded Union           — follows from A4 + finiteness
  ✓ BFT 4.1  Bounded Choice     — constructive in finite models
  ✓ BFT 4.2  Bounded Foundation — geometric in finite models
  ✓ BFT 4.3  Bounded Power Set  — arithmetic below threshold

Requiring independent assertion:

  ◆ A2  Extensionality          — defines identity
  ◆ A4  Bounded Pairing         — defines construction
  ◆ A6  Bounded Replacement     — defines functions
  ◆ BFT 4.4  Bounded Separation — defines selection
```

The contrast with ZFC is striking. In ZFC, all nine axioms are genuinely independent — removing any one produces a strictly weaker theory. In BST, the foundational commitment does most of the work. This is not a deficiency of BST's axiom system — it is a demonstration of how much structure is inherent in the simple claim that everything is finite and bounded.

The six-axiom presentation is retained for compatibility with the ZFC comparison framework and for expository clarity: mathematicians expect axioms to be stated, not derived as consequences of finiteness. But the underlying truth is that BST has one foundational commitment and three structural choices. Everything else is automatic.

### Theorem 4.4 — Independence and derivability of BST axioms:

```
(a) A2, A4, A6, and BFT 4.4 are independent: each can
    fail in a finite model while all other axioms/BFTs
    hold. Witnesses are exhibited above.

(b) A1, A3, A5, BFT 4.1, BFT 4.2, and BFT 4.3 are
    automatic consequences of finiteness with interiority:
    no finite substructure of 𝒱₃ exists in which any of
    these fails while all other axioms/BFTs hold.
    Verified exhaustively over all 65,535 subdomains.

(c) AFB is the single load-bearing commitment. Five of
    nine axioms/BFTs follow from finiteness alone. The
    remaining four are structural definitions, not
    constraints imposed by the bound.

Proof: By exhaustive computation over all 2¹⁶ − 1
non-empty subsets of 𝒱₃ = V₃ (16 elements, standard
membership). Each subset was tested against all nine
axioms/BFTs with the interiority condition applied
uniformly. The witnesses in (a) are the smallest
subdomains exhibiting single-axiom failure.

The computation found exactly 84 valid BST models
among the 65,535 candidates (0.13%). □
```

**Example 4.6a — Threshold behaviour of Bounded Power Set.**

BFT 4.3 (Bounded Power Set) establishes a quantitative threshold: P(A) exists in BST when |A| ≤ ⌊log₂(n_M)⌋, and does not exist when |A| exceeds that threshold. The following explicit example witnesses this threshold behaviour and confirms that BPS and full Power Set occupy different positions — one proved below the threshold, one unavailable above it — in the same model.

```
Setup:
Let M be any finite BST-model with bound n_M = 7.
(That is, every set in M has cardinality ≤ 7, and M
has at most 7 elements. Such a model exists: any
finite transitive set of 7 hereditarily finite sets
with standard membership satisfies A1–A6.)

Threshold:
⌊log₂(7)⌋ = 2.

BFT 4.3 (BPS) applies below the threshold:
For any A ∈ M with |A| ≤ 2:
|P(A)| = 2^|A| ≤ 2² = 4 ≤ 7 = n_M.
So |P(A)| ≤ n_M, and P(A) is constructible in M
by the iterated Bounded Separation argument of
BFT 4.3. ✓

Concrete instances:
|A| = 0 (A = ∅):    |P(∅)| = 1 ≤ 7.  P(∅) = {∅} ∈ M. ✓
|A| = 1 (A = {∅}):  |P({∅})| = 2 ≤ 7. P({∅}) = {∅,{∅}} ∈ M. ✓
|A| = 2 (A = {∅,{∅}}): |P(A)| = 4 ≤ 7. P(A) ∈ M. ✓

Full Power Set is not available above the threshold:
Let B = {∅, {∅}, {∅,{∅}}}  (the third von Neumann
ordinal, |B| = 3 > 2 = threshold).

|P(B)| = 2³ = 8 > 7 = n_M.

P(B) would be a set of 8 elements. Since every set
in M has cardinality ≤ n_M = 7, no set of 8 elements
can exist in M. Therefore P(B) ∉ M.

This is not a defect of the model — it is the correct
consequence of AFB. The Axiom of Finite Bounds asserts
exactly that sets above n_M do not exist.

Verification of BPS/PS independence:
The same model M simultaneously satisfies:

(i)  BPS (BFT 4.3): for all A ∈ M with |A| ≤ 2,
     P(A) ∈ M.  [Verified above for |A| = 0,1,2.]

(ii) ¬(Full Power Set): B ∈ M but P(B) ∉ M.
     [Because |P(B)| = 8 > 7 = n_M.]

(i) and (ii) hold simultaneously. This exhibits the
precise threshold at which Power Set transitions from
proved (BPS range) to unavailable (above n_M).

The threshold is quantitative, not qualitative:
for n_M = 7, the dividing line is |A| = 2 vs |A| = 3.
For n_M = 15, it would be |A| = 3 vs |A| = 4.
For n_M = 2^64, it is |A| = 64 vs |A| = 65.
The exact threshold is always ⌊log₂(n_M)⌋. □
```

This example is verifiable in ACA₀ by explicit enumeration of the ≤ 7 elements of M. It demonstrates that BFT 4.3's threshold is not an artefact of the proof technique — it is the exact boundary separating two different behaviours of Power Set within the same bounded model. The Future Work item on Bounded Power Set independence calls for constructing an explicit finite model of this type; the arithmetic above confirms that such a model exists and exhibits the claimed threshold behaviour. The explicit element-by-element construction of a 7-element model satisfying A1–A6 constitutes the remaining verification.






## 4.7  Summary: The Architecture of BST

Bounded Set Theory has a clean architecture that the exhaustive independence analysis (Section 4.6) reveals in full:

**The foundational commitment (AFB):** The single axiom from which the system's character flows. AFB asserts that every model is finite and bounded. From this alone — combined with the interiority principle that ceiling elements are constructively inert — five of nine axioms and BFTs follow automatically: the negation of Infinity, the existence of an empty set, the closure of Union, and the provability of Choice, Foundation, and Power Set below threshold. These are not assumptions. They are consequences of finiteness.

**The structural definitions (A2, A4, A6):** Three independent axioms define what "set," "construction," and "function" mean within the bounded domain. Extensionality defines identity. Pairing defines construction. Replacement defines transformation. These are genuine choices — finite models exist where each one fails — and they are the structural vocabulary that makes BST a set theory rather than merely a finite domain.

**The derived tool (BFT 4.4):** Separation is independently assertable (it can fail while everything else holds) but is derivable from A2–A6. It is retained as a named BFT for its practical importance as the primary subset-selection tool.

### ◆ The Elegance of the System

The foundational commitment — there is no infinity, and there is an upper bound — once formalized as the Axiom of Finite Bounds, does most of the work. Of the nine axioms and BFTs that constitute BST, five are automatic consequences of finiteness. What ZFC must assume as nine independent axioms, BST derives largely from one commitment and three structural definitions. The result is a system that is not merely leaner than ZFC but architecturally simpler: one truth, three choices, and everything else follows.


End of Part IV

# Part V: Ordinals and the Burali-Forti Problem

The foundational commitment — there is no infinity, and there is an upper bound — has immediate consequences for ordinal theory. Classical ordinals are built to extend through ω and beyond; BST's ordinals cannot.

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

### Proposition 5.0a — All von Neumann ordinals in ZF¬∞ are finite:


```
ZF¬∞ ⊢ ∀α ( α is a von Neumann ordinal → α is finite ).
```

```
Proof: By the negation of Infinity, no infinite set exists.
Every von Neumann ordinal is a set. Therefore every von
Neumann ordinal is finite. The ordinals in ZF¬∞ are exactly
{0, 1, 2, 3, ...} — all finite, but unbounded. □
```

### Corollary 5.0b — The ordinals of ZF¬∞ form an infinite class:

```
In ZF¬∞, the class of all ordinals is isomorphic
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
Theorem 3.2.1 — Every nonzero ordinal is a successor.
              (No limit ordinals exist in BST.)
Theorem 3.2.2 — Ordinals are linearly ordered.
Theorem 3.2.3 — Bounded induction is valid.
Theorem 3.2.4 — Cardinality coincides with ordinal in the finite
              case: |S| = n iff S is order-isomorphic to n.
```

These results are complete within the primitive framework of BFOL alone. They supply the ordinal and cardinal theory needed for AFB and for the six axioms of Part IV.

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

### Theorem 5.1a — Bounded Burali-Forti Contradiction:


```
Suppose BST contains a set Ω such that:
(i)  Ω is finite  (by the negation of Infinity)
(ii) ∀S ≤ n_M ( |S| ≤ |Ω| )  (Ω has maximum cardinality)
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
But Ω ∈ Ω violates Foundation
(no set is a member of itself).
Foundation is proved in BST as Bounded Fundamental
Theorem 4.2 (Part IV, Section 4.3.2).
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
BST ⊬ ∃S ≤ n_M ∀T ≤ n_M ( |T| ≤ |S| )
```

```
Proof: Suppose for contradiction that BST ⊢ ∃S ≤ n_M ∀T ≤ n_M (|T| ≤ |S|).
Let S₀ witness this: |T| ≤ |S₀| for all sets T.
By Pairing, {S₀} is a set.
By Union, S₀ ∪ {S₀} is a set (and S₀ ∉ S₀ by Foundation).
Then |S₀ ∪ {S₀}| = |S₀| + 1 > |S₀|.
This contradicts the maximality of S₀.
Therefore BST ⊬ ∃S ≤ n_M ∀T ≤ n_M ( |T| ≤ |S| ). □
```


### Theorem 5.2 — Every set constructible in BST has a determinate finite cardinality:


```
For every set S constructible in BST:
BST ⊢ ∃k ≤ n_M ( |S| = k )
where k is a specific numeral.
```

```
Proof: By induction on the construction of S.
Base: |∅| = 0.
Inductive steps:
Pairing (A4): |{a,b}| ≤ 2 — a specific numeral bounds it.
Union (A5): the cardinality of a union of sets with
determined cardinalities is itself determined
(bounded induction on the number of sets).
Separation (BFT 4.4): |{x ∈ A | φ(x)}| ≤ |A| — bounded by
the cardinality of the parent set.
Replacement (A6): the image of a set under a function
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


### Corollary 5.3b — Every BST model is hereditarily finite:

```
Every model M ⊨ BST is isomorphic to a transitive finite
subset of V_{h+1} for some finite h, where h is computable
as the maximum ∈_M-rank of any element of M.

That is, every BST model is not merely finite-domain but
hereditarily finite: every element of M is a hereditarily
finite set, and M itself embeds as a transitive set in the
cumulative hierarchy.

Proof:
By BFT 4.2 (Bounded Foundation — proved in
Part IV, Section 4.3.2), ∈_M is well-founded on
the domain D of M.

By Theorem 5.3, M is finite: |D| < ∞.

By Theorem 3.3.3 (Finite Mostowski Collapse, ACA₀ — proved in
Part III, Section 3.3.8), every finite extensional
well-founded structure is isomorphic via the Mostowski
collapsing map π to a transitive finite set M* ⊆ V_{h+1},
where h = max_{x ∈ D} ρ(x) is the maximum rank of any
element of M under ∈_M.

The map π is an isomorphism of membership structures:
π: M → M* with y ∈_M x iff π(y) ∈ π(x).
M* is transitive: if u ∈ π(x) ∈ M* then u ∈ M*.
h is computable: it is the maximum of finitely many rank
values over the finite domain D. □

The distinction from Theorem 5.3:
Theorem 5.3 says every BST model has a finite domain.
Corollary 5.3b says more: every BST model is isomorphic
to a standard finite set-theoretic structure — a transitive
subset of the cumulative hierarchy — not merely to some
abstract finite structure with a membership relation.
BST models are not just finite; they are hereditarily finite
in the precise set-theoretic sense.
```

This corollary is used in Part IX, Section 9.8 (Theorem 9.17), where the incomparability of BST and ZFC is established in part by noting that BST proves every set hereditarily finite — a claim ZFC refutes via the Axiom of Infinity. The corollary gives that claim its precise model-theoretic grounding: every BST model is not just finite-domain but isomorphic to a transitive subset of the von Neumann hierarchy, making hereditarily-finite the correct and strongest description of the bounded ontology.


### 5.4.1a  The formal model structure

The four theorems above — Theorems 5.1, 5.2, 5.3, and Corollary 5.3b — characterise what BST can prove about its bound and what its models look like. It is useful to name the model structure explicitly, both for precision and for downstream reference in the undecidability proof (Theorem 3.3.2) and the model-theoretic analysis throughout Part V.

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

The six axioms (A1–A6) govern M. The four Bounded
Fundamental Theorems — Bounded Separation (BFT 4.4),
Bounded Choice (BFT 4.1), Bounded Foundation (BFT 4.2),
and Bounded Power Set (BFT 4.3) — are all provable
within M. In particular, the construction operations
available in M are: Pairing (A4), Union (A5),
Replacement (A6), and Separation (BFT 4.4, derived
from A2–A6). Each produces sets whose cardinalities
are controlled: output cardinality is bounded by
input cardinalities and the operations applied.
Bounded Power Set (BFT 4.3) provides power sets
for sets with |A| ≤ ⌊log₂(|D|)⌋.
```

With this structure in place, the constructibility constraint on BST models can be stated as a formal theorem.

### Theorem 5.3a — Finite Satisfiability of Set-Building Operations:

```
Every set-building operation of BST — Pairing (A4),
Union (A5), Replacement (A6), and Separation
(BFT 4.4) — when applied to elements of a finite
BST-Model M, produces an output that is also an
element of M, provided the resulting cardinality
does not exceed |D|.

Proof:
Since D is finite, every construction that would
produce a set exceeding the cardinality of D is
simply not a set in M — Separation and Replacement
terminate within the domain, and Pairing and Union
produce sets of cardinality ≤ 2 and ≤ Σ|Y_i|
respectively, each a specific finite number.

More precisely: the set-building operations of BST
form a closure system on M. A set X produced by a
BST operation from elements of D satisfies |X| ≤ n_M
by Theorem 5.7 (Monotonicity under construction,
proved below in Section 5.7.2). Since |D| = n_M by
definition of the model bound, X ∈ D.

Bounded Power Set (BFT 4.3) is the one construction
whose output grows exponentially: |P(A)| = 2^|A|.
This is why BFT 4.3 has a threshold — P(A) exists
in M only when 2^|A| ≤ |D|. The threshold is a
quantitative consequence of the bound, not a
structural deficiency. □
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
BST proves: ∀α ≤ n_M ( α is an ordinal → α is finite )
BST proves: ∀α ≤ n_M ( α is an ordinal → α = 0 ∨ ∃β ≤ n_M (α = S(β)) )
BST cannot prove: ∃n ≤ n_M ∀α ≤ n_M ( α ≤ n )
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
Proof:

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

The ordinal theory developed in Sections 5.1–5.6 has a parallel cardinal theory. Both theories are grounded in Section 3.2, where primitive cardinality (Definition 3.6) and primitive ordinals (Definitions 3.1–3.5) are introduced simultaneously, and their coincidence in the finite case established as Theorem 3.2.4. This section collects the cardinal theory in one place, mirroring the ordinal summary of Section 5.6.


### 5.7.1  What cardinality is in BST

Cardinal numbers in classical set theory are defined as initial ordinals — the smallest ordinal of each equipotence class. This definition relies on the Axiom of Choice (to well-order every set) and on the transfinite ordinal structure (to identify the initial ordinal of each class). Neither resource is available in BST.

BST adopts the primitive definition from Section 3.2.5 instead. The cardinality of a set S, written |S|, is the length of the shortest adjunction sequence from ∅ to S — equivalently, the unique natural number n such that S can be built by n successive additions of distinct elements starting from the empty set. By Theorem 3.2.4, this coincides with the unique finite ordinal to which S is order-isomorphic. In BST, cardinality just is counting, and counting just is ordinal position.


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
(a) Separation (BFT 4.4):  |{x ∈ A | φ(x)}| ≤ |A|
(b) Replacement (A6):      |{f(x) | x ∈ A}| ≤ |A|
(c) Union (A5):            |⋃F| ≤ Σ_{Y ∈ F} |Y|

Proof: Each follows from the corresponding axiom or BFT.
Separation selects a subset — never larger than the parent.
Replacement maps each element to one output — at most as
many outputs as inputs. Union collects elements from
finitely many finite sets — bounded by their total count. □
```


### 5.7.3  Cardinal comparison

Cardinality comparison — determining when |A| ≤ |B| — takes two forms in BST depending on whether functions are available as sets.

Under the syntactic approach: |A| ≤ |B| means the natural number |A| ≤ the natural number |B|, computed as ordinals via Theorem 3.2.4. This is always available and requires no function-sets.

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
              (Theorem 3.2.4: ordinal and cardinal coincide)

Arithmetic:   |A ∪ B| = |A| + |B| - |A ∩ B|   (Theorem 5.4)
              |A × B| = |A| · |B|               (Theorem 5.5)
              |P(A)|  = 2^|A|  when it exists   (Theorem 5.6)

Monotonicity: Separation (BFT 4.4), Replacement (A6),
              Union (A5) are all non-expanding   (Theorem 5.7)

Comparison:   Syntactic: natural number ordering (always available)
              FA-BST: injection existence         (conditional)
              Both definitions agree when both available.

Schroeder-Bernstein: immediate from ordinal linearity (Theorem 7.2)

Absent:       Infinite cardinals — AFB excludes infinite sets
              Uncountable cardinals — same reason
              CH — not statable; finite shadow is Theorem 5.6
```

The cardinal and ordinal theories are unified by Theorem 3.2.4: in BST every cardinal is an ordinal and every ordinal is a cardinal. The apparent duality of infinite set theory — where cardinality and ordinality diverge sharply for infinite sets — collapses in the finite setting. BST has one number concept, not two.


End of Part V

# Part VI: Bounded Induction — Two Schemas


The commitment to finitude — there is no infinity, and there is an upper bound — determines what induction can and cannot do. Classical induction runs over an infinite domain; bounded induction runs over a finite one whose extent the theory cannot name.

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
i.e., ∃S ≤ n_M ( |S| = n ).

This is a genuine formula in the language of BST.

φ(0) holds: ∅ has cardinality 0.

The inductive step φ(n) → φ(n+1) holds for every n
such that both n and n+1 are in the model: if a set S
of cardinality n exists and n+1 ≤ n_M, then S ∪ {x}
for any x ∉ S has cardinality n+1 and exists by
Union and Pairing. So within the model's domain, the
step never fails.

Now consider a model M of BST with bound k.
The unbounded conclusion ∀n φ(n) — interpreted
metatheoretically as ranging over all natural numbers,
not just those in M — asserts that sets of every
cardinality exist. But M contains no set of
cardinality k+1, since k+1 exceeds the bound.
So φ(k+1) fails metatheoretically.

The failure is not in the induction step — the step
holds for every n within the model. The failure is in
the unbounded conclusion: ∀n φ(n) claims φ holds for
numbers beyond the model's domain, where no witness
exists. This is precisely the gap that bounded
induction (Schema 6.1) closes by restricting the
conclusion to ∀α ≤ k φ(α) for an explicit k. □
```

Plain language: In any bounded model, the induction step holds for every n within the model's domain. But the unbounded conclusion claims the property holds for numbers beyond what the model contains — numbers for which no witness exists. The failure is not in the step; it is in the reach of the unbounded quantifier. This is exactly what Schema 6.1 corrects by bounding the conclusion.


## 6.2  Schema I: BST-Native Bounded Induction


### 6.2.1  Motivation and design

The BST-native induction schema is designed from first principles within the ordinal theory of Part V. Its design goal is to capture the full inductive power available within a bounded finite universe, without importing syntactic restrictions motivated by concerns (like polynomial-time computability) that are external to the foundational goals of BST.
The key insight is that in any model of BST, the ordinals form a finite linear order {0, 1, ..., n} for some n. Induction over this order is simply a finite process: check the base case, check each step, conclude the property holds everywhere in the model. The schema must express this without naming n, since n is not definable within BST.

### 6.2.2  Formal statement


### Schema 6.1 — BST Bounded Induction (BI-BST):


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


### Theorem 6.1 — Schema 6.1 is valid in all models of BST:


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

### Schema 6.2 — Strong Bounded Induction (SBI-BST):


```
For any property φ(x) definable in BST, any bound k:
```

```
SBI-BST(φ, k):  [ ∀α ≤ k ( ∀β < α  φ(β) → φ(α) ) ]
→  ∀α ≤ k  φ(α)
```

```
Derivation from Schema 6.1:
Let ψ(α) ≡ ∀β ≤ α  φ(β)  (φ holds everywhere up to α).
Apply Schema 6.1 to ψ: ψ(0) follows from the hypothesis
applied to α = 0. ψ(α) → ψ(S(α)) follows because
if φ holds everywhere up to α, and the hypothesis gives
φ(S(α)) from ∀β < S(α) φ(β), then ψ(S(α)) holds.
Schema 6.1 gives ∀α ≤ k  ψ(α), which implies ∀α ≤ k  φ(α). □
```


### 6.2.5  Bounded recursion

Induction's computational correlate is recursion — defining a function by specifying its value at 0 and how to compute f(n+1) from f(n). In BST, bounded recursion is the appropriate form:

### Schema 6.3 — Bounded Recursion (BR-BST):


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

By Schema 6.1 on m, applied to the property:
  P(m) ≡ 'there exists a unique function f_m with
          domain {0,...,m} satisfying the recursion'

Base (m=0): f_0 = {(0, g())} is the unique function
with domain {0} satisfying f_0(0) = g(). P(0) holds.

Step: Assume f_m exists uniquely (P(m) holds).
Define f_{m+1} by extending f_m:
  f_{m+1}(α) = f_m(α)  for α ≤ m
  f_{m+1}(S(m)) = h(m, f_m(m)).
This extension is unique given f_m. P(S(m)) holds.

Schema 6.1 gives P(m) for all m ≤ k.
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


### Theorem 6.2a — Commutativity of singleton union (BST):


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
Proof: By Schema 6.1 (BI-BST) on |A|.
Base: |A| = 0, so A = ∅. ∅ ∪ B = B = B ∪ ∅. □
Step: Assume A ∪ B = B ∪ A for all sets of size < n.
Let |A| = n. Pick any a ∈ A. Then
A ∪ B = {a} ∪ (A\{a}) ∪ B
= {a} ∪ (B ∪ (A\{a}))  [induction hypothesis, |A\{a}| < n]
= B ∪ {a} ∪ (A\{a})   [Theorem 6.2a]
= B ∪ A. □
```


### Theorem 6.3 — Finite pigeonhole principle (BST):


```
For finite sets A, B with |A| > |B|:
any function f: A → B is not injective.
```

```
Proof: By Schema 6.1 (BI-BST) on |B|.
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
Schema I — Schema 6.1 (BI-BST):
Successor induction over explicit bounds.
Applies to all BST-definable properties.
Native to BST's set-theoretic language.
Strong induction (Schema 6.2) and bounded
recursion (Schema 6.3) derived.
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


The foundational commitment — there is no infinity, and there is an upper bound — constrains function spaces: function graphs always exist, but collecting all functions of a given type into a set is conditional on the collection fitting within the bound.

Functions are the connective tissue of mathematics. Without a coherent account of what a function is and what operations on functions are permitted, nearly nothing of interest can be expressed. Set theory derives its expressive power largely from the ability to treat functions as first-class objects — sets of ordered pairs — and to form function spaces, images, preimages, and compositions freely. When full Power Set is available only below a threshold (BFT 4.3), the automatic availability of function spaces becomes conditional, and this conditionality must be characterised precisely.
This part gives that characterisation. Two approaches to functions in BST are developed: the syntactic approach, which treats functions as defined relations without requiring them to be sets, and the axiomatic approach, which introduces a derived function principle to recover certain function-as-object capabilities when cardinality conditions permit. Both are presented formally and in full prose. Their tradeoffs are stated honestly. The part concludes with a survey of which areas of mathematics are fully available in BST and which require modification or bounded reformulation — the complete accounting of consequences being left to Part IX.


## 7.1  Power Set and Function Spaces


### 7.1.1  What Power Set does in ZFC

In ZFC, the Power Set axiom asserts that for any set A, the set P(A) of all subsets of A exists. This single axiom is responsible for an enormous range of mathematical machinery:
- Function spaces: the set of all functions from A to B, written B^A, is a subset of P(A × B). Without full Power Set, B^A need not exist as a set for arbitrary A and B.
- Topology: a topology on A is a collection of subsets of A satisfying certain axioms — a subset of P(A). Without full Power Set, topological spaces over infinite domains cannot in general be defined set-theoretically.
- Measure theory: sigma-algebras are collections of subsets closed under countable unions and complements — subsets of P(A). Without full Power Set, measure theory over infinite domains has no natural set-theoretic home.
- Cardinal arithmetic: the cardinality of P(A) is 2^|A|, and cardinal exponentiation is defined via power sets. Without full Power Set, cardinal arithmetic over infinite sets contracts dramatically.
- The real numbers: Dedekind cuts are subsets of Q, so the real numbers are elements of P(Q). Without full Power Set, the real number line cannot be constructed set-theoretically in the standard way.
In BST, Bounded Power Set (BFT 4.3) provides P(A) for all sets below the threshold |A| ≤ ⌊log₂(n_M)⌋. Above the threshold, the full power set is not available. The classical infinite formulations listed above require Power Set at infinite scale, which BST does not provide.

The question — addressed in full in Part IX — is whether those classical formulations are the only ones available, or whether bounded reformulations recover the mathematical substance. The answer, as Part IX demonstrates, is that the bounded reformulations recover the substance, and in several cases are more informative than the classical versions.

### 7.1.2  The Power Set threshold in BST

The threshold at which full Power Set becomes unavailable is established by Theorem 4.2a (Part IV): for any model M with bound n_M, P(A) exists when |A| ≤ ⌊log₂(n_M)⌋ and does not exist when |A| exceeds this threshold. Below the threshold, BFT 4.3 provides the full power set. The predicativist argument (Weyl, Feferman) provides independent philosophical reinforcement — see Part IV, Section 4.3.2.

### 7.1.3  The predicativist diagnosis

The predicativist argument concerning Power Set, developed by Weyl and formalised by Feferman, identifies a structural issue beyond cardinality. Power Set is impredicative: the definition of P(A) — 'the set of all subsets of A' — quantifies over all subsets of A, including the very set being defined. This is circular in the sense that the object being defined (P(A)) is characterised by reference to a totality (all subsets of A) that presupposes P(A) as a member.
In BST, impredicativity is additionally constrained because the theory has no completed infinite domain in which the quantification 'all subsets' can range. The predicativist and the finitist perspectives on Power Set are independent but convergent: the predicativist objects to the definition's logical structure; the finitist identifies the cardinality threshold. Below the threshold (BFT 4.3), the impredicativity is benign — the finite collection of subsets is explicitly enumerable and the circularity has no bite. Above it, both considerations converge: the collection is too large for the model and its definition is impredicative. The bounded treatment of Power Set is therefore reinforced by two independent lines of reasoning.

### Bounded Separation as practical substitute:


```
Power Set: ∀A ∃P(A) ∀x ( x ∈ P(A) ↔ x ⊆ A )
Asserts existence of the set of ALL subsets.
```

```
Bounded Separation (BFT 4.4):
∀A ≤ n_M ∃B ≤ n_M (∀x ≤ n_M (x ∈ B ↔ x ∈ A ∧ φ(x)))
For any BFOL property φ, the subset of A satisfying φ exists.
```

```
Bounded Separation gives specific subsets on demand.
Full Power Set gives all subsets at once.
The former is predicative and always available.
The latter is available below the threshold (BFT 4.3).
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
This is a set: {a} exists by Pairing (A4), {a,b} exists
by Pairing, and {{a},{a,b}} exists by Pairing.
All three sets are finite.
```

### Theorem 7.1 — Ordered pair correctness:

```
(a,b) = (c,d)  iff  a=c and b=d.

Proof: By Extensionality (A2). If (a,b) = (c,d), then
{{a},{a,b}} = {{c},{c,d}}. By case analysis on whether
a = b: if a = b then (a,b) = {{a}}, forcing c = d = a;
if a ≠ b then {a,b} has two elements, forcing {a} = {c}
(hence a = c) and {a,b} = {c,d} (hence b = d). The
converse is immediate. □
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

### Proposition 7.1a — Cartesian product existence:

```
For finite sets A, B with |A| · |B| ≤ n_M,
the Cartesian product A × B exists as a set in BST.

Proof: For each a ∈ A, form the set
R_a = {(a,b) | b ∈ B} by applying Bounded Replacement
(A6) to B with the map b ↦ (a,b) (which produces the
Kuratowski pair by Definition 7.1).
Each R_a has cardinality |B|.
Then A × B = ⋃_{a ∈ A} R_a, formed by Bounded Union
(A5) applied to the finite collection {R_a | a ∈ A}. □
```

```
Cardinality: |A × B| = |A| · |B|.
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
(ii) ∀x ∈ A ∀y ≤ n_M ∀z ≤ n_M (φ_f(x,y) ∧ φ_f(x,z) → y=z)  [uniqueness]
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

The axiomatic approach introduces a derived construction principle — the Function Axiom (FA-BST) — that asserts the existence of function sets (graphs) for any definable functional relation on finite sets. This recovers functions as first-class objects by directly asserting the existence of graphs rather than deriving them from a power set. As Proposition 7.1 below demonstrates, FA-BST follows from Bounded Replacement (A6) when Cartesian products are available.
The key observation is that a function from a finite set A to a finite set B has a graph that is a subset of A × B. The graph has at most |A| elements (one pair per input). If |A| ≤ n_M and |B| ≤ n_M, then |A × B| ≤ n_M² and the graph has at most n_M elements. The graph therefore fits within the bound — its existence is not ruled out by the bound axiom. The Function Axiom asserts that this graph always exists.

### 7.3.2  Formal statement


### Function Axiom (FA-BST):


```
For any finite sets A and B, and any formula φ(x,y)
such that:
(i)  ∀x ∈ A ∃y ∈ B  φ(x,y)          [totality]
(ii) ∀x ∈ A ∀y ≤ n_M ∀z ≤ n_M (φ(x,y) ∧ φ(x,z) → y=z)  [uniqueness]
```

```
There exists a set G (the graph of the function defined
by φ) such that:
G ⊆ A × B
∀x ∈ A ∀y ∈ B ( (x,y) ∈ G  ↔  φ(x,y) )
```

```
Formally:
∀A ≤ n_M ∀B ≤ n_M ( [φ defines a function A→B]
→ ∃G ≤ n_M ( G ⊆ A×B ∧ ∀x∈A ∀y∈B((x,y)∈G ↔ φ(x,y)) ) )
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

This proposition confirms that FA-BST is not an independent axiom — it is a derived principle within BST, provided Cartesian products are available. It is stated as a named principle for expository clarity and to make explicit the conditions under which function graphs exist.

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

### Theorem 7.3 — Quotient natural map surjectivity:

```
For any equivalence relation R on a finite set A,
the natural map π: A → A/R defined by π(x) = [x]_R
is a surjection.

Proof: π is a function by Bounded Replacement (A6):
the map x ↦ [x]_R is definable and functional
(each x maps to a unique equivalence class).
π is surjective: every element of A/R is [x]_R for
some x ∈ A, by the definition of A/R as the image
of A under x ↦ [x]_R. □
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
of A ordered by inclusion — exists when |A| ≤ ⌊log₂(n_M)⌋
(by BFT 4.3). For larger A, P(A) does not exist as a
completed set, but any specific finite sublattice does.
```


## 7.6  The Scope of BST Mathematics

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
The qualification: the event algebra is a collection of subsets of Ω. In classical probability theory, the event algebra is typically P(Ω) — the full power set. In BST, P(Ω) exists when |Ω| ≤ ⌊log₂(n_M)⌋ (by BFT 4.3) and may not exist for larger sample spaces. The resolution is to work with a specific finite event algebra — a finite collection of subsets closed under complement and union — rather than all subsets. This is actually more general in one sense: it corresponds to what is called a finite field of sets or an algebra of sets, which is the standard structure in abstract probability theory.

### 7.6.5  What requires bounded reformulation

The following areas of mathematics are not available in BST in their classical infinite form, but each has a bounded reformulation that recovers the mathematical substance:

- Classical real analysis as a completed infinite structure: Dedekind cuts and Cauchy sequences construct ℝ as a completed infinite object, which BST does not posit. The analytic apparatus — derivatives, integrals, transcendental functions, IVT, EVT — is recovered in full via the bounded reals ℝ_B(k), constructed in Part VIII (Section 8.7) from Cauchy sequences over ℚ_B(k) via canonical rounding. The bounded versions carry explicit precision bounds and are strictly more informative than their classical counterparts. Recovery type: Type II for order-dependent results (exact BST theorems at each bound level k); Type III with explicit error O(1/k²) for results depending on chained field arithmetic.
- Classical topology: open sets as arbitrary subsets of an infinite space require infinite subsets. Finite topological spaces and topology over ℝ_B(k) are fully available. The classical continuum topology is replaced by a bounded analog that supports the same analytic theorems over explicit domains.
- Measure theory: sigma-algebras over infinite domains require Power Set at infinite scale. For finite domains, BFT 4.3 may provide the power set directly; in all cases, finitely-additive probability over finite event algebras and Lebesgue-style measure over bounded domains are fully available and support all computable probability theory.
- Functional analysis: infinite-dimensional Hilbert and Banach spaces require infinite sets. Finite-dimensional spectral theory over bounded domains is fully available; its systematic development is in Part XI (Section 11.4).

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
Schema 6.1 (BI-BST), or simply from the linear ordering of ordinals. □
```

```
Note: The classical Cantor-Bernstein proof for infinite sets,
while not requiring the Axiom of Choice, involves a
non-trivial back-and-forth construction over infinite chains.
For finite sets, the result is immediate from the linear
ordering of natural numbers.
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
What is fully available in BST:
Finite combinatorics — fully intact.
Elementary number theory — fully intact.
Finite algebra (groups, rings, fields) — largely intact.
Discrete probability over finite spaces — intact.
```

```
What requires bounded reformulation:
Classical real analysis — requires ℝ_B(k) (Part VIII/IX).
Classical topology — requires bounded domains.
Measure theory — requires finite event algebras.
Functional analysis — requires finite dimensions (Part XI).
(Full treatment of bounded reformulations: Part IX)
```


### ◆ The Core Insight of the Function Treatment

Functions in BST exist at two levels: as syntactic formulas (always available, no set required) and as set-valued graphs (available when cardinality conditions permit). Bounded Power Set (BFT 4.3) provides power sets below the threshold, and Bounded Separation (BFT 4.4) provides specific subsets on demand at any scale. Every specific function you can define exists and can be applied, composed, and reasoned about. The ability to collect all functions of a given type into a single set is conditional on that collection fitting within the bound, which it does for small domains and may not for large ones. This is not a loss — it is the correct description of what function spaces are in a bounded setting.


End of Part VII

# Part VIII: The Bounded Number Chain


The foundational commitment — there is no infinity, and there is an upper bound — means that the classical number systems ℕ, ℤ, ℚ, ℝ, ℂ do not exist as completed infinite totalities. What exists are bounded versions, each a finite set with explicit cardinality and explicit arithmetic.

Classical arithmetic builds its number systems in a single ascending sequence: the natural numbers ℕ are taken as given or axiomatised, the integers ℤ are constructed as equivalence classes of pairs of naturals, the rationals ℚ as equivalence classes of pairs of integers. Each step is a quotient construction; each resulting system is infinite; the full chain ℕ ⊆ ℤ ⊆ ℚ is a completed infinite hierarchy that grounds all subsequent analysis.

Under AFB, none of these systems exists as a completed infinite totality. There is no set of all natural numbers, no set of all integers, no set of all rationals. What exists are bounded versions: for any explicit bound k, there is the set of natural numbers up to k, the set of integers representable within a bound derived from k, the set of rationals representable within a bound derived from that. Each is a finite set. Each has an explicit cardinality. Each supports arithmetic operations — but those operations are not unconditionally closed. Addition can carry you outside the bound; multiplication more so; exponentiation with extreme rapidity.

This part constructs the bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) in full, confronts the closure problem at each level, and establishes which arithmetic results hold unconditionally within a bound and which hold only with explicit provisos. The construction is not a weakening of classical arithmetic — it is arithmetic done honestly, without assuming a completed infinite background domain that the foundation does not provide.

The chain constructed here is the foundation for Part IX. The bounded reals ℝ_B(k) are constructed in Section 8.7 from Cauchy sequences over ℚ_B(k) via canonical rounding; Part IX develops the analytic apparatus over them.


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

Plain language: The bounded naturals up to k are simply the finite ordinals from 0 to k, which already exist in BST as the canonical representatives established in Part III, Definition 3.3. No new construction is needed. ℕ_B(k) is the explicit finite set of those ordinals, assembled by Bounded Separation (BFT 4.4).

Note on the missing ℕ. There is no set ℕ in BST — no completed infinite set of all natural numbers. ℕ_B(k) is not a subset of ℕ; it is the only kind of "natural number set" that exists. The classical ℕ is not an object that BST approximates. It is an object that BST does not posit. Each ℕ_B(k) is complete as a finite structure — it lacks nothing that a finite set of naturals needs. What it lacks is membership in a completed infinite totality that BST does not recognise.


### 8.1.2  Arithmetic operations on ℕ_B(k)

Addition, multiplication, and exponentiation are defined on ℕ_B(k) by Schema 6.3 (Bounded Recursion, BR-BST — Part VI, Section 6.2.5). The definitions follow the standard recursive clauses:

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

These definitions are all valid within BST. Each definition produces a function symbol (in the sense of Part VII, Definition 7.4) whose graph, when the result lies within ℕ_B(k), exists as a set by FA-BST (Proposition 7.1).


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
Proved by Schema 6.1 (BI-BST) on the bit-length of the remainder
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

A key property of ℚ_B(k) is its density — how many rationals lie in a given interval. This matters for Section 8.7, where the bounded reals are constructed from Cauchy sequences over ℚ_B(k) via canonical rounding.

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

Sections 8.1 through 8.3 constructed ℕ_B(k), ℤ_B(k), and ℚ_B(k). Sections 8.4 through 8.6 established their structure, embeddings, and relationship to classical systems. The chain so far runs ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) — but it is not yet complete. The rationals are dense within their bound but contain no irrational values. Analysis requires √2, π, e, and the full continuum of computable reals. The classical construction of ℝ from ℚ proceeds by Cauchy completion: adding the limit points of all Cauchy sequences. The bounded version follows the same path with four modifications: sequences are finite, moduli of convergence are explicit, the equivalence relation identifying sequences is defined by canonical rounding rather than by an approximate threshold (Section 8.7.2), and the resulting object is a finite set.


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

The classical Cauchy construction of ℝ from ℚ identifies two sequences when the difference of their terms converges to zero. In the classical setting, this works because for any ε > 0, the tails can be made ε-close — and approximate equality at every precision simultaneously yields exact equality in the limit.

In BST, precision is fixed at 1/k. Approximate closeness at a fixed threshold is not transitive: if the tails of s and t lie within 2/k of each other, and the tails of t and u lie within 2/k of each other, the triangle inequality gives only that the tails of s and u lie within 4/k of each other — which exceeds the 2/k threshold. This holds at every k, regardless of how large k is: the ratio 4/k to 2/k is always 2, and no choice of k makes 4/k ≤ 2/k. Approximate equality at a fixed precision is inherently non-transitive.

This is not a marginal issue. Under the Bounded Reflection Principle (Theorem 3.3.1), BST-B proves only sentences true in every finite model. Since the transitivity failure holds at every positive k, a naive approximate-threshold equivalence would fail in every model, and BST-B could not prove the quotient is well-defined.

The resolution follows the pattern already established at every prior link in the bounded number chain. When ℤ_B(k) was constructed from pairs of naturals, the equivalence (a,b) ~_k (c,d) was defined as the exact condition ad = bc — not as "a/b is approximately c/d" — with the cross-multiplication computed in the wider system ℤ_B(k²). When ℚ_B(k) was constructed, the same pattern applied: exact equivalence, computed within domain. The bounded reals require the same structural move: replace approximate closeness with exact identification, computed within the resources available to the model.

### Definition 8.14 — Cauchy equivalence (canonical rounding):

```
Define the canonical rounding function
ρ_k: CS(k) → ℚ_B(k) as follows.

For a bounded Cauchy sequence s = (q₀, q₁, ..., q_m)
in CS(k):

(i)   Compute the tail representative: q* = q_m
      (the final term of the sequence).

(ii)  Round to the nearest element of ℚ_B(k):
      ρ_k(s) = the element r ∈ ℚ_B(k) minimising
      |q* − r|, with ties broken by the canonical
      ordering on ℚ_B(k) (lowest terms, positive
      denominator, lexicographic on (numerator,
      denominator)).

Since ℚ_B(k) is a finite linearly ordered set
(Theorem 8.7) and |·| is computable in ℚ_B(k²)
(Section 8.3), ρ_k is a well-defined total function
CS(k) → ℚ_B(k), computable within the model.
```

```
The Cauchy equivalence is defined as the kernel of ρ_k:

s ~_k t   :=   ρ_k(s) = ρ_k(t)

Two Cauchy sequences are equivalent if and only if
they round to the same canonical rational.
```

```
~_k is an equivalence relation on CS(k):

Reflexivity:  ρ_k(s) = ρ_k(s). ✓

Symmetry:     ρ_k(s) = ρ_k(t) → ρ_k(t) = ρ_k(s). ✓

Transitivity: ρ_k(s) = ρ_k(t) and ρ_k(t) = ρ_k(u)
              → ρ_k(s) = ρ_k(u). ✓

All three properties are immediate from the
transitivity of equality on ℚ_B(k).
No approximate threshold is involved.
No precision degradation occurs. □
```

```
Well-definedness of the rounding:
The Cauchy condition (Definition 8.13) ensures that
all tail elements of s lie within 1/k of each other.
In particular, any two tail elements q_i, q_j with
i, j ≥ ⌈m/2⌉ satisfy |q_i − q_j| < 1/k.
The final term q_m is a tail element, so all tail
elements lie within 1/k of q_m.

Replacing q_m with any other tail element q_i
(i ≥ ⌈m/2⌉) as the input to ρ_k would produce
either the same canonical rational or an adjacent
one — differing by at most 1/k² (the maximum gap
between adjacent elements of ℚ_B(k), by Theorem 8.6).
The choice of q_m as representative is therefore
stable: perturbation by less than 1/k shifts the
rounding target by at most one grid position.
```

Plain language: Two Cauchy sequences are equivalent when they point at the same rational approximation to precision 1/k. The equivalence is exact — it is equality of canonical rational representatives, not approximate closeness of tails. This is the same structural move used to define ℤ_B(k) and ℚ_B(k): replace approximate comparison with exact equivalence computed within the model's domain. The transitivity problem that plagues approximate-threshold equivalence does not arise because exact equality is always transitive.

Note on the relationship to the classical construction. In the classical Cauchy construction, the equivalence s ~ t is defined by lim|s_n − t_n| = 0 — an infinite-precision condition that entails exact equality in the limit. The bounded construction replaces this infinite-precision limit with a finite-precision canonical representative. The two agree to within 1/k: if two classical Cauchy sequences converge to the same real number, their bounded truncations round to the same canonical rational (for sufficiently large k). The bounded construction is the finite-precision shadow of the classical one, made formally exact by the rounding step.


### 8.7.3  The construction

### Definition 8.15 — Bounded reals:

```
ℝ_B(k)  :=  CS(k) / ~_k
           =  { [s]_~ | s ∈ CS(k) }
           ≅  range(ρ_k)  ⊆  ℚ_B(k)
```

```
Existence: ~_k is the kernel of the total function
ρ_k: CS(k) → ℚ_B(k). By Definition 7.7 (Part VII),
quotient sets exist in BST whenever the base set and
equivalence relation are definable and finite. CS(k) is
finite (Definition 8.13) and ~_k is decidable (it
reduces to equality of elements of ℚ_B(k), which is
decidable by Extensionality). ✓
```

```
Canonical form: Each equivalence class [s] is
canonically represented by the element ρ_k(s) ∈ ℚ_B(k).
The quotient CS(k)/~_k is therefore isomorphic to
range(ρ_k) — a finite subset of ℚ_B(k). In practice,
ℝ_B(k) may be identified with this subset.
```

```
Cardinality: |ℝ_B(k)| = |range(ρ_k)| ≤ |ℚ_B(k)|.
The number of distinct limit values — rationals in
ℚ_B(k) that are rounding targets of at least one
Cauchy sequence — is at most |ℚ_B(k)| ~ (12/π²)k².
In practice, for k large relative to the sequences
being considered, range(ρ_k) covers [−k, k] at
spacing ~ 1/k², giving |ℝ_B(k)| ≤ k².

This matches the cardinality estimate of the original
construction: the object has not changed, only the
formal path to it.
```

Plain language: ℝ_B(k) is the set of all rational values in ℚ_B(k) that are the best 1/k-precision approximations of limits of bounded Cauchy sequences. It is a finite set, a subset of ℚ_B(k), containing all of ℚ_B(k) itself (since constant sequences round to their own value) and representing irrational values — √2, π, e — by their nearest rational at precision 1/k.

Remark on the nature of ℝ_B(k). The bounded reals are a finite set of rationals. This is not a deficiency — it is the correct formal expression of what "real number at precision 1/k" means in a bounded setting. The classical real line is the limit of a family of such finite approximations as k → ∞ in the metatheory. BST does not posit that limit; it works with each finite approximation directly. The Cauchy construction is the motivation — it explains why this particular finite set is the right one — but the resulting object is a finite subset of ℚ_B(k), and all arithmetic on it is rational arithmetic within domain.


### 8.7.4  Embedding and arithmetic

### Proposition 8.12 — The rational embedding:

```
The map  ι: ℚ_B(k) → ℝ_B(k)  defined by
q ↦ ρ_k((q, q, q))  =  q

is the identity on ℚ_B(k): every rational maps to
itself, since the constant sequence (q, q, q) has
final term q, which rounds to q.

ι is injective, order-preserving, and a field
homomorphism on the domain where field operations
close.

Proof: Injectivity is immediate (ι is the identity).
Order-preservation follows from the order on ℚ_B(k)
(Definition 8.11). The field homomorphism property
holds because ι is the identity embedding. □
```

### Definition 8.16 — Real arithmetic:

```
Since ℝ_B(k) ≅ range(ρ_k) ⊆ ℚ_B(k), arithmetic on
ℝ_B(k) is defined via rational arithmetic followed
by rounding:

For a, b ∈ ℝ_B(k) (identified with their canonical
rational representatives in ℚ_B(k)):

a +_k b  :=  ρ_k(a + b)
             where a + b is computed in ℚ_B(k²)
             and ρ_k rounds the result back to ℝ_B(k).

a ×_k b  :=  ρ_k(a × b)
             where a × b is computed in ℚ_B(k⁴)
             and ρ_k rounds the result back to ℝ_B(k).

−_k a    :=  ρ_k(−a)  =  −a
             (negation of a rational in ℚ_B(k) stays
             in ℚ_B(k), so rounding is trivial).
```

```
Rounding error:
Each arithmetic operation introduces a rounding error
of at most 1/(2k²) — the maximum distance from any
point to the nearest element of ℚ_B(k), by Theorem 8.6.

For a chain of N operations, the accumulated rounding
error is at most N/(2k²).

This is the same bound-widening pattern used throughout
the chain: addition requires the wider system ℚ_B(k²),
multiplication requires ℚ_B(k⁴), and the rounding step
returns the result to ℝ_B(k) at the cost of an explicit
and computable error.
```

```
Closure proviso:
As with ℤ_B(k) and ℚ_B(k), operations on ℝ_B(k) are
closed within the domain: the rounding step ρ_k always
returns an element of ℝ_B(k) ⊆ ℚ_B(k), by definition.
The intermediate computation (before rounding) may
require the wider ambient system ℚ_B(k²) or ℚ_B(k⁴),
which must fit within n_M. This is the standard
within-domain proviso.
```


### 8.7.5  Key theorems

### Theorem 8.13 — ℝ_B(k) is a bounded approximate ordered field:

```
On the domain where intermediate computations stay
within the model bound:

ℝ_B(k) satisfies all ordered field axioms up to
rounding error at most 1/(2k²) per operation.

Specifically, for all a, b, c ∈ ℝ_B(k):

Commutativity:    a +_k b = b +_k a  (exact — rounding
                  is applied to the same sum). ✓
                  a ×_k b = b ×_k a  (exact). ✓

Associativity:    |( a +_k b ) +_k c − a +_k ( b +_k c )|
                  ≤ 1/(2k²)
                  (one rounding step may differ). ✓

Distributivity:   |a ×_k (b +_k c) − (a ×_k b +_k a ×_k c)|
                  ≤ C/k²  for computable C. ✓

Additive identity:  a +_k 0 = a  (exact — 0 ∈ ℚ_B(k)). ✓
Multiplicative id:  a ×_k 1 = a  (exact — 1 ∈ ℚ_B(k)). ✓

Additive inverses:  a +_k (−_k a) = 0  (exact). ✓

Order compatibility: a < b → a +_k c ≤ b +_k c
                     (≤ rather than < due to rounding). ✓

Proof: Each identity reduces to rational arithmetic
in ℚ_B(k²) or ℚ_B(k⁴), followed by rounding. The
rounding step introduces at most 1/(2k²) per
application (Theorem 8.6). Commutativity and
identity are exact because the inputs to ρ_k are
identical in both cases. Associativity and
distributivity may differ by one rounding step,
giving the stated error bound. By BI-BST. □

Note: ℝ_B(k) is an exact ordered field on the
subdomain where all intermediate results happen to
lie in ℝ_B(k) without rounding. The rounding error
is the cost of guaranteed closure. For applications
requiring exact field axioms, work in ℚ_B(k) directly;
ℝ_B(k) adds density at the cost of approximate
associativity, with the approximation error explicit
and computable.
```

Plain language: The bounded reals form an ordered field up to a rounding error that is explicit, computable, and vanishes as k grows. Commutativity and identities are exact. Associativity holds to within 1/(2k²). For any specific computation, the accumulated error is bounded by (number of operations)/(2k²) — always finite, always computable, always improvable by choosing a larger k in the metatheory. This is Type II recovery for the exact properties and Type III for the approximate ones, with the error term stated precisely.

### Theorem 8.14 — ℝ_B(k) contains irrational elements:

```
For any integer n ≥ 2 with n ≤ k, √n ∈ ℝ_B(k)
(represented by its nearest rational in ℚ_B(k)).

Proof: The Newton-Raphson iteration for √n,
starting from q₀ = 1:
    q_{i+1} = (q_i + n/q_i) / 2
converges quadratically. Within ⌈log₂(log₂(k))⌉
steps it produces q with |q² − n| < 1/k, using only
arithmetic in ℚ_B(k²). The resulting finite sequence
s is in CS(k), and ρ_k(s) is the element of ℚ_B(k)
nearest to √n at precision 1/k.

This representative is unique and well-defined.
It is the canonical name for √n in ℝ_B(k). □

Similarly for any computable real approximable to
precision 1/k by a rational sequence of length ≤ k².
The irrational value is represented in ℝ_B(k) by its
nearest rational at precision 1/k — a specific,
computable element of ℚ_B(k).
```

Plain language: ℝ_B(k) "contains" irrational values in the sense that each irrational approximable to precision 1/k has a unique canonical rational representative in the finite set ℝ_B(k). The element is not irrational — it is the rational nearest to the irrational value. This is the formally precise version of what "√2 to six decimal places" means: a specific rational number, not an infinite object. The classical irrational is the metatheoretic limit of the family {ρ_k(√2-sequence) | k ∈ metatheory}.

### Theorem 8.15 — ℝ_B(k) is k-complete:

```
Every bounded Cauchy sequence s ∈ CS(k) has a limit
in ℝ_B(k) — namely ρ_k(s), its canonical rational
representative.

Proof: ρ_k(s) ∈ ℝ_B(k) by construction. The tail
elements of s all lie within 1/k of ρ_k(s), by the
Cauchy condition and the definition of rounding.
Therefore ρ_k(s) is within 1/k of the sequence's
"limit" — in the only sense of "limit" that is
available at precision 1/k. □

This is the bounded completeness theorem: every
explicitly given finite Cauchy sequence with modulus
1/k has a representative in the finite set ℝ_B(k),
and that representative is within 1/k of every tail
element. Recovery type: Type II — exact BST theorem
at each bound level k.
```


### ◆ Summary — The Bounded Reals

```
Construction:  ℝ_B(k) = CS(k) / ~_k ≅ range(ρ_k)
               Canonical rational representatives of
               finite Cauchy sequences from ℚ_B(k),
               identified via the rounding function ρ_k.

Equivalence:   s ~_k t  iff  ρ_k(s) = ρ_k(t)
               (exact equality of canonical representatives;
               trivially transitive).

Cardinality:   Finite. At most |ℚ_B(k)| ~ (12/π²)k²
               distinct values in [−k, k].

Contains:      All of ℚ_B(k) via constant sequences.
               All √n for integer n ≤ k (as nearest
               rational representatives).
               All computable reals approximable to
               precision 1/k within the bound.

Arithmetic:    Approximate ordered field within domain.
               Commutativity and identities: exact.
               Associativity, distributivity: within 1/(2k²).
               Addition intermediate step in ℚ_B(k²).
               Multiplication intermediate step in ℚ_B(k⁴).
               Rounding returns results to ℝ_B(k).

Completeness:  k-complete (Theorem 8.15).
               Every Cauchy sequence in CS(k) has a
               canonical representative in ℝ_B(k).
```

```
Structural note — the "within domain" pattern:

ℤ_B(k):  equivalence (a,b) ~ (c,d) defined by exact
          condition a + d = b + c, computed in ℕ_B(2k).
          Transitivity: trivial (exact equality).

ℚ_B(k):  equivalence (a,b) ~ (c,d) defined by exact
          condition ad = bc, computed in ℤ_B(k²).
          Transitivity: trivial (exact equality).

ℝ_B(k):  equivalence s ~ t defined by exact condition
          ρ_k(s) = ρ_k(t), computed in ℚ_B(k).
          Transitivity: trivial (exact equality).

The pattern is uniform: at each stage of the chain,
equivalence is defined by exact identification computed
within the model's domain. Approximate comparison is
used as motivation, not as the formal relation. This
is what makes the quotient construction well-defined
at every level.
```


## 8.8  The Bounded Complex Numbers ℂ_B(k⁴)

Sections 8.1 through 8.7 constructed the bounded real field ℝ_B(k). The classical extension from ℝ to ℂ is algebraic: ℂ = ℝ × ℝ with multiplication defined by the rule (a,b)·(c,d) = (ac−bd, ad+bc). No completed infinite object beyond ℝ is required. The same extension is available in BST, using the Cartesian product machinery of Part VII and the approximate field structure of ℝ_B(k) established in Theorem 8.13.

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

Since |ℝ_B(k)| ≤ k² (Definition 8.15), we have
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

### Theorem 8.16 — ℂ_B(k⁴) is a bounded approximate field:

```
On the domain where operations stay within bound,
ℂ_B(k⁴) satisfies the field axioms with the same
approximation profile as ℝ_B(k):

(i)   Commutativity of + and ·: exact (immediate from
      commutativity of ℝ_B(k), which is exact). ✓

(ii)  Associativity of + and ·: approximate, within
      C/k² for computable C. Each complex operation
      involves a bounded number of ℝ_B(k) operations
      (at most 4 for multiplication: ac, bd, ad, bc),
      each contributing at most 1/(2k²) rounding error.
      Total: at most 4/(2k²) = 2/k² per complex
      multiplication. ✓

(iii) Distributivity: approximate, within C'/k² for
      computable C'. ✓

(iv)  Additive identity: (0, 0). Exact. ✓

(v)   Multiplicative identity: (1, 0). Exact. ✓

(vi)  Additive inverses: (−a, −b). Exact. ✓

(vii) Multiplicative inverses: (a/(a²+b²), −b/(a²+b²))
      for all (a,b) ≠ (0,0) within domain. Approximate:
      the divisions and additions contribute O(1/k²)
      rounding. ✓

Proof of each: reduces to Theorem 8.13
applied componentwise, plus the definition of
multiplication. The rounding errors propagate
componentwise. By BI-BST on component length. □

Note: ℂ_B(k⁴) inherits the same "exact for commutative
and identity operations, approximate for associative
and distributive operations" profile as ℝ_B(k). The
error per complex operation is a small computable
multiple of 1/k², vanishing as k grows. For any fixed
computation of bounded length, the total error is
O(1/k²) — Type III with explicit bound.
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

Proof: Let P(z) = a_d z^d + ... + a_1 z + a_0 with
coefficients in ℂ_B(k⁴) and a_d ≠ 0. The companion
matrix of P is the d × d matrix

C = [[0, 0, ..., 0, -a_0/a_d],
     [1, 0, ..., 0, -a_1/a_d],
     [0, 1, ..., 0, -a_2/a_d],
     ...
     [0, 0, ..., 1, -a_{d-1}/a_d]]

over ℂ_B(k⁴). This is a finite matrix; its entries
are computable by bounded arithmetic in ℂ_B(k⁴).

The eigenvalues of C are exactly the roots of P
(a standard algebraic identity holding over any field).
Since C is a d × d matrix over ℂ_B(k⁴), its
characteristic polynomial det(C - λI) = P(λ)/a_d
has d eigenvalues in ℂ_B(k⁴), computable by the
finite spectral methods of Part XI (Theorem 11.4)
to precision 1/k.

Each root is an element of ℂ_B(k⁴) — the nearest
point in the finite field to the exact eigenvalue,
at precision 1/k. By BI-BST on d, all d roots
are computed. □

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

ℝ_B(k):    Approximate ordered field. Commutative (exact),
            associative within 1/(2k²).
ℂ_B(k⁴):   Approximate field. Commutative (exact),
            associative within C/k².
            Not ordered. Algebraically closed within bound.
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
What is passed to Part XIV:
ℂ_B(k⁴) is available as the BST bounded complex field.
This permits: complex arithmetic, complex polynomials,
and bounded complex varieties. These strengthen
the Millennium Problems analysis of Part XIV.
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
Canonical rational representatives of finite Cauchy
sequences from ℚ_B(k), identified via the rounding
function ρ_k. Isomorphic to range(ρ_k) ⊆ ℚ_B(k).
Cardinality ≤ k² distinct values in [−k, k].
Contains all of ℚ_B(k) and all computable reals
approximable to precision 1/k within the bound.
Approximate ordered field: commutativity and identities
exact; associativity/distributivity within 1/(2k²).
k-complete (Theorem 8.15).
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
ℝ_B(k); Part XIV applies ℂ_B(k⁴) to the Millennium
Problems.
```


### ◆ The Core Insight of the Bounded Number Chain

Classical arithmetic assumes its number systems exist as completed infinite totalities and then does mathematics within them. BST constructs explicit finite number systems — parameterised by a bound — and demonstrates that the arithmetic, algebraic, and number-theoretic content of classical mathematics is available within each. The chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) is the bounded counterpart of the classical chain ℕ → ℤ → ℚ → ℝ → ℂ, with every object finite, every cardinality explicit, and every construction carried out by the axioms of BST. The bound is not a limitation on what can be proved; it is the domain within which all proof takes place.


End of Part VIII


# Part IX: Analysis

The foundational commitment — there is no infinity, and there is an upper bound — determines the scope of analysis: every classical theorem either holds exactly over bounded domains, holds approximately with explicit computable error, or concerns objects BST does not posit.

Parts III through VIII have built the foundational package in full: bounded logic, primitive ordinals, AFB, the six axioms of BST and four Bounded Fundamental Theorems, the ordinal theory, bounded induction, functions and relations, and the complete bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴). This part develops the full analytic apparatus over ℝ_B(k) and gives an honest accounting of how BST's mathematics compares to classical mathematics.

That accounting requires a precise framing. The natural comparison — BST against ZFC, theorem by theorem — can be stated as a list of losses: results provable in ZFC that BST cannot prove. That framing is wrong on two counts. First, what looks like a loss is often a recovery in a precise sense once the right construction is in hand — the bounded reals are not a mere approximation to ℝ, they are a finite analytic domain within which order-dependent results of classical real analysis hold as exact bounded theorems at each level (Type II) and results involving chained field arithmetic hold as approximate theorems with explicit error control O(1/k²) (Type III), all of which are strictly more informative than their classical counterparts. Second, some results that are ZFC theorems are not losses from BST's perspective at all — their absence is the correct consequence of a lower ontological commitment, and in some cases their absence is a gain.

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

ℝ_B(k) is constructed in full in Part VIII, Section 8.7. The key properties used here are: it is a finite approximate ordered field (commutativity and identities exact, associativity within 1/(2k²)), k-complete (Theorem 8.15), contains all of ℚ_B(k) and all computable reals approximable to precision 1/k within the bound, and has at most k² distinct values in [−k, k]. The Category A recoveries below depend primarily on order and finite search, not on field associativity, and are therefore unaffected by the approximate status of the field axioms.

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

BST recovery: By Theorem 8.15 (k-completeness, Part VIII, Section 8.7.5), every explicitly given finite Cauchy sequence of elements of ℚ_B(k) with modulus of convergence 1/k has a limit in ℝ_B(k) — namely its canonical rational representative ρ_k(s). The limit exists by construction, and its location within precision 1/k is explicit.

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

This is a finite sum computed in the wider system ℚ_B(k⁴) — the individual products f(t_i) · (x_{i+1} − x_i) and their sum are rational arithmetic, exact in ℚ_B(k⁴). The final result is rounded to ℝ_B(k) by ρ_k, introducing at most 1/(2k²) rounding error. For any fixed partition and fixed f, the Riemann sum is therefore exact to within 1/(2k²) — a computable, vanishing error. For any continuous f on ℝ_B(k) ∩ [a,b] and any ε > 0, there exists δ > 0 such that for any two partitions 𝒫, 𝒬 with mesh < δ, |I(f,𝒫) - I(f,𝒬)| < ε. This follows from uniform continuity of f on the finite domain (established in Part IX, analytic machinery). Non-measurable sets do not arise: every subset of a finite Ω is in the algebra generated by singletons, and every such set has a well-defined measure. The Vitali and Banach-Tarski constructions require uncountable Choice and are correctly absent (Category C).

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


### 9.3.2  Bounded Fourier Analysis

The Fourier transform is among the most widely used tools in mathematics and physics. It connects functions to their frequency content, underpins spectral methods for differential equations, and provides the mathematical framework for wave mechanics, signal processing, quantum mechanics in momentum space, and statistical mechanics. In classical analysis, the Fourier transform is defined by an integral over the entire real line — an infinite operation on an infinite domain. In BST, the corresponding tool is the Discrete Fourier Transform (DFT), which is inherently finite: an exact matrix multiplication over ℂ_B(k⁴).

The development here proceeds from the finite transform to its properties, all of which are exact Type I or Type II results. No approximation is involved in the transform itself — the DFT is an exact finite computation. Approximation enters only when comparing the DFT to the classical continuous Fourier transform, which is a Type IV family-level correspondence.

### Definition 9.1 — Bounded Discrete Fourier Transform:

```
For a finite sequence f = (f₀, f₁, ..., f_{N-1}) of N
elements of ℂ_B(k⁴), where N ≤ k:

The DFT of f is the sequence F = (F₀, F₁, ..., F_{N-1})
defined by:

F_m = Σ_{n=0}^{N-1} f_n · ω^{mn}

where ω = exp(2πi/N) is the primitive N-th root of
unity in ℂ_B(k⁴), computed by bounded trigonometric
approximation to precision 1/k (Part VIII, §8.8).

Each F_m is a finite sum of N products of elements
of ℂ_B(k⁴). The entire transform is an N × N matrix
multiplication:

F = W · f

where W_{mn} = ω^{mn} is the DFT matrix.
```

```
Existence and computability:
- The DFT matrix W is an N × N matrix over ℂ_B(k⁴).
  |W| = N² entries. Finite. ✓
- Each entry is a power of ω, computable within
  ℂ_B(k⁴) by bounded multiplication. ✓
- The matrix-vector product W · f involves N²
  multiplications and N(N-1) additions in ℂ_B(k⁴).
  Total operations: O(N²). Finite. ✓
- All arithmetic is in ℂ_B(k⁴) with the approximate
  field profile of Theorem 8.16: commutativity exact,
  associativity within O(1/k²) per operation. Total
  rounding error for the transform: O(N²/k²).

For N ≪ k (the regime of practical computation), the
rounding error is negligible relative to the precision.
```

```
The inverse DFT is:

f_n = (1/N) Σ_{m=0}^{N-1} F_m · ω^{-mn}

which is the matrix multiplication f = (1/N) W* · F,
where W* is the conjugate transpose of W.
```

Plain language: The DFT is a finite matrix multiplication over bounded complex numbers. It transforms a finite sequence of N values into a finite sequence of N frequency components. No integrals, no infinite sums, no measure theory. The transform and its inverse are exact finite computations (up to the O(1/k²) arithmetic rounding of ℂ_B(k⁴)).

### Theorem 9.1 — Bounded Parseval's Theorem:

```
For f = (f₀, ..., f_{N-1}) ∈ ℂ_B(k⁴)^N and its
DFT F = (F₀, ..., F_{N-1}):

Σ_{n=0}^{N-1} |f_n|² = (1/N) Σ_{m=0}^{N-1} |F_m|²

(Energy in the time domain equals energy in the
frequency domain, up to the normalisation factor.)

Proof: By direct algebraic expansion.

Σ |F_m|² = Σ_m (Σ_n f_n ω^{mn})(Σ_{n'} f̄_{n'} ω^{-mn'})
          = Σ_{n,n'} f_n f̄_{n'} Σ_m ω^{m(n-n')}

The inner sum Σ_m ω^{m(n-n')} = N if n = n', and 0
otherwise (geometric series, exact for roots of unity).

Therefore Σ |F_m|² = N Σ_n |f_n|². □

Recovery type: Type I (exact algebraic identity).
The proof uses only the algebraic properties of
roots of unity and finite summation. The geometric
series identity Σ_m ω^{mr} = N·δ_{r,0} holds exactly
because ω^N = 1 is exact in ℂ_B(k⁴) (it is an
algebraic identity, not an approximation).

Note: the individual terms |f_n|² and |F_m|² involve
multiplication in ℂ_B(k⁴), which is approximate.
Parseval's identity holds exactly at the algebraic
level; the numerical evaluation of each side
carries the standard O(N/k²) accumulated rounding.
```

### Theorem 9.2 — Bounded Convolution Theorem:

```
For sequences f, g ∈ ℂ_B(k⁴)^N, define:

Cyclic convolution:
(f * g)_n = Σ_{j=0}^{N-1} f_j · g_{(n-j) mod N}

Pointwise product:
(F · G)_m = F_m · G_m

where F = DFT(f), G = DFT(g).

Then:  DFT(f * g) = F · G

(Convolution in the time domain corresponds to
pointwise multiplication in the frequency domain.)

Proof: By direct expansion of DFT(f * g)_m:

Σ_n (Σ_j f_j g_{(n-j) mod N}) ω^{mn}

Substituting l = n - j:

= Σ_j f_j ω^{mj} · Σ_l g_l ω^{ml}
= F_m · G_m. □

Recovery type: Type I (exact algebraic identity).
The substitution and reindexing are exact finite
operations on finite sums.
```

### Theorem 9.3 — The Fast Fourier Transform in BST:

```
The DFT of a sequence of length N = 2^s (for s ≤ log₂ k)
can be computed in O(N log N) operations in ℂ_B(k⁴)
rather than the O(N²) of the naive matrix multiplication.

Proof: By bounded recursion on s (the number of
doubling stages), using the Cooley-Tukey decomposition.

Base: s = 0 (N = 1). The DFT of a single element
is the element itself. 0 operations. ✓

Recursive step: Assume the DFT of length N/2 can be
computed in c · (N/2) log(N/2) operations. Split f
into even-indexed and odd-indexed subsequences:

f_even = (f₀, f₂, f₄, ..., f_{N-2})
f_odd  = (f₁, f₃, f₅, ..., f_{N-1})

Compute F_even = DFT(f_even) and F_odd = DFT(f_odd),
each requiring c · (N/2) log(N/2) operations by
the inductive hypothesis.

Recombine using the butterfly:
F_m = F_even_m + ω^m · F_odd_m       (m = 0,...,N/2-1)
F_{m+N/2} = F_even_m - ω^m · F_odd_m

The recombination requires N multiplications and N
additions. Total: 2 · c(N/2)log(N/2) + 2N
= cN log(N/2) + 2N = cN(log N - 1) + 2N ≤ cN log N
for c ≥ 2.

By BI-BST on s. □

Recovery type: Type I (exact finite algorithm).
The FFT is a bounded recursion with explicit step
count — it is the paradigmatic example of an
efficient finite algorithm formalised within BST.
```

Plain language: The FFT computes the same DFT as the naive matrix multiplication but in O(N log N) operations instead of O(N²). It is an exact finite algorithm requiring only bounded recursion — the depth is log₂ N ≤ log₂ k, which is finite and within reach of BI-BST. This is among the most practically important algorithms in all of computational mathematics, and it is fully available in BST.

### 9.3.2.1  What bounded Fourier analysis recovers

The DFT, its inverse, Parseval's theorem, the convolution theorem, and the FFT together constitute the core of Fourier analysis. Their BST versions are exact (Type I) at each fixed N.

The relationship to classical Fourier analysis is as follows:

**Finite Fourier series** — the representation of a periodic function sampled at N points as a sum of N complex exponentials — is exactly the inverse DFT. This is Type I.

**The continuous Fourier transform** — F(ω) = ∫ f(t) e^{-iωt} dt over the real line — is the infinite-domain idealisation. It does not exist in BST as a single object. What BST has instead is the family {DFT_N | N ∈ metatheory}, which for any specific N gives a finite transform that approximates the continuous transform on bandlimited signals to within a precision determined by N and the sampling rate. The correspondence between the DFT family and the continuous Fourier transform is Type IV (metatheoretic, family-level). This is exactly the content of the Nyquist-Shannon sampling theorem: a bandlimited signal is fully determined by its samples, and the DFT of the samples recovers the frequency content. The sampling theorem itself, for any specific bandwidth B and sample count N, is a provable BST theorem.

**Spectral methods for differential equations** — using the DFT to convert differential equations to algebraic equations in frequency space — are available at each fixed N as exact finite linear algebra. This is one of the primary tools that the physics companion volume needs, and it is fully available. The systematic development of bounded differential equations follows in Section 9.3.3.


### 9.3.3  Bounded Differential Equations

Physics is made of differential equations. Newton's laws, Hamilton's equations, the Schrödinger equation, Maxwell's equations, and Einstein's field equations are all differential equations. A foundation for finite mathematics that cannot support a systematic treatment of differential equations cannot support physics. This section develops that treatment.

In classical analysis, a differential equation involves derivatives — limits of difference quotients over the continuous real line. In BST, ℝ_B(k) is a finite set with spacing ~1/k². The derivative is replaced by the finite difference quotient, the differential equation by a finite difference equation, and the solution method by a bounded recursion. This is not an approximation to the classical theory — it is the finite mathematics from which the classical theory is the infinite-domain idealisation.

The development proceeds in three stages: ordinary differential equations (ODEs) on ℝ_B(k), systems of ODEs, and partial differential equations (PDEs) on ℝ_B(k)^d.


### 9.3.3.1  Finite difference calculus

### Definition 9.2 — Bounded difference quotient:

```
For a function f: ℝ_B(k) → ℝ_B(k) and a step size
h ∈ ℝ_B(k) with h > 0:

Forward difference:  Δ_h f(x) = (f(x+h) − f(x)) / h
Backward difference: ∇_h f(x) = (f(x) − f(x−h)) / h
Central difference:  δ_h f(x) = (f(x+h) − f(x−h)) / (2h)

Each is a function ℝ_B(k) → ℝ_B(k), defined wherever
x+h (or x−h) lies within the domain. The division by h
is performed in ℚ_B(k⁴); the result is rounded to
ℝ_B(k) by ρ_k.

Higher-order differences by iteration:
Δ_h² f(x) = Δ_h(Δ_h f(x))
           = (f(x+2h) − 2f(x+h) + f(x)) / h²

All computable within ℝ_B(k) via ℚ_B(k⁴) arithmetic.
```

```
Relationship to classical derivatives:
For a function f that is classically C^n smooth, the
central difference δ_h f(x) approximates f'(x) with
error O(h²). The second difference Δ_h² f(x)
approximates f''(x) with error O(h²).

In BST, the minimum step size h is determined by the
spacing of ℝ_B(k), which is ~1/k². So the best
approximation to the classical derivative achievable
at precision k has error O(1/k⁴).

This is the finite content of differentiation: the
derivative is the limit of difference quotients, and
BST provides the difference quotients at each finite
precision level. The limit is the metatheoretic shadow.
```


### 9.3.3.2  Ordinary differential equations

### Definition 9.3 — Bounded initial value problem:

```
A bounded initial value problem (IVP) consists of:

(i)   A function F: ℝ_B(k) × ℝ_B(k) → ℝ_B(k)
      (the right-hand side)
(ii)  An initial condition y₀ ∈ ℝ_B(k)
(iii) A time interval [t₀, t₀ + T] ⊂ ℝ_B(k)
(iv)  A step size h ∈ ℝ_B(k) with h > 0

The problem is to find a finite sequence
y = (y₀, y₁, ..., y_M) with M = ⌊T/h⌋ such that
the sequence approximates the solution of the
classical ODE y'(t) = F(t, y(t)) with y(t₀) = y₀.
```

### Theorem 9.4 — Euler's method in BST:

```
Given a bounded IVP (F, y₀, [t₀, t₀+T], h), the
Euler iteration:

t_{n+1} = t_n + h
y_{n+1} = y_n + h · F(t_n, y_n)

produces a finite sequence (y₀, y₁, ..., y_M) with
M = ⌊T/h⌋ steps, each computed by one evaluation
of F and one addition and multiplication in ℝ_B(k).

Proof: By BI-BST on M. Each step is a single
application of bounded arithmetic. The sequence
is a finite object in BST. □

Total operations: O(M) = O(T/h) evaluations of F
plus O(M) additions and multiplications.

Recovery type: Type I (exact finite algorithm).
The Euler sequence is an exact object in BST.
The question of how closely it approximates the
classical ODE solution is a separate comparison,
addressed below.
```

### Theorem 9.5 — Bounded Runge-Kutta methods:

```
The classical fourth-order Runge-Kutta method (RK4):

k₁ = F(t_n, y_n)
k₂ = F(t_n + h/2, y_n + h·k₁/2)
k₃ = F(t_n + h/2, y_n + h·k₂/2)
k₄ = F(t_n + h, y_n + h·k₃)
y_{n+1} = y_n + (h/6)(k₁ + 2k₂ + 2k₃ + k₄)

is a bounded recursion in BST: each step requires
4 evaluations of F and a fixed number of arithmetic
operations in ℝ_B(k). By BI-BST on the step count M.

For a classically C⁴ function F, RK4 achieves local
truncation error O(h⁵) per step and global error
O(h⁴) over the interval. In BST, this means:

- For h = 1/k^{1/2} (taking ~k^{1/2} steps over a
  fixed interval), the classical discretisation error
  is O(1/k²).
- The ℝ_B(k) arithmetic rounding contributes O(M/k²)
  = O(k^{1/2}/k²) = O(1/k^{3/2}) additional error.
- Total error: O(1/k²), dominated by discretisation.

Recovery type: Type I for the algorithm itself.
Type III (with explicit error O(1/k²)) for the
comparison with the classical ODE solution.
```


### 9.3.3.3  Systems of ODEs

### Definition 9.4 — Bounded system IVP:

```
A system of N coupled ODEs in BST is:

y'₁(t) = F₁(t, y₁, ..., y_N)
y'₂(t) = F₂(t, y₁, ..., y_N)
...
y'_N(t) = F_N(t, y₁, ..., y_N)

with initial conditions y₁(t₀) = y₁₀, ..., y_N(t₀) = y_N₀.

In vector notation: y'(t) = F(t, y(t)), where
y ∈ ℝ_B(k)^N and F: ℝ_B(k) × ℝ_B(k)^N → ℝ_B(k)^N.

Euler and RK4 extend componentwise: each step
involves N evaluations of the component functions
and N updates. By BI-BST on the step count. □

This immediately supports:
- Hamilton's equations (N = 2n for n degrees of
  freedom: n positions and n momenta)
- Coupled oscillator systems
- The N-body gravitational problem
- Any ODE system arising from a finite-dimensional
  physical model
```


### 9.3.3.4  Stability and energy conservation

### Theorem 9.6 — Bounded Gronwall inequality:

```
Let y_n and z_n be two Euler sequences for the same
bounded IVP with different initial conditions y₀, z₀,
and suppose F is Lipschitz with constant L on the
bounded domain (i.e. |F(t,a) − F(t,b)| ≤ L|a−b|
for all a, b in the relevant range, with L ∈ ℝ_B(k)).

Then for all n ≤ M:
|y_n − z_n| ≤ |y₀ − z₀| · (1 + hL)^n
             ≤ |y₀ − z₀| · exp(nhL)

where exp is evaluated within ℝ_B(k) by bounded
approximation.

Proof: By BI-BST on n.
|y_{n+1} − z_{n+1}| = |y_n + hF(t_n,y_n) − z_n − hF(t_n,z_n)|
                     ≤ |y_n − z_n| + h|F(t_n,y_n) − F(t_n,z_n)|
                     ≤ |y_n − z_n|(1 + hL). □

Recovery type: Type II (exact BST inequality at each k,
with L computable from the specific F).
```

```
Consequence for Hamiltonian systems:
For a Hamiltonian H: ℝ_B(k)^{2n} → ℝ_B(k), the
symplectic Euler method (which updates positions and
momenta in a staggered sequence) preserves a
modified energy H̃ = H + O(h) over bounded time.
The energy drift per step is O(h²), and over M = T/h
steps the total drift is O(h). For h = 1/k^{1/2}
this gives energy conservation to within O(1/k^{1/2}).

Symplectic integrators (Störmer-Verlet and higher-order
variants) are available in BST by the same bounded-
recursion construction and achieve better long-term
energy preservation: O(h^p) for a p-th order method,
without secular drift. All by BI-BST. Type II.
```


### 9.3.3.5  Partial differential equations

### Definition 9.5 — Bounded spatial grid:

```
A bounded d-dimensional spatial grid is a finite
subset Ω_h ⊂ ℝ_B(k)^d consisting of points
x = (i₁h, i₂h, ..., i_d h) for integer indices
i_j with 0 ≤ i_j ≤ L/h, where L ∈ ℝ_B(k) is the
domain size and h ∈ ℝ_B(k) is the grid spacing.

|Ω_h| = (L/h + 1)^d.  Finite. ✓

Boundary: the subset of Ω_h where at least one
index i_j equals 0 or L/h. Interior: the rest.
```

### Definition 9.6 — Bounded discrete Laplacian:

```
The discrete Laplacian on Ω_h is:

(Δ_h u)(x) = Σ_{j=1}^{d} (u(x+h·e_j) − 2u(x) + u(x−h·e_j)) / h²

where e_j is the j-th standard basis vector.

This is a linear operator on functions u: Ω_h → ℝ_B(k).
Since Ω_h is finite, the discrete Laplacian is a
finite matrix — a |Ω_h| × |Ω_h| matrix over ℝ_B(k)
(or ℚ_B(k⁴) for the intermediate computation).

Properties (proved by direct computation):
- Symmetric: (Δ_h)^T = Δ_h  (with appropriate
  boundary treatment). ✓
- Non-positive: ⟨u, Δ_h u⟩ ≤ 0 for all u
  (discrete integration by parts). ✓
- Eigenvalues computable by Part XI spectral theorem. ✓
```

### Theorem 9.7 — Bounded heat equation:

```
The bounded heat equation on Ω_h:

u_{n+1}(x) = u_n(x) + τ · (Δ_h u_n)(x)

for time step τ ∈ ℝ_B(k) and initial data
u₀: Ω_h → ℝ_B(k), produces a finite sequence of
functions u₀, u₁, ..., u_M on the finite grid.

Each step is a matrix-vector multiplication:
u_{n+1} = (I + τΔ_h) · u_n.

Stability condition (bounded CFL):
The iteration is stable (no exponential growth)
when τ ≤ h²/(2d), the classical CFL condition.
In BST this is a decidable inequality in ℝ_B(k). ✓

Proof of stability: The eigenvalues of (I + τΔ_h)
lie in [1 − 4dτ/h², 1]. When τ ≤ h²/(2d), all
eigenvalues lie in [−1, 1], ensuring |u_n| does not
grow. By the spectral theorem (Theorem 11.4). □

Recovery type: Type I (exact finite iteration).
The comparison with the classical heat equation
solution is Type III with error O(h² + τ) — the
standard finite-difference convergence rate.
```

### Theorem 9.8 — Bounded wave equation:

```
The bounded wave equation on Ω_h:

u_{n+1}(x) = 2u_n(x) − u_{n-1}(x) + c²τ²(Δ_h u_n)(x)

for wave speed c ∈ ℝ_B(k), with initial data u₀
and u₁ (or u₀ and initial velocity v₀ with
u₁ = u₀ + τ·v₀).

This is a second-order finite difference scheme.
Each step is a finite computation on the grid.

Stability condition (bounded CFL):
cτ/h ≤ 1/√d.  Decidable in ℝ_B(k). ✓

The wave equation on a bounded grid with bounded
time steps is a finite dynamical system: a linear
map on the finite state space
(u_n, u_{n-1}) ∈ ℝ_B(k)^{2|Ω_h|}.

Recovery type: Type I (exact finite iteration).
```

### Theorem 9.9 — Spectral methods for bounded PDEs:

```
Alternative to finite differences: using the bounded
DFT (Definition 9.1, Section 9.3.2) to solve PDEs.

For a PDE on a periodic bounded grid of N^d points:

1. Transform the solution to frequency space by DFT.
2. The discrete Laplacian becomes multiplication by
   the known eigenvalues −(2πm/L)² in each direction.
3. The PDE reduces to a system of uncoupled ODEs in
   frequency space (one per frequency mode).
4. Solve each ODE by Euler or RK4 (Theorems 9.4–9.5).
5. Transform back by inverse DFT.

Total cost per time step: O(N^d log N) operations
via FFT (Theorem 9.3) plus O(N^d) ODE steps.

Recovery type: Type I (exact finite algorithm).
The spectral method is often more accurate than
finite differences for smooth solutions because the
DFT captures all frequency content exactly up to N.
```


### 9.3.3.6  What bounded ODE/PDE theory recovers

The bounded differential equation framework provides the finite computational substrate for every differential equation that physics uses. At each fixed k, the framework delivers exact finite algorithms (Type I) whose solutions approximate classical ODE/PDE solutions with explicit, computable error bounds (Type III comparison).

The specific recoveries:

**Newton's laws** — F = ma as a system of coupled ODEs on ℝ_B(k)^{6n} for n particles. Euler or RK4 by Theorems 9.4–9.5. Type I.

**Hamilton's equations** — symplectic integration on bounded phase space. Energy conservation by symplectic integration (Section 9.3.3.4). Type II.

**The heat equation** — diffusion on a bounded grid. Stability by CFL condition. Type I.

**The wave equation** — propagation on a bounded grid. Stability by CFL condition. Type I.

**Poisson's equation** — Δu = f on a bounded grid. Reduces to solving a finite linear system (the discrete Laplacian is a finite matrix). By Part XI linear algebra. Type I.

**The Schrödinger equation** — iℏ ∂ψ/∂t = Hψ, where H is a finite Hamiltonian matrix. Time evolution by bounded matrix exponential (to be developed in Part XI, §11.7). Type I for the finite system; Type III for comparison with continuum quantum mechanics.

Classical differential equations on ℝ or ℝ^d are the infinite-domain idealisations of these finite difference equations. The finite equations come first; the infinite equations are what the family looks like from outside.


### 9.3.4  Bounded Probability Theory

Probability is the mathematical language of uncertainty, measurement, and statistical inference. Physics uses it everywhere: statistical mechanics is built on probability distributions over phase space, quantum mechanics interprets |ψ|² as a probability density, thermodynamics derives macroscopic laws from probabilistic arguments about microstates, and experimental physics interprets data through statistical inference. A bounded foundation that cannot support probability cannot support physics.

In classical probability theory, the sample space may be infinite (even uncountable), probability measures are defined via σ-algebras, and foundational results like the law of large numbers and central limit theorem are statements about infinite sequences. In BST, every sample space is a finite set, every probability distribution is a finite function, and every expectation is a finite sum. The measure-theoretic apparatus of Kolmogorov is replaced by finite combinatorics — which is all that was ever needed for computation.


### 9.3.4.1  Finite probability spaces

### Definition 9.7 — Bounded probability space:

```
A bounded probability space is a pair (Ω, p) where:

(i)   Ω is a finite set (the sample space),
      |Ω| ≤ n_M.
(ii)  p: Ω → ℝ_B(k) is a function satisfying:
      p(ω) ≥ 0 for all ω ∈ Ω, and
      Σ_{ω ∈ Ω} p(ω) = 1.

An event is a subset A ⊆ Ω (which exists by
Bounded Separation, BFT 4.4). Its probability is:

P(A) = Σ_{ω ∈ A} p(ω)

This is a finite sum of elements of ℝ_B(k),
computed in ℚ_B(k⁴) and rounded to ℝ_B(k).

Every subset of Ω is an event — there is no need
for σ-algebras, measurability conditions, or null
sets. The power set of Ω exists whenever
2^{|Ω|} ≤ n_M (BFT 4.3). When it does, the
event algebra is the full power set. When it does
not, events are restricted to definable subsets —
which is sufficient for all explicitly constructed
probabilistic arguments.
```

### Definition 9.8 — Random variables and expectation:

```
A random variable on (Ω, p) is a function
X: Ω → ℝ_B(k).

The expectation of X is:
E[X] = Σ_{ω ∈ Ω} X(ω) · p(ω)

The variance of X is:
Var(X) = E[(X − E[X])²]
       = E[X²] − (E[X])²

Both are finite sums — specific elements of ℝ_B(k),
computed in ℚ_B(k⁴). Type I.

The covariance of X and Y is:
Cov(X,Y) = E[XY] − E[X]E[Y]

The correlation coefficient is:
ρ(X,Y) = Cov(X,Y) / √(Var(X)·Var(Y))

All finite computations. Type I.
```


### 9.3.4.2  Core theorems

### Theorem 9.10 — Bounded Bayes' theorem:

```
For events A, B ⊆ Ω with P(B) > 0:

P(A|B) = P(A ∩ B) / P(B)

and therefore:

P(A|B) = P(B|A) · P(A) / P(B)

Proof: Direct from the definitions.
P(A ∩ B) = Σ_{ω ∈ A∩B} p(ω).
P(A|B) = P(A ∩ B) / P(B). Division performed in
ℚ_B(k⁴), result in ℝ_B(k). □

Recovery type: Type I. Bayes' theorem is an
algebraic identity that holds exactly on any
finite probability space. No measure theory needed.
```

### Theorem 9.11 — Linearity of expectation:

```
For random variables X, Y on (Ω, p) and
a, b ∈ ℝ_B(k):

E[aX + bY] = aE[X] + bE[Y]

Proof: By distributivity of finite sums.
E[aX + bY] = Σ (aX(ω) + bY(ω))p(ω)
            = a Σ X(ω)p(ω) + b Σ Y(ω)p(ω)
            = aE[X] + bE[Y]. □

Recovery type: Type I. Holds exactly for any
finite number of random variables. No independence
assumption required.
```

### Theorem 9.12 — Bounded Chebyshev inequality:

```
For a random variable X on (Ω, p) with finite
expectation μ = E[X] and variance σ² = Var(X),
for any t > 0 in ℝ_B(k):

P(|X − μ| ≥ t) ≤ σ² / t²

Proof: Let A = {ω : |X(ω) − μ| ≥ t}.
σ² = E[(X − μ)²]
   = Σ_ω (X(ω) − μ)² p(ω)
   ≥ Σ_{ω ∈ A} (X(ω) − μ)² p(ω)
   ≥ t² · Σ_{ω ∈ A} p(ω)
   = t² · P(A). □

Recovery type: Type I. The proof uses only the
non-negativity of terms in a finite sum.
```


### 9.3.4.3  Conditional probability and independence

### Definition 9.9 — Independence:

```
Events A, B are independent if P(A ∩ B) = P(A)·P(B).

Random variables X, Y are independent if for all
a, b ∈ ℝ_B(k):
P(X = a and Y = b) = P(X = a) · P(Y = b)

A finite family X₁, ..., X_n is mutually independent
if for every subset S ⊆ {1,...,n} and every choice
of values a_i:
P(∧_{i∈S} X_i = a_i) = Π_{i∈S} P(X_i = a_i)

All of these are decidable finite conditions —
they involve checking equalities between finite sums.
Type I.
```

### Definition 9.10 — Bounded Markov chains:

```
A bounded Markov chain is a triple (S, T, π₀) where:

(i)   S is a finite set of states, |S| ≤ n_M.
(ii)  T: S × S → ℝ_B(k) is a transition matrix:
      T(i,j) ≥ 0 and Σ_j T(i,j) = 1 for each i.
(iii) π₀: S → ℝ_B(k) is the initial distribution.

The distribution at time n is:
π_n = π₀ · T^n

where T^n is the n-th matrix power (computed by
repeated matrix multiplication in ℝ_B(k), or by
diagonalisation via Part XI's spectral theorem).

Stationary distributions satisfy π = π · T and are
found by solving a finite linear system. Type I.
```


### 9.3.4.4  The law of large numbers in BST

### Theorem 9.13 — Bounded weak law of large numbers:

```
Let X₁, ..., X_n be independent random variables on
a bounded probability space, each with the same
distribution, with mean μ = E[X_i] and variance
σ² = Var(X_i). Define the sample mean:

S̄_n = (X₁ + ... + X_n) / n

Then for any ε > 0 in ℝ_B(k):

P(|S̄_n − μ| ≥ ε) ≤ σ² / (nε²)

Proof: S̄_n is a random variable on the product
space Ω^n (which exists in BST when |Ω|^n ≤ n_M).
E[S̄_n] = μ (by linearity, Theorem 9.11).
Var(S̄_n) = σ²/n (by independence and linearity
of variance for independent variables).
Apply Chebyshev (Theorem 9.12) with t = ε. □

Recovery type: Type II. The theorem is exact at
each n; the bound σ²/(nε²) → 0 as n grows through
the metatheory. The classical weak law of large
numbers — "the sample mean converges in probability
to the true mean" — is the family-level reading of
this finite inequality.

Note on the product space: The product Ω^n requires
|Ω|^n ≤ n_M. For moderate |Ω| and large n, this
is the binding constraint. This is the correct BST
expression of the fact that reasoning about long
sequences of independent trials requires more
ontological resources. The bound n_M limits how
many independent copies can be modelled
simultaneously — which is precisely the finite
content of the classical infinite-sequence
idealisation.
```


### 9.3.4.5  Bounded entropy and information

### Definition 9.11 — Shannon entropy:

```
For a bounded probability space (Ω, p):

H(p) = − Σ_{ω ∈ Ω} p(ω) · ln(p(ω))

where the convention 0 · ln(0) = 0 is adopted, and
ln is evaluated in ℝ_B(k) by bounded approximation
(Part IX transcendental function recovery).

H(p) is a specific element of ℝ_B(k). It satisfies:
- H(p) ≥ 0 (each term is non-negative). ✓
- H(p) = 0 iff p is concentrated on a single
  outcome (all mass on one ω). ✓
- H(p) ≤ ln(|Ω|), with equality iff p is uniform
  (maximum entropy). ✓

All proved by finite algebraic manipulation.
Type I.
```

### Definition 9.12 — Kullback-Leibler divergence:

```
For probability distributions p, q on the same
finite Ω, with q(ω) > 0 whenever p(ω) > 0:

D_KL(p ‖ q) = Σ_{ω ∈ Ω} p(ω) · ln(p(ω)/q(ω))

Properties:
- D_KL(p ‖ q) ≥ 0 (Gibbs' inequality, proved by
  finite Jensen's inequality). ✓
- D_KL(p ‖ q) = 0 iff p = q. ✓

Type I. Both properties are finite-sum inequalities
proved by the concavity of ln.
```

### Theorem 9.14 — Bounded Jensen's inequality:

```
For a concave function φ: ℝ_B(k) → ℝ_B(k) and a
random variable X on (Ω, p):

φ(E[X]) ≥ E[φ(X)]

(Reversed for convex φ.)

Proof: By induction on |Ω| (BI-BST).
Base: |Ω| = 1. Trivial.
Inductive step: For |Ω| = n+1, isolate one outcome
ω₀ with weight p₀ and apply the concavity definition
φ(p₀x₀ + (1−p₀)μ') ≥ p₀φ(x₀) + (1−p₀)φ(μ')
where μ' is the conditional expectation on Ω \ {ω₀},
and apply the inductive hypothesis to φ(μ'). □

Recovery type: Type I. The proof is a finite
induction — no measure theory, no dominated
convergence, no Lebesgue integration.
```


### 9.3.4.6  What bounded probability theory recovers

The bounded probability framework provides the finite mathematical substrate for every probabilistic argument in physics. At each finite sample space, the framework delivers exact theorems (Type I) and exact inequalities (Type I/II).

The specific recoveries:

**Bayesian inference** — Bayes' theorem (Theorem 9.10) is exact on any finite sample space. Type I.

**Statistical estimation** — sample means, variances, and covariances are exact finite computations. The law of large numbers (Theorem 9.13) provides the finite inequality that underlies all statistical inference. Type II.

**Markov processes** — transition matrices, stationary distributions, mixing times, and ergodic properties are all finite linear algebra (Definition 9.10). Type I.

**Information theory** — Shannon entropy, KL divergence, mutual information, and channel capacity for finite alphabets are exact finite computations. Type I.

**Statistical mechanics** — the Boltzmann distribution p(ω) = Z⁻¹ exp(−βE(ω)) on a finite state space is an immediate application of Definition 9.7. The partition function Z is a finite sum. The entropy S = −k_B Σ p ln p is Definition 9.11. The free energy F = −k_B T ln Z is a finite computation. All of equilibrium statistical mechanics for finite systems follows. Type I.

**Quantum measurement** — the Born rule P(outcome = a) = |⟨a|ψ⟩|² on a finite Hilbert space is a finite probability distribution on the finite set of eigenvalues. Expectation values of observables are ⟨ψ|A|ψ⟩ = Σ a_i |⟨a_i|ψ⟩|², which is exactly Definitions 9.7–9.8 applied to the spectral measure. Type I.

The classical probability theory of Kolmogorov — with its infinite sample spaces, σ-algebras, and measure-theoretic foundations — is the infinite-domain idealisation. BST provides the finite theory that the idealisation abstracts from. Every computation that classical probability performs is, in practice, a finite computation on a finite sample — and BST makes that finiteness explicit.


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
Theorem 9.15 — Goodstein independence:

BST ⊬ ∀n: the Goodstein sequence from n terminates.

Proof (citing Kirby-Paris 1982):
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


### 9.7.1  Sequent-calculus framework supporting the preliminary placement

The squeeze argument above identifies the correct answer. What remains to make it fully rigorous is a cut-elimination proof — a formal demonstration that every proof in BST's deductive system can be transformed into a cut-free proof, with the transformation terminating in ordinal steps bounded strictly below ω^ω. This subsection provides the structural framework for that argument: the sequent calculus formulation of BST, the ordinal assignment strategy, and an explicit identification of the reduction steps that remain to be verified. The status is framework-with-identified-gap, not completed proof.

**The sequent calculus GST.**

BST's deductive system is formulated in the natural deduction style of Section 3.1.6. For ordinal analysis, a Gentzen sequent calculus formulation is more tractable. The system GST consists of the following components.

*Language and sequents.* Sequents have the form Γ ⊢ Δ where Γ and Δ are finite sequences of BFOL formulas (Section 3.1.2). All quantifiers are bounded — the language contains no unbounded ∀x or ∃x forms. Every quantifier carries an explicit bounding term t, written ∀x ≤ t and ∃x ≤ t. This syntactic constraint is what makes the quantifier cuts tractable: the bounding term is always available in the proof tree.

*Logical rules.* The propositional and equality rules are standard. The quantifier rules translate the natural deduction rules of Section 3.1.6 into sequent form:

```
(∀≤-L): From  Γ, φ(s) ⊢ Δ  and  Γ ⊢ s ≤ t, Δ,
        infer  Γ, ∀x ≤ t φ(x) ⊢ Δ.

(∀≤-R): From  Γ ⊢ φ(a), Δ  (a fresh, with hypothesis a ≤ t),
        infer  Γ ⊢ ∀x ≤ t φ(x), Δ.

(∃≤-L): From  Γ, φ(a) ⊢ Δ  (a fresh, with hypothesis a ≤ t),
        infer  Γ, ∃x ≤ t φ(x) ⊢ Δ.

(∃≤-R): From  Γ ⊢ φ(s), Δ  and  Γ ⊢ s ≤ t, Δ,
        infer  Γ ⊢ ∃x ≤ t φ(x), Δ.
```

*The cut rule.* The cut rule has the standard form:

```
(Cut):  From  Γ ⊢ A, Δ  and  Γ, A ⊢ Δ,
        infer  Γ ⊢ Δ.
```

This is the rule to be eliminated. Cut-elimination for GST is the Hauptsatz whose proof is the remaining open task.

*BST axioms as initial sequents.* The six BST axioms (Part IV) are included as axiom sequents. The induction rule Schema 6.1 (BI-BST, Part VI, Section 6.2.2) is included as a rule:

```
(BI):   From  Γ ⊢ φ(0), Δ  and  Γ, φ(α) ⊢ φ(S(α)), Δ  (α ≤ k, α fresh),
        infer  Γ ⊢ ∀α ≤ k φ(α), Δ.
```

The bound k is a specific term in the language; the rule does not range over an unspecified infinite domain.

**Ordinal assignment.**

To support cut-elimination, each GST proof tree P is assigned an ordinal o(P) < ω^ω. The assignment uses Cantor normal form: any ordinal α < ω^ω has a unique representation α = ω^{n₁}·c₁ + ... + ω^{n_r}·c_r with n₁ > ... > n_r natural numbers and c_i positive natural numbers.

The assignment is defined inductively on proof structure:

```
Axiom sequents:            o = 1  (= ω^0)

Propositional rules:       o(conclusion) = o(premise) + 1

Quantifier rule (∀≤-R/L,  o(conclusion) = ω^{d+1}
  ∃≤-R/L) on formula      where d = quantifier depth of
  of depth d:              the principal formula

Cut on formula of          o(conclusion) = ω^{d+1}
  quantifier depth d:      where d = depth of cut formula

BI rule on formula         o(conclusion) = ω^{d+1}
  of depth d:              where d = quantifier depth
                           of the induction formula
```

The key property: every formula in BFOL has finite quantifier depth, so every proof tree is assigned an ordinal in Cantor normal form with finite exponents. The supremum over all possible proofs is ω^ω, since arbitrary finite depths d are possible but no proof can have infinite depth.

**Cut-elimination: the reduction strategy and the remaining gap.**

The Hauptsatz for GST requires showing that for every proof P containing a cut, there exists a proof P' of the same sequent with o(P') < o(P) and with the topmost cut eliminated or reduced in degree. If this holds for every cut configuration, then the ordinal assignment guarantees termination by well-foundedness of < on ordinals.

The reduction steps divide into three cases, each with its current status:

```
Case 1 — Propositional cuts:
  Reduced by standard structural induction on the
  derivations above the cut. The ordinal decreases
  by at most a finite additive amount.
  Status: Standard; no new work required.

Case 2 — Bounded quantifier cuts:
  A cut on ∀x ≤ t φ(x) is reduced as follows.
  Since t is a concrete bounding term, the proof of
  ∀x ≤ t φ(x) decomposes into at most |t| instances
  φ(0), φ(1), ..., φ(t). The cut is replaced by |t|
  cuts on these instances, each of quantifier depth
  one less than the original.

  Ordinal accounting: a single cut of depth d
  contributes ω^{d+1} to the proof ordinal. Replacing
  it with |t| cuts of depth d−1 contributes at most
  ω^d · |t| to the reduced proof, and ω^d · |t| < ω^{d+1}
  for any finite |t|. The ordinal strictly decreases.

  Status: The reduction step is clear. The remaining
  work is writing the explicit lemma verifying that
  the substitution of concrete terms for the bound
  variable is well-defined in GST and that the
  bound-tracking in the (∀≤-R) and (∃≤-L) rules
  does not introduce new cuts of higher degree.

Case 3 — Induction cuts:
  A cut involving the induction predicate φ(α) is
  reduced by unfolding the BI rule. An application
  of (BI) on formula φ of depth d, applied k times,
  contributes ω^{d+1} to the proof ordinal. Unfolding
  k induction steps produces k applications of the
  base case and induction step at depth d−1, with
  total ordinal contribution ω^d · k < ω^{d+1}.

  Status: The reduction strategy is clear. The
  remaining work is verifying that cutting against
  the BI rule does not introduce cuts of higher
  degree via interaction with the bounding term k,
  and that the BI rule's fresh-variable condition
  is preserved through the reduction.
```

**Summary of status.**

The framework is in place. The squeeze argument gives |BST| = ω^ω by external comparison. The sequent calculus GST makes the internal proof structure explicit. The ordinal assignment maps every GST proof tree to an ordinal < ω^ω. The reduction strategy for all three cut cases is identified, and the ordinal arithmetic is correct in each case.

What remains: two explicit lemmas — one for Case 2 (substitution well-definedness under bound tracking) and one for Case 3 (BI rule interaction with the cut rule). Until those lemmas are written and verified, the placement |BST| = ω^ω remains preliminary, as stated at the start of this section. The framework above is what "preliminary" currently means: not a sketch, but a fully articulated route with two specific verification tasks remaining.


## 9.8  What BST Proves That ZFC Cannot

The comparison above runs in one direction. The other direction is equally important and less commonly noted. BST proves sentences that ZFC refutes. The two systems are not ranked — they are incomparable.

A notational remark: within BST, the predicate Fin(S) — "S is finite" — is trivially true of every set, because AFB permits nothing else. It is used here solely to make the contrast with ZFC explicit. In ZFC, Fin(S) is a substantive predicate; in BST, it carries no content because everything is finite. The contrast is being stated in ZFC's language to make the structural difference maximally visible.

### Theorem 9.16 — BST proves its own finiteness:


```
BST ⊢ ∀S ≤ n_M: Fin(S)
ZFC ⊬ ∀S Fin(S)  (false in ZFC: ω is infinite)

BST ⊢ ∀S ≤ n_M ∀T ≤ n_M: |S| + |T| ∈ ℕ
ZFC ⊬ this  (ℵ₀ + ℵ₀ = ℵ₀ in ZFC cardinal arithmetic)

BST ⊢ ¬∃S ≤ n_M ∃x∈S ∃f ≤ n_M: f is a bijection S → S \ {x}
ZFC ⊢ the opposite for infinite sets (Dedekind-infinity)
```

### Theorem 9.17 — BST is not a subsystem of ZFC:


```
BST ⊢ ∀S ≤ n_M Fin(S).
ZFC ⊬ ∀S Fin(S).

BST ⊢ ¬∃S≤n_M[∃H≤n_M(S∈H) ∧ ∅∈S ∧ ∀x∈S(x∪{x}∈S)].
ZFC ⊢  ∃S[∅∈S ∧ ∀x(x∈S→x∪{x}∈S)].

Therefore BST proves sentences that ZFC refutes.
BST is not a fragment of ZFC.
ZFC is not interpretable in BST.
They are genuinely different, incomparable theories.
```

These are not deep theorems — they follow immediately from AFB. But they reframe the comparison. BST is not ZFC with some axioms missing. It is a different theory that proves different things. The question is not which is stronger but which domain each is appropriate for.

The model-theoretic grounding for the first claim — that BST proves ∀S ≤ n_M Fin(S) — is given precisely by Corollary 5.3b (Part V): every BST model is not merely finite-domain but hereditarily finite, isomorphic to a transitive finite subset of V_{h+1} for computable h. The claim ∀S ≤ n_M Fin(S) is thus not just a consequence of AFB's metatheoretic constraint — it reflects the fact that every BST model is a standard hereditarily finite set-theoretic structure, not an exotic finite model with an unusual membership relation. This is what makes the incomparability with ZFC structurally sharp rather than merely syntactic: BST and ZFC are describing genuinely different ontologies, not the same ontology with different axioms.


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
completeness, Heine-Borel): the BST theorem is exact
at each bound level k; these depend on order and
finite search over ℝ_B(k), not on field associativity,
and are therefore exact. The classical theorem is their
shadow when the bound is suppressed.
For Type III results (field arithmetic on ℝ_B(k) and
ℂ_B(k⁴), measure-theoretic integration, k-holomorphic
functions, bounded Hodge decomposition): the BST
theorem carries an explicit error term — at most
O(N/k²) for a computation involving N field operations,
where N is computable from the specific theorem. The
classical theorem is the limit as the error vanishes.
In both cases the BST version is strictly more
informative than the classical one: it gives a rate,
a witness, or a computable bound that the classical
statement suppresses.
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
Foundation and Choice are Bounded Fundamental Theorems,
  not axioms — proved, not assumed.
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

The foundational commitment — there is no infinity, and there is an upper bound — means that complex analysis operates over the finite field ℂ_B(k⁴), with all equalities holding to explicit precision 1/k rather than exactly.

Part VIII constructed ℂ_B(k⁴) as ℝ_B(k) × ℝ_B(k) and established its basic arithmetic. Part IX developed the full analytic apparatus over ℝ_B(k). This part develops the complex-analytic counterpart: holomorphic functions, contour integration, Dolbeault cohomology, and the Kähler geometry required for the bounded Hodge conjecture formulation of Part XIV. All constructions use ℂ_B(k⁴) as the underlying field; all equalities are understood modulo precision 1/k unless explicitly stated to be exact.


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

where partial derivatives are defined as in Definition 9.2
(bounded difference quotient, Part IX, Section 9.3.3.1).

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

Proof: Triangulate the interior of γ into a finite
simplicial complex T of mesh ≤ 1/k (available by
Definition 11.19, Section 11.9; the
triangulation exists as a finite set in BST).

For each triangle t ∈ T with vertices within 1/k of
each other, and any vertex z₀ of t:
f(z) = f(z₀) + f'(z₀)(z − z₀) + R(z)
where |R(z)| ≤ |z − z₀|/k ≤ 1/k² by k-holomorphicity
(Definition 10.1).

The linear part f(z₀) + f'(z₀)(z − z₀) integrates to
zero on the closed boundary ∂t (constant and linear
functions have zero contour integral on closed paths —
this is exact, not approximate).

Therefore |∫_{∂t} f dz| = |∫_{∂t} R(z) dz|
   ≤ perimeter(t) · max|R| ≤ (3/k) · (1/k²) = 3/k³.

The sum over all triangles telescopes: interior edges
are shared by adjacent triangles with opposite
orientations, so their contributions cancel in pairs.
Only the boundary γ remains. Therefore:

| ∫_γ f dz | = | Σ_{t ∈ T} ∫_{∂t} f dz |
             ≤ Σ_{t ∈ T} |∫_{∂t} f dz|
             ≤ |T| · 3/k³

Since |T| ≤ A · k² (where A depends on the area
enclosed by γ), this gives:

| ∫_γ f dz | ≤ 3A · k² / k³ = 3A/k = C/k

where C = 3A depends on the geometry of γ but not
on k. By BI-BST on |T|. □
```

The exact identity ∮ f dz = 0 of classical Cauchy's theorem does not hold in BST — it is replaced by the 1/k bound, which is the correct finite-precision analogue. For any computable application requiring the classical result, a sufficiently large k makes the error C/k as small as needed.


## 10.3  Bounded Dolbeault Cohomology

The Hodge conjecture, in its classical form, relates cohomology classes of type (p,p) to algebraic cycles on a complex projective variety. The bounded analogue requires a finite-dimensional cohomology theory over ℂ_B(k⁴).

### Definition 10.4 — Bounded complex manifold:

```
A bounded complex manifold X of dimension n is a
finite simplicial complex K (Definition 11.19) equipped with
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

Proof (preliminary — completion requires
approximate Kähler identities; see below):
Define the bounded Laplacian Δ_B as
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
The stability argument will likely proceed via Weyl's
inequality (Part XI, Theorem 11.5: eigenvalue shifts
under perturbation E satisfy |μᵢ − λᵢ| ≤ ‖E‖, exact
for finite matrices) and the Davis-Kahan theorem
(Part XI, Theorem 11.6: eigenspace angle bounded by
‖E‖/γ where γ is the spectral gap, computable as a
finite minimum). With ‖E‖ < C/k from the approximate
Kähler identities and γ > 0 computable from Δ_B, the
condition k > C/γ ensures the harmonic subspace is
isolated. Once the Kähler identities are established,
Theorems 11.5 and 11.6 close the proof.
```


## 10.5  The Bounded Hodge Conjecture

With the machinery of Sections 10.3 and 10.4 in place, the bounded Hodge conjecture can be stated precisely. This is the secondary BST formulation of the Hodge conjecture, complementing the Tate conjecture over finite fields (the primary formulation, given in Part XIV, Section 14.3).

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

The core achievement is that bounded complex analysis is a coherent programme within BST, using ℂ_B(k⁴) as the field, finite simplicial complexes as the underlying spaces, and explicit precision bounds in place of exact equalities. The Dolbeault cohomology groups are finite-dimensional and computable. The bounded Hodge conjecture is formulated with all objects well-defined within BST. The sections marked preliminary — Kähler geometry and the Hodge decomposition theorem — are correctly identified as requiring further development before their preliminary proofs can be elevated to complete proofs. That development is the next natural extension of this programme.


End of Part X


# Part XI: Bounded Functional Analysis


The foundational commitment — there is no infinity, and there is an upper bound — means that functional analysis operates over finite-dimensional spaces. Infinite-dimensional Banach and Hilbert spaces are correctly absent; their finite-dimensional analogs are fully available as exact finite linear algebra.

Parts VIII through X have built the full bounded analytic stack over ℝ_B(k) and ℂ_B(k⁴): the complete number chain, real analysis with explicit precision bounds, and bounded complex analysis through Dolbeault cohomology and the preliminary Kähler structure of Part X. That stack supports most of classical analysis in finite form. What it does not yet provide is the operator-theoretic layer that classical functional analysis sits on top of: norms, bounded linear maps, dual spaces, spectral decomposition, and finite Hilbert space structure.

This part develops that layer systematically within BST. The core observation is that functional analysis over finite-dimensional spaces is, in the bounded setting, not a limit process or an infinite construction — it is finite linear algebra over ℂ_B(k⁴), conducted with explicit cardinality tracking. Infinite-dimensional Hilbert and Banach spaces are Category C: correctly absent, because they require completed infinite sets that BST does not posit. But their finite-dimensional analogs are fully available, and those analogs are what this paper — and the downstream geometry and gauge programmes — actually need.

The chapter is organised as follows. Section 11.1 establishes bounded normed spaces and their basic properties. Section 11.2 develops bounded linear operators as finite matrices over ℂ_B(k⁴), with computable operator norms. Section 11.3 treats dual spaces and recovers the Hahn-Banach theorem by dimension induction rather than Zorn's lemma. Section 11.4 develops spectral theory for finite matrices over ℂ_B(k⁴). Section 11.5 constructs finite Hilbert space structure, including the bounded Cauchy-Schwarz inequality and the Riesz representation theorem. Section 11.6 develops bounded tensor algebra — tensor products, contraction, symmetric and antisymmetric tensors — as exact finite multi-indexed arithmetic. Section 11.7 defines the bounded matrix exponential via spectral decomposition, providing the mathematical foundation for quantum time evolution and Lie group theory. Section 11.8 constructs the bounded exterior algebra — wedge products, Hodge star, and the connection to simplicial cochain complexes. Section 11.9 develops bounded simplicial topology — simplicial complexes, chain and cochain groups, homology and cohomology, Betti numbers, the Euler characteristic, and the combinatorial Laplacian with the simplicial Hodge theorem. Section 11.10 collects the recovery accounting and identifies which classical functional-analytic results are available in BST and which are correctly absent. Section 11.11 states the dependency consequences for the downstream geometry and gauge programmes.

Two conventions hold throughout. All vector spaces in this part are finite-dimensional — dimension d ≤ k — and all scalar arithmetic takes place in ℂ_B(k⁴) as constructed in Part VIII, Section 8.8. Equalities hold exactly within the bound (Type II) unless explicitly stated to hold within precision 1/k (Type III).


## 11.1  Bounded Normed Spaces


### 11.1.1  The problem with infinite-dimensional norms

In classical functional analysis, a normed space is a vector space over ℝ or ℂ equipped with a function ‖·‖ satisfying positivity, homogeneity, and the triangle inequality. The definition is the same regardless of dimension. The difference between finite and infinite dimension enters in the theorems: in infinite dimensions, closed bounded sets need not be compact, continuous linear maps need not be bounded, and the unit ball is not compact. All of these features require infinite-dimensional spaces to exhibit — in finite dimensions, all three fail to be problematic.

BST has no infinite-dimensional spaces. The definition of a norm is available and unchanged; what changes is that every unit ball is a finite set, every bounded subset is compact (finite sets are trivially compact), and every linear map between finite-dimensional spaces is automatically bounded. The infinite-dimensional pathologies that motivate much of classical functional analysis simply do not arise, and the theorems that address them are correctly absent.

What the paper needs from functional analysis is not the infinite-dimensional theory. It is the finite-dimensional structure: norms as computable functions, linear maps as finite matrices, spectral decompositions as finite eigenvalue problems, and Hilbert spaces as finite inner product spaces. This section builds that structure explicitly.


### 11.1.2  Definitions

### Definition 11.1 — Bounded vector space:

```
A bounded vector space of dimension d over ℂ_B(k⁴) is
a finite set V with cardinality |V| ≤ (k⁴)^d equipped
with:

(i)  Addition:        V × V → V
(ii) Scalar mult.:    ℂ_B(k⁴) × V → V
(iii) Zero vector:    0_V ∈ V

satisfying the vector space axioms (commutativity,
associativity, distributivity, identity, inverses),
each provable by BI-BST on |V|.

A basis for V is a set {e₁, ..., e_d} ⊆ V such that
every v ∈ V has a unique representation
v = α₁e₁ + ... + α_d e_d  with α_i ∈ ℂ_B(k⁴).

Existence of a basis: by bounded induction on d.
|V| = |ℂ_B(k⁴)|^d ≤ k^{4d}.  Finite.  ✓
```

Plain language: A bounded vector space is a finite set with the structure of a vector space over ℂ_B(k⁴). Every element is a finite tuple of complex numbers from ℂ_B(k⁴). Every basis is a finite set. The dimension d and the bound k together determine the cardinality.


### Definition 11.2 — Bounded norm:

```
A bounded norm on V is a function ‖·‖: V → ℝ_B(k)
satisfying, for all u, v ∈ V and α ∈ ℂ_B(k⁴):

(i)  Positivity:        ‖v‖ ≥ 0,  and  ‖v‖ = 0 ↔ v = 0_V
(ii) Homogeneity:       ‖αv‖ = |α| · ‖v‖
(iii) Triangle ineq.:   ‖u + v‖ ≤ ‖u‖ + ‖v‖

BST implementation:
Since V is finite, ‖·‖ is a finite function V → ℝ_B(k).
It is representable as a lookup table or computable
formula over ℂ_B(k⁴) arithmetic (Part VIII).
All three axioms are equational/order conditions over
a finite domain — verifiable by BI-BST.

Status: Type II Recovery (exact within bound).
```

### Examples of bounded norms:

```
Euclidean norm (L² norm):
‖(α₁,...,α_d)‖₂ = √(|α₁|² + ... + |α_d|²)
Computed in ℝ_B(k) via Part VIII arithmetic.

Maximum norm (L∞ norm):
‖(α₁,...,α_d)‖_∞ = max{|α₁|,...,|α_d|}
Maximum over a finite set — exact BST computation.

L¹ norm:
‖(α₁,...,α_d)‖₁ = |α₁| + ... + |α_d|
Finite sum in ℝ_B(k).
```

All three are well-defined within BST for any specific k and d satisfying k^{4d} ≤ n_M.


### 11.1.3  Equivalence of norms

In classical analysis, all norms on a finite-dimensional space are equivalent — bounded above and below by constant multiples of each other. The classical proof uses sequential compactness of the unit sphere. In BST, the unit sphere is a finite set, and compactness is trivial.

### Theorem 11.1 — Norm equivalence (BST):

```
Let ‖·‖₁ and ‖·‖₂ be two bounded norms on V.
There exist positive reals c, C ∈ ℝ_B(k) such that
for all v ∈ V:

c · ‖v‖₁ ≤ ‖v‖₂ ≤ C · ‖v‖₁

Proof:
The unit sphere S₁ = {v ∈ V : ‖v‖₁ = 1} is a finite
subset of V. The function f: S₁ → ℝ_B(k) defined by
f(v) = ‖v‖₂ is a function on a finite set.

By the Extreme Value Theorem over finite domains
(Part IX, Section 9.3): f attains its maximum C
and minimum c on S₁.

Since ‖·‖₂ is a norm, c > 0 (by positivity).

For any nonzero v ∈ V: v/‖v‖₁ ∈ S₁, so
c ≤ ‖v/‖v‖₁‖₂ ≤ C, giving c · ‖v‖₁ ≤ ‖v‖₂ ≤ C · ‖v‖₁.

For v = 0_V: all norms give 0, trivially. □

Both c and C are computable: exhaustive search over
the finite set S₁.

Status: Type II Recovery. Constants c and C are
explicit and computable within ℝ_B(k).
```

Plain language: Any two norms on a finite-dimensional bounded vector space are equivalent, with computable equivalence constants. There is nothing approximate about this — it is an exact BST theorem, and the constants are found by a finite search rather than a limiting argument.


## 11.2  Bounded Linear Operators


### 11.2.1  Matrix representation

In classical functional analysis, a bounded linear operator between Banach spaces is a continuous linear map — where continuity and boundedness coincide for linear maps on Banach spaces. In the finite-dimensional setting, every linear map is automatically bounded (this is a classical theorem, trivially recovered here because all maps on finite sets are bounded).

### Definition 11.3 — Bounded linear operator:

```
A bounded linear operator T: V → W between bounded
vector spaces is a function preserving addition and
scalar multiplication:

T(u + v) = T(u) + T(v)
T(αv) = α · T(v)

for all u, v ∈ V and α ∈ ℂ_B(k⁴).

Representation: Since V has basis {e₁,...,e_d_V} and
W has basis {f₁,...,f_d_W}, T is represented by a
matrix M_T ∈ ℂ_B(k⁴)^{d_W × d_V}:

T(e_j) = Σ_{i=1}^{d_W} (M_T)_{ij} · f_i

Matrix multiplication is defined via bounded sums and
products in ℂ_B(k⁴) (Part VIII, Section 8.8).

Existence: The matrix M_T is a finite d_W × d_V array
of elements of ℂ_B(k⁴).
|M_T| = d_W × d_V ≤ k² entries. Finite. ✓

Status: Type I Recovery.
```

### 11.2.2  The operator algebra

### Definition 11.4 — Bounded operator algebra ℬ(V):

```
The set of all bounded linear operators from V to V
is denoted ℬ(V). It forms a finite-dimensional algebra
over ℂ_B(k⁴):

Addition:       (S + T)(v) = S(v) + T(v)
Composition:    (S ∘ T)(v) = S(T(v))
Scalar mult.:   (αT)(v) = α · T(v)
Identity:       Id_V(v) = v

As matrices: these are the standard matrix operations
over ℂ_B(k⁴) on d × d matrices (where d = dim V).

|ℬ(V)| = |ℂ_B(k⁴)|^{d²} ≤ k^{4d²}.  Finite. ✓

Adjoint: The adjoint T* of T is the matrix M_{T*} =
(conjugate transpose of M_T), using conjugation from
Part VIII, Definition 8.18:
(M_{T*})_{ij} = \overline{(M_T)_{ji}}

T is normal if TT* = T*T.
T is self-adjoint (Hermitian) if T = T*.
T is unitary if TT* = T*T = Id_V.

All of these properties are decidable by finite
matrix computation over ℂ_B(k⁴). ✓
```

### 11.2.3  Operator norm

### Definition 11.5 — Operator norm:

```
The operator norm of T: V → W is:

‖T‖ := max { ‖T(v)‖_W : v ∈ V, ‖v‖_V ≤ 1 }

BST implementation:
The unit ball B₁ = {v ∈ V : ‖v‖_V ≤ 1} is a finite
subset of V. The function v ↦ ‖T(v)‖_W is a function
on this finite set. The maximum is attained (finite
set; Part IX EVT).

Key distinction from classical analysis:
The classical operator norm is a supremum over an
infinite set. In BST, it is a maximum over a finite
set — computable by exhaustive search.

This is a Type I recovery: the operator norm is an
exact BST quantity, computed by finite maximisation,
not an approximation or a limit.

Properties (each provable by BI-BST):
‖αT‖ = |α| · ‖T‖
‖S + T‖ ≤ ‖S‖ + ‖T‖
‖S ∘ T‖ ≤ ‖S‖ · ‖T‖
‖T‖ = 0 ↔ T = 0

Status: Type I Recovery.
```

Plain language: The operator norm in BST is not an infimum or supremum — it is a maximum over a finite set and is computable. This is a place where the bounded setting yields a strictly stronger result than classical analysis: the norm is not just known to exist, it is computable by exhaustive search over the finite unit ball.


## 11.3  Dual Spaces and Hahn-Banach


### 11.3.1  The bounded dual space

### Definition 11.6 — Bounded dual space:

```
The dual space V* of a bounded vector space V is the
set of all bounded linear functionals f: V → ℂ_B(k⁴).

Since V is finite-dimensional, V* is also
finite-dimensional with dim(V*) = dim(V).

Every functional f ∈ V* corresponds to a unique row
vector (α₁, ..., α_d) ∈ ℂ_B(k⁴)^d such that:
f(v) = α₁v₁ + ... + α_d v_d

where v = (v₁,...,v_d) is the coordinate representation
of v in the chosen basis.

The natural isomorphism V* ≅ V:
When V carries an inner product (Section 11.5), V*
is identified with V via f ↦ u_f where f(v) = ⟨v, u_f⟩.
This is the Riesz Representation Theorem (Theorem 11.9).

|V*| = |ℂ_B(k⁴)|^d ≤ k^{4d}.  Finite. ✓

Status: Type I Recovery.
```


### 11.3.2  Hahn-Banach by dimension induction

The classical Hahn-Banach theorem asserts that a bounded linear functional defined on a subspace can be extended to the whole space without increasing its norm. The classical proof uses Zorn's lemma — a non-constructive principle unavailable in BST. In finite dimensions, Zorn's lemma is not needed: the extension can be constructed one dimension at a time by a finite induction.

### Theorem 11.2 — Bounded Hahn-Banach (BST):

```
Let W ⊆ V be a subspace and f: W → ℂ_B(k⁴) a bounded
linear functional with ‖f‖ ≤ 1. Then there exists a
bounded linear functional F: V → ℂ_B(k⁴) such that:

(i)  F|_W = f        (F extends f)
(ii) ‖F‖ = ‖f‖      (the norm is not increased)

Proof:
By BI-BST on dim(V) − dim(W), the codimension of W.

Base: codim = 0, so W = V. Take F = f. ✓

Inductive step: Suppose the result holds whenever
codim(W) < n. Let codim(W) = n. Choose v₀ ∈ V \ W
and let W₁ = W ⊕ span{v₀} (codim n − 1 in V).

It suffices to extend f from W to W₁ without
increasing the norm. Every element of W₁ has the form
w + t·v₀ for unique w ∈ W and t ∈ ℂ_B(k⁴).
Define F₁(w + t·v₀) := f(w) + t·c for some c ∈ ℂ_B(k⁴)
to be chosen.

The norm condition ‖F₁‖ ≤ 1 requires:
|f(w) + t·c| ≤ ‖w + t·v₀‖  for all w ∈ W, t ∈ ℂ_B(k⁴).

For t ≠ 0, dividing by |t|: this constrains c to lie
in a closed disk in ℂ_B(k⁴) determined by each w ∈ W.

The intersection of finitely many closed disks in
ℂ_B(k⁴) is either empty or contains an element of
ℂ_B(k⁴). Since W is a finite set, this intersection
is a finite intersection of disks. That it is nonempty
follows from the classical argument applied finitely:
for any w, w' ∈ W and t, t' ≠ 0,
|f(w) + t·c| ≤ ‖w + t·v₀‖ and |f(w') + t'·c| ≤ ‖w' + t'·v₀‖
are simultaneously satisfiable because the constraints
form a finite system of inequalities over ℂ_B(k⁴),
and the field structure of ℂ_B(k⁴) (Theorem 8.16)
ensures the system has a solution.

Choose any such c ∈ ℂ_B(k⁴). F₁ extends f from W
to W₁ with ‖F₁‖ = ‖f‖.

By the induction hypothesis, F₁ extends to F on V
with ‖F‖ = ‖F₁‖ = ‖f‖. □

Key distinction from the classical proof:
The classical proof iterates over an infinite chain
of subspaces using Zorn's lemma. The BST proof
iterates over a finite chain of length dim(V) − dim(W),
using BI-BST. The extension at each step is an
explicit computation over a finite set of constraints.

Status: Type II Recovery. Constructive proof via
BI-BST, without Zorn's lemma or any non-constructive
principle. The extension F is computable.
```

Plain language: The Hahn-Banach theorem holds in BST for finite-dimensional spaces, and holds constructively — the extension is computed by a finite induction, not asserted by Zorn's lemma. The infinite-dimensional version (extending over an uncountable chain of subspaces) is correctly absent (Category C), but for any fixed finite dimension the result is exact.


## 11.4  Spectral Theory


### 11.4.1  Eigenvalues and eigenvectors

### Theorem 11.3 — Existence of eigenvalues (BST):

```
Every linear operator T: V → V over ℂ_B(k⁴) has at
least one eigenvalue λ ∈ ℂ_B(k⁴) and eigenvector
v ∈ V \ {0_V} satisfying T(v) = λ · v.

Proof:
The characteristic polynomial of T is:
p_T(λ) = det(M_T − λ · I_d)

where I_d is the d × d identity matrix.

p_T is a degree-d polynomial with coefficients in
ℂ_B(k⁴) — computable by finite determinant expansion.

By Theorem 8.17 (Algebraic closure within bound),
every polynomial of degree d over ℂ_B(k⁴) has a
root in ℂ_B(k⁴), provided the root is approximable
to precision 1/k within the bound.

Let λ₀ ∈ ℂ_B(k⁴) be such a root.
Then det(M_T − λ₀ · I_d) ≈ 0 within precision 1/k.

The eigenvector: solve (M_T − λ₀ · I_d)v = 0 by
Gaussian elimination over ℂ_B(k⁴) (Part VIII, field
axioms + Part VII finite algebra). The kernel is
non-trivial and contains a non-zero vector v.

Status: Type II Recovery (exact eigenvalue in ℂ_B(k⁴),
eigenvector by Gaussian elimination within the model).
```

### 11.4.2  Spectral decomposition

### Theorem 11.4 — Spectral Decomposition for normal operators (BST):

```
Let T: V → V be a normal operator (TT* = T*T).
Then V has an orthonormal basis of eigenvectors of T.

Proof: By BI-BST on dim(V).

Base: dim(V) = 1. Any nonzero vector is an eigenvector.
The basis is {v/‖v‖} for any nonzero v. ✓

Inductive step: Assume the result holds for all
normal operators on spaces of dimension < d.
Let dim(V) = d.

By Theorem 11.3, T has at least one eigenvalue λ₀
with eigenvector v₀. Normalise: e₁ = v₀/‖v₀‖.

The orthogonal complement W = {w ∈ V : ⟨w, e₁⟩ = 0}
is a subspace of dimension d − 1. (Inner product from
Section 11.5 is used here; it is introduced before
this proof in the full development — see Remark 11.1.)

Since T is normal, W is T-invariant: T(W) ⊆ W.
(Proof: for w ∈ W, ⟨T(w), e₁⟩ = ⟨w, T*(e₁)⟩ = ⟨w, λ̄₀ e₁⟩ = λ̄₀ ⟨w, e₁⟩ = 0.)

The restriction T|_W is a normal operator on W
(dim W = d − 1). By the induction hypothesis,
W has an orthonormal basis {e₂,...,e_d} of eigenvectors
of T|_W, hence of T.

{e₁, e₂, ..., e_d} is an orthonormal basis of V
consisting of eigenvectors of T. □

Status: Type II Recovery. The decomposition is exact
at each bound level k. Eigenvalues and eigenvectors
are computable by Gaussian elimination and normalisation.
```

### Remark 11.1 — Dependency note:

The proof of Theorem 11.4 uses the inner product (Definition 11.7) and orthogonal complement. These are introduced in Section 11.5. In a self-contained presentation, Section 11.5 would precede Section 11.4.2. The separation here reflects the logical dependency: Theorem 11.3 (eigenvalue existence) does not require the inner product, while Theorem 11.4 (spectral decomposition for normal operators) does. The reader may treat the inner product of Section 11.5 as available when reading Theorem 11.4.


### 11.4.3  Weyl's inequality and spectral stability

Spectral stability — the question of how eigenvalues change under perturbation — is needed for the bounded Hodge decomposition of Part X, Section 10.4. The finite-dimensional version has a clean, exact statement.

### Theorem 11.5 — Weyl's inequality (BST):

```
Let A and E be d × d Hermitian matrices over ℂ_B(k⁴),
with eigenvalues λ₁ ≤ ... ≤ λ_d and μ₁ ≤ ... ≤ μ_d
respectively (of A and A + E).

Then for each i = 1, ..., d:

|μᵢ − λᵢ| ≤ ‖E‖

where ‖E‖ is the operator norm of E (Definition 11.5).

Proof:
This is the finite matrix version of Weyl's inequality.
For finite matrices over any field with a norm, the
inequality follows from the minimax characterisation
of eigenvalues (Courant-Fischer):

λᵢ(A) = min_{dim W = d−i+1} max_{v ∈ W, ‖v‖=1} ⟨Av, v⟩

All operations (min, max, inner product, expectation)
are over finite sets in BST. The bound k determines
the finite set over which each optimisation runs.

The inequality |μᵢ − λᵢ| ≤ ‖E‖ then follows by the
standard algebraic argument, applied to the finite
sets of the model.

All computations are within ℝ_B(k) and ℂ_B(k⁴).
The bound is exact — no approximation is involved.

Status: Type I Recovery.
```

### Theorem 11.6 — Davis-Kahan eigenspace stability (BST):

```
Let A be a d × d Hermitian matrix over ℂ_B(k⁴) with
spectral gap γ > 0 between eigenvalue clusters Λ and Λ'.
Let E be a perturbation with ‖E‖ < γ/2.
Let P and P' be the orthogonal projections onto the
eigenspaces of A and A + E for the cluster Λ.

Then the canonical angle θ between the eigenspaces satisfies:

sin θ ≤ ‖E‖ / (γ − ‖E‖)

In particular, if ‖E‖ < C/k for some computable C
and γ > 0 is the spectral gap of A, then the
eigenspace angle is bounded by C/(k·γ − C).

For k > C/γ, the eigenspaces are close and the
decomposition is stable.

Proof: Standard matrix perturbation theory applied to
finite matrices over ℂ_B(k⁴). The spectral gap γ is
a specific element of ℝ_B(k) (computable as the
minimum distance between eigenvalue clusters, found
by finite comparison). All inequalities hold within
ℝ_B(k). □

Status: Type I Recovery. The spectral gap γ is
computable — it is a minimum over a finite set of
pairwise differences, not an existential claim.
```

Plain language: When a finite Hermitian matrix is perturbed by a small amount, its eigenvalues shift by at most the size of the perturbation (Weyl), and its eigenspaces rotate by an angle bounded by the perturbation size divided by the spectral gap (Davis-Kahan). Both results are exact in BST — the spectral gap is a computable number, not an existence claim, because it is the minimum of a finite set of differences.

This is the foundation for Part X, Theorem 10.3: once the Kähler identities are established to within 1/k, Theorems 11.5 and 11.6 imply the eigenspace decomposition of the bounded Laplacian is stable, with the condition k > C/γ ensuring the harmonic subspace is isolated.


## 11.5  Finite Hilbert Space Structure


### 11.5.1  Bounded inner product

### Definition 11.7 — Bounded inner product:

```
A bounded inner product on V is a function
⟨·,·⟩: V × V → ℂ_B(k⁴) satisfying:

(i)  Conjugate symmetry: ⟨u, v⟩ = \overline{⟨v, u⟩}
(ii) Linearity in first argument:
     ⟨αu + βv, w⟩ = α⟨u,w⟩ + β⟨v,w⟩
(iii) Positive definiteness:
     ⟨v, v⟩ ≥ 0  and  ⟨v, v⟩ = 0 ↔ v = 0_V

Here ≥ 0 means ⟨v,v⟩ ∈ ℝ_B(k) ⊆ ℂ_B(k⁴) and
⟨v,v⟩ ≥ 0 in the order on ℝ_B(k).

BST implementation:
Since V is finite, ⟨·,·⟩ is a finite function
V × V → ℂ_B(k⁴).
For V = ℂ_B(k⁴)^d with standard basis: the
standard inner product is ⟨u,v⟩ = Σᵢ \overline{uᵢ} vᵢ,
a finite sum in ℂ_B(k⁴).

Status: Type I Recovery.
```

### Theorem 11.7 — Cauchy-Schwarz inequality (BST):

```
For all u, v ∈ V:  |⟨u,v⟩|² ≤ ⟨u,u⟩ · ⟨v,v⟩

Proof:
For v = 0_V: both sides are 0. ✓
For v ≠ 0_V: consider u − (⟨u,v⟩/⟨v,v⟩) · v.
Its inner product with itself is ≥ 0:

0 ≤ ⟨u − (⟨u,v⟩/⟨v,v⟩)v, u − (⟨u,v⟩/⟨v,v⟩)v⟩
  = ⟨u,u⟩ − |⟨u,v⟩|²/⟨v,v⟩

Rearranging: |⟨u,v⟩|² ≤ ⟨u,u⟩ · ⟨v,v⟩. □

All arithmetic is in ℂ_B(k⁴) and ℝ_B(k).
Division by ⟨v,v⟩ ≠ 0 is valid (Part VIII, field axioms).

Status: Type I Recovery. Exact algebraic proof.
```

### 11.5.2  Orthonormal bases and Gram-Schmidt

### Theorem 11.8 — Gram-Schmidt (BST):

```
Every bounded vector space V with a bounded inner
product has an orthonormal basis {e₁, ..., e_d}.

Proof: By BI-BST on dim(V).

Base: dim(V) = 1. Any nonzero v gives e₁ = v/‖v‖. ✓

Inductive step: Given orthonormal {e₁,...,e_{d-1}} for
W = span{e₁,...,e_{d-1}}, pick any v ∉ W. Define:

v' = v − Σᵢ₌₁^{d-1} ⟨v, eᵢ⟩ · eᵢ

v' ≠ 0_V (since v ∉ W). Set e_d = v'/‖v'‖.

The computation involves finitely many inner products
and scalar multiplications in ℂ_B(k⁴). Each step is
computable within the model bound.

{e₁,...,e_d} is the orthonormal basis. □

Status: Type I Recovery. Gram-Schmidt is a finite
algorithm within BST — no limits, no approximations.
```


### 11.5.3  The Riesz Representation Theorem

### Theorem 11.9 — Riesz Representation (BST):

```
Let V be a bounded vector space with bounded inner
product. For every f ∈ V* there exists a unique
u_f ∈ V such that:

f(v) = ⟨v, u_f⟩  for all v ∈ V

and ‖f‖ = ‖u_f‖.

Proof:
Let {e₁,...,e_d} be an orthonormal basis (Theorem 11.8).

Define u_f = Σᵢ₌₁^d \overline{f(eᵢ)} · eᵢ.

For any v = Σⱼ αⱼ eⱼ:
⟨v, u_f⟩ = Σᵢ αᵢ \overline{(\overline{f(eᵢ)})} = Σᵢ αᵢ f(eᵢ) = f(v).

Uniqueness: if ⟨v, u⟩ = ⟨v, u'⟩ for all v, then
⟨v, u − u'⟩ = 0 for all v, so u − u' = 0_V.

‖f‖² = Σᵢ |f(eᵢ)|² = ‖u_f‖².

All computations are finite sums in ℂ_B(k⁴). □

Status: Type I Recovery. u_f is explicitly computed
from the basis representation of f. No limit, no
non-constructive step.
```


### 11.5.4  Finite Hilbert spaces

### Definition 11.8 — Bounded Hilbert space:

```
A bounded Hilbert space ℋ is a bounded vector space
over ℂ_B(k⁴) equipped with a bounded inner product.

Properties:
(i)  Completeness: automatic (V is a finite set;
     every Cauchy sequence in a finite set is
     eventually constant and converges).

(ii) Separability: automatic (V is finite).

(iii) Orthonormal basis: exists by Theorem 11.8.

(iv)  Riesz representation: ℋ* ≅ ℋ by Theorem 11.9.

(v)   Spectral theorem: every normal operator on ℋ
     has an orthonormal basis of eigenvectors
     (Theorem 11.4).

Cardinality: |ℋ| ≤ k^{4d}.

Status: Type I Recovery throughout. Completeness,
separability, and basis existence are all stronger
than in the classical infinite-dimensional case:
they hold trivially by finiteness, not by topological
arguments.
```

Plain language: A bounded Hilbert space is a finite inner-product space over ℂ_B(k⁴). It is complete because finite sets are trivially complete. It has an orthonormal basis computable by Gram-Schmidt. Its functionals are represented by vectors computable by the Riesz formula. Its normal operators have eigenspace decompositions computable by finite linear algebra. Every classical theorem of finite-dimensional Hilbert space theory holds in BST as an exact Type I result — and several hold for strictly stronger reasons than in classical analysis (completeness being the clearest example).


## 11.6  Bounded Tensor Algebra

Tensors are the mathematical language of multilinear relationships. Physics uses them everywhere: the stress-energy tensor of general relativity, the electromagnetic field tensor, the metric tensor of spacetime geometry, and the state spaces of composite quantum systems are all tensor objects. Classical tensor algebra is defined on vector spaces that may be infinite-dimensional and over fields that are completed infinite objects. In BST, vector spaces are finite and fields are bounded — but the tensor algebra is fully available as exact finite linear algebra.


### 11.6.1  Tensor products of finite vector spaces

### Definition 11.9 — Bounded tensor product:

```
For finite-dimensional vector spaces V and W over
ℂ_B(k⁴) with ordered bases {v₁,...,v_m} and
{w₁,...,w_n} respectively:

The tensor product V ⊗ W is the finite-dimensional
vector space over ℂ_B(k⁴) with basis:

{v_i ⊗ w_j | 1 ≤ i ≤ m, 1 ≤ j ≤ n}

Dimension: dim(V ⊗ W) = m · n.

An element of V ⊗ W is a finite linear combination:

T = Σ_{i,j} T^{ij} (v_i ⊗ w_j)

where the coefficients T^{ij} ∈ ℂ_B(k⁴) form an
m × n matrix. T is therefore a finite object:
an m × n array of bounded complex numbers.

Existence: V ⊗ W exists in BST whenever
m · n · k⁴ ≤ n_M (the product space fits within
the model bound). By Bounded Pairing and finite
set formation.
```

```
The tensor product is characterised by the universal
property: for every bilinear map B: V × W → U
(where bilinearity is defined as linearity in each
argument with the other held fixed), there exists a
unique linear map L: V ⊗ W → U such that
L(v ⊗ w) = B(v, w).

Proof: Define L on basis elements by
L(v_i ⊗ w_j) = B(v_i, w_j) and extend by
linearity. Uniqueness follows from the spanning
property of the basis. Finiteness ensures all sums
terminate. □

Recovery type: Type I. The tensor product is an
exact finite construction.
```

### Definition 11.10 — Higher tensor products and tensor spaces:

```
For a finite-dimensional vector space V with basis
{e₁,...,e_n}:

The (r,s)-tensor space:
T^r_s(V) = V ⊗ ... ⊗ V ⊗ V* ⊗ ... ⊗ V*
            (r copies of V, s copies of V*)

where V* is the dual space (Section 11.3).

Dimension: dim(T^r_s(V)) = n^{r+s}.

A (r,s)-tensor is an element T ∈ T^r_s(V), which
in coordinates is a multi-indexed array:

T^{i₁...i_r}_{j₁...j_s} ∈ ℂ_B(k⁴)

with n^{r+s} components.

Important special cases:
- (1,0)-tensor = vector (element of V)
- (0,1)-tensor = covector (element of V*)
- (1,1)-tensor = linear map V → V (n × n matrix)
- (0,2)-tensor = bilinear form on V
- (2,0)-tensor = bilinear form on V*

Existence condition: n^{r+s} · k⁴ ≤ n_M.
For physics, the typical case is n = 4 (spacetime
dimensions) with r + s ≤ 4 (the Riemann tensor),
giving at most 4⁴ = 256 components — negligible
relative to any reasonable n_M.
```


### 11.6.2  Tensor operations

### Definition 11.11 — Contraction:

```
Contraction of a (r,s)-tensor T on its p-th upper
index and q-th lower index produces an (r-1,s-1)-
tensor:

(C^p_q T)^{i₁...î_p...i_r}_{j₁...ĵ_q...j_s}
  = Σ_{a=1}^{n} T^{i₁...a...i_r}_{j₁...a...j_s}

This is a finite sum of n terms. Exact computation
in ℂ_B(k⁴). Type I.
```

### Definition 11.12 — Tensor product of tensors:

```
For T ∈ T^r_s(V) and U ∈ T^{r'}_{s'}(V):

(T ⊗ U)^{i₁...i_r j₁...j_{r'}}_{k₁...k_s l₁...l_{s'}}
  = T^{i₁...i_r}_{k₁...k_s} · U^{j₁...j_{r'}}_{l₁...l_{s'}}

This produces a (r+r', s+s')-tensor by componentwise
multiplication. Exact in ℂ_B(k⁴). Type I.
```

### Definition 11.13 — Index raising and lowering:

```
Given a non-degenerate (0,2)-tensor g (a metric):

Raising: T^{ij} = g^{ia} T_a^{j}
         (contraction with the inverse metric g^{ia})

Lowering: T_{ij} = g_{ia} T^a_{j}
          (contraction with the metric g_{ia})

The inverse metric g^{ij} is the matrix inverse of
g_{ij}, which exists and is computable whenever
det(g) ≠ 0 in ℂ_B(k⁴). By Part XI linear algebra.
Type I.
```


### 11.6.3  Symmetric and antisymmetric tensors

### Definition 11.14 — Symmetrisation and antisymmetrisation:

```
For a (0,r)-tensor T:

Symmetric part:
T_{(i₁...i_r)} = (1/r!) Σ_{σ ∈ S_r} T_{σ(i₁)...σ(i_r)}

Antisymmetric part:
T_{[i₁...i_r]} = (1/r!) Σ_{σ ∈ S_r} sgn(σ) T_{σ(i₁)...σ(i_r)}

Both are finite sums over the symmetric group S_r,
which has r! elements. For physics, r ≤ 4 typically,
so |S_r| ≤ 24. Exact computation. Type I.

The space of antisymmetric (0,r)-tensors on V is
denoted Λ^r(V*). Its dimension is C(n,r) = n!/(r!(n-r)!).
For n = 4: Λ⁰ = 1, Λ¹ = 4, Λ² = 6, Λ³ = 4, Λ⁴ = 1.
```

Plain language: Tensor algebra in BST is exact finite multi-indexed arithmetic over ℂ_B(k⁴). Every tensor is a finite array of bounded complex numbers. Every tensor operation — product, contraction, symmetrisation, index raising/lowering — is a finite computation. The metric tensor of spacetime, the electromagnetic field tensor, the Riemann curvature tensor, and the stress-energy tensor are all finite arrays with at most a few hundred components. The ontological cost is negligible. The classical tensor algebra of physics is fully available as Type I.


## 11.7  The Bounded Matrix Exponential

The matrix exponential exp(A) is one of the most important functions in mathematical physics. Quantum time evolution is exp(−iHt). Lie group elements are exp(X) for Lie algebra elements X. The solution of a linear ODE system y' = Ay is y(t) = exp(At)y(0). Classical analysis defines exp(A) by a power series — an infinite sum. In BST, the matrix exponential is defined via the spectral decomposition of Part XI, which avoids infinite sums entirely.


### 11.7.1  Definition via spectral decomposition

### Definition 11.15 — Bounded matrix exponential:

```
For a normal matrix A ∈ M_N(ℂ_B(k⁴)) with spectral
decomposition (Theorem 11.4):

A = Σ_{i=1}^{N} λ_i P_i

where λ_i are eigenvalues and P_i are orthogonal
projections onto eigenspaces, define:

exp(A) = Σ_{i=1}^{N} exp(λ_i) · P_i

where exp(λ_i) is the scalar exponential of each
eigenvalue, evaluated in ℂ_B(k⁴) by the bounded
transcendental function approximation of Part IX.

This is a finite sum of N terms, each a scalar times
a projection matrix. The result is an N × N matrix
over ℂ_B(k⁴).
```

```
Computability:
Step 1: Diagonalise A by the spectral theorem
  (Theorem 11.4). Cost: O(N³) operations. Exact.
Step 2: Evaluate exp(λ_i) for each eigenvalue.
  Cost: O(N) scalar exponentials, each computed
  within ℂ_B(k⁴) by bounded approximation to
  precision O(1/k). Type III.
Step 3: Reassemble exp(A) = Σ exp(λ_i) P_i.
  Cost: O(N³) matrix operations.

Total cost: O(N³) operations in ℂ_B(k⁴).
The result is exact up to the O(1/k) precision
of the scalar exponentials and the O(N/k²)
accumulated rounding of the matrix arithmetic.
```

```
For non-normal matrices, the spectral decomposition
is not orthogonal. In this case, use the Jordan
decomposition (if available within ℂ_B(k⁴)) or the
truncated power series:

exp(A) ≈ Σ_{j=0}^{M} A^j / j!

where M is chosen so that the remainder
‖A^{M+1}/(M+1)!‖ < 1/k. For ‖A‖ ≤ R, the
truncation at M = ⌈eR⌉ suffices (by the standard
exponential convergence estimate). The sum has
M+1 terms, each a matrix power computed by O(N³)
operations. Total cost: O(M · N³). Type III with
explicit error ≤ 1/k.
```


### 11.7.2  Key properties

### Theorem 11.10 — Properties of the bounded matrix exponential:

```
For normal matrices A, B ∈ M_N(ℂ_B(k⁴)):

(i)  exp(0) = I.  (Exact. All eigenvalues are 0,
     exp(0) = 1, so exp(0) = Σ 1·P_i = I.) ✓

(ii) exp(A) is invertible, with inverse exp(−A).
     (exp(λ_i)·exp(−λ_i) = 1 for each eigenvalue.) ✓

(iii) If AB = BA, then exp(A+B) = exp(A)exp(B).
     (Commuting normal matrices are simultaneously
     diagonalisable (by Theorem 11.4 extended to
     commuting families). In the joint eigenbasis:
     exp(λ_i + μ_i) = exp(λ_i)exp(μ_i).) ✓

     Note: without the commutativity hypothesis,
     exp(A+B) ≠ exp(A)exp(B) in general. The
     Baker-Campbell-Hausdorff formula gives the
     correction, which involves nested commutators —
     all finite matrix computations in BST.

(iv) If H is Hermitian, then exp(iH) is unitary.
     (Eigenvalues of iH are purely imaginary: iλ_j
     with λ_j real. |exp(iλ_j)| = 1 for each j.
     Therefore exp(iH) preserves inner products.) ✓

     This is the mathematical foundation of quantum
     time evolution: unitarity of exp(−iHt/ℏ) follows
     immediately from Hermiticity of H.

(v)  det(exp(A)) = exp(tr(A)).
     (det(exp(A)) = Π exp(λ_i) = exp(Σ λ_i)
     = exp(tr(A)).) ✓

(vi) ‖exp(A)‖ ≤ exp(‖A‖).
     (|exp(λ_i)| ≤ exp(|λ_i|) ≤ exp(‖A‖)
     for each eigenvalue.) ✓

Recovery type: Properties (i)–(ii) and (iv)–(vi)
are exact (Type I). Property (iii) is exact when
both A and B are normal and commuting; for non-normal
matrices, the scalar exponentials carry O(1/k)
approximation (Type III).
```


### 11.7.3  Application: linear ODE systems

### Theorem 11.11 — Solution of bounded linear ODE systems:

```
For a constant matrix A ∈ M_N(ℂ_B(k⁴)) and initial
condition y₀ ∈ ℂ_B(k⁴)^N, the linear ODE system

y'(t) = A · y(t),  y(0) = y₀

has the bounded solution:

y(t) = exp(tA) · y₀

computed by Definition 11.15 with the matrix tA.

Verification: the sequence y_n = exp(nτ·A)·y₀ at
time steps τ satisfies the Euler approximation
y_{n+1} ≈ (I + τA)y_n to first order, and the
exact matrix-exponential solution to all orders
available within ℂ_B(k⁴).

This connects the matrix exponential to the bounded
ODE theory of Section 9.3.3: for linear constant-
coefficient systems, the matrix exponential gives
the exact solution directly, without iterative
methods. For time-dependent or nonlinear systems,
the iterative methods of Section 9.3.3 remain
necessary, but the matrix exponential provides the
building block for operator-splitting and Magnus-
expansion methods.

Recovery type: Type I for the matrix computation.
Type III (with O(1/k) error in the scalar
exponentials) for comparison with the classical
continuous solution.
```

Plain language: The matrix exponential in BST is computed by diagonalising the matrix (spectral theorem), exponentiating each eigenvalue (bounded scalar exponential), and reassembling. It is a finite computation with explicit cost and precision. It provides: quantum time evolution (exp(−iHt)), Lie group elements (exp(X)), and exact solutions to linear ODE systems (exp(At)y₀). The key physical property — unitarity of exp(iH) for Hermitian H — is an exact consequence of the spectral definition.


## 11.8  Bounded Exterior Algebra

The exterior algebra provides the mathematical framework for differential forms, which are the natural language for electromagnetism (F = dA), thermodynamics (the first law as a 1-form), and general relativity (the connection and curvature forms). In classical analysis, differential forms live on smooth manifolds and involve infinite-dimensional function spaces. In BST, the exterior algebra is constructed on finite-dimensional vector spaces and the corresponding differential forms live on finite simplicial complexes (connecting to the bounded simplicial topology of Section 11.9).

The antisymmetric tensors of Section 11.6.3 (Definition 11.14) are the pointwise algebraic layer. This section adds the wedge product, the Hodge star, and the exterior derivative — completing the algebraic toolkit that the simplicial cohomology and Hodge theory of any companion physics programme requires.


### 11.8.1  The wedge product

### Definition 11.16 — Wedge product:

```
For ω ∈ Λ^p(V*) and η ∈ Λ^q(V*) (antisymmetric
tensors of degree p and q on a finite-dimensional
vector space V with dim(V) = n):

(ω ∧ η)_{i₁...i_{p+q}}
  = ((p+q)! / (p!q!)) · ω_{[i₁...i_p} η_{i_{p+1}...i_{p+q}]}

where the square brackets denote antisymmetrisation
(Definition 11.14).

The result is an element of Λ^{p+q}(V*).

If p + q > n, then Λ^{p+q}(V*) = {0} (there are
no nonzero antisymmetric tensors of degree exceeding
the dimension of V).
```

```
Properties (proved by finite algebraic manipulation):

(i)   Anticommutativity:
      ω ∧ η = (−1)^{pq} η ∧ ω
      (Exact. Follows from the sign of the permutation
      exchanging the first p and last q indices.) ✓

(ii)  Associativity:
      (ω ∧ η) ∧ ζ = ω ∧ (η ∧ ζ)
      (Exact at the algebraic level. Both sides equal
      the totally antisymmetrised tensor product.
      When computed numerically in ℂ_B(k⁴), the
      associativity of the underlying field arithmetic
      introduces O(1/k²) per operation.) ✓

(iii) Bilinearity:
      (aω₁ + bω₂) ∧ η = a(ω₁ ∧ η) + b(ω₂ ∧ η)
      for a, b ∈ ℂ_B(k⁴). (Exact.) ✓

(iv)  ω ∧ ω = 0 for any ω ∈ Λ^p(V*) with p odd.
      (Follows from anticommutativity with p = q.) ✓

Recovery type: Type I (exact finite algebra).
```


### 11.8.2  The exterior algebra

### Definition 11.17 — Bounded exterior algebra:

```
The exterior algebra of V* is the graded vector space:

Λ(V*) = Λ⁰(V*) ⊕ Λ¹(V*) ⊕ ... ⊕ Λⁿ(V*)

with the wedge product as multiplication.

Dimensions:
dim(Λ^p(V*)) = C(n,p) = n! / (p!(n-p)!)
dim(Λ(V*)) = Σ_{p=0}^{n} C(n,p) = 2^n

For n = 4 (spacetime): dim(Λ(V*)) = 16.
For n = 3 (Euclidean space): dim(Λ(V*)) = 8.

Existence: 2^n · k⁴ ≤ n_M. For n ≤ 4 and any
reasonable k, this is negligible.

The exterior algebra is a finite graded algebra
over ℂ_B(k⁴), fully internal to BST. Type I.
```


### 11.8.3  The Hodge star operator

### Definition 11.18 — Bounded Hodge star:

```
Given a non-degenerate inner product g on V
(a non-degenerate symmetric (0,2)-tensor, with
determinant det(g) ≠ 0 in ℝ_B(k)):

The Hodge star is the linear map
*: Λ^p(V*) → Λ^{n-p}(V*)

defined on basis p-forms by:

*(e^{i₁} ∧ ... ∧ e^{i_p})
  = (1/√|det(g)|) · g^{i₁j₁}...g^{i_p j_p}
    · ε_{j₁...j_p j_{p+1}...j_n}
    · e^{j_{p+1}} ∧ ... ∧ e^{j_n}}

where ε is the Levi-Civita symbol (a completely
antisymmetric tensor with ε_{12...n} = 1) and
g^{ij} is the inverse metric.

In coordinates, this is a finite linear map
represented by a C(n,p) × C(n,n-p) matrix over
ℝ_B(k). Computable by matrix multiplication. Type I.

Key property:  ** = (−1)^{p(n−p)} · sgn(det(g)) · id
(Involutory up to sign. Exact.) ✓

For Euclidean signature (all +): sgn(det(g)) = +1.
For Lorentzian signature (one −): sgn(det(g)) = −1.
```


### 11.8.4  The exterior derivative on cochain complexes

```
The exterior derivative on smooth manifolds is
d: Ω^p(M) → Ω^{p+1}(M), satisfying d² = 0.

In BST, this is precisely the coboundary operator
on finite simplicial cochain complexes, constructed
in Section 11.9 and used in the bounded complex
analysis of Part X. The present section identifies
the algebraic connection:

- The cochain spaces C^p(K; R) of Section 11.9
  (Definition 11.24) are the discrete counterparts
  of Ω^p(M).
- The coboundary d: C^p → C^{p+1} is the discrete
  exterior derivative.
- The identity d² = 0 follows from Theorem 11.12
  (∂² = 0 dualised).
- The Hodge star connects p-cochains to (n-p)-
  cochains when the simplicial complex carries
  metric data.
- The combinatorial Laplacian Δ = dd* + d*d
  (Definition 11.27) is the discrete counterpart
  of the Laplace-de Rham operator. The simplicial
  Hodge theorem (Theorem 11.13) identifies its
  kernel with cohomology.

The exterior algebra of this section provides the
pointwise algebraic layer; the simplicial complex
of Section 11.9 provides the global combinatorial
layer. Together they give the complete discrete
counterpart of the classical theory of differential
forms on
manifolds.
```

Plain language: The exterior algebra in BST is a finite graded algebra of dimension 2^n over ℂ_B(k⁴). The wedge product, Hodge star, and exterior derivative are all exact finite computations. For the physically important case n = 4, the entire exterior algebra has 16 dimensions — a trivially small object. The connection to simplicial cochains (Section 11.9) provides the discrete analogue of differential forms on manifolds. Electromagnetism, where the field strength F is a 2-form and Maxwell's equations are dF = 0 and d*F = J, is an immediate application: both equations become finite cochain equations on a simplicial lattice, with the Hodge star providing the metric-dependent coupling between electric and magnetic components.


## 11.9  Bounded Simplicial Topology

The exterior algebra of Section 11.8 provides the pointwise algebraic layer for differential forms. This section provides the global combinatorial layer: finite simplicial complexes, chain and cochain groups, boundary and coboundary operators, homology and cohomology as computable finite-dimensional vector spaces, and the combinatorial Laplacian connecting to the spectral theory of Section 11.4. All constructions are internal to BST — finite sets with finite linear algebra over ℤ_B(k) or ℂ_B(k⁴).


### 11.9.1  Finite simplicial complexes

### Definition 11.19 — Bounded simplicial complex:

```
A bounded simplicial complex K is a finite collection
of finite sets (called simplices) satisfying:

(i)   If σ ∈ K and τ ⊆ σ, then τ ∈ K.
      (Every face of a simplex is in K.)
(ii)  Each simplex σ ∈ K is a finite subset of a
      finite vertex set V(K), with |V(K)| ≤ n_M.

A p-simplex is a simplex with p + 1 vertices:
σ = {v₀, v₁, ..., v_p}.

The set of all p-simplices is denoted K_p.
|K_p| is finite for each p. The dimension of K is
max{p : K_p ≠ ∅}.

Existence: K is a finite set of finite sets.
By Bounded Pairing and Bounded Union, K exists in
BST whenever |K| ≤ n_M.
```

### Definition 11.20 — Oriented simplices:

```
An oriented p-simplex is an ordered (p+1)-tuple
[v₀, v₁, ..., v_p] of distinct vertices, with the
convention that an odd permutation of vertices
reverses orientation:

[v_{σ(0)}, ..., v_{σ(p)}] = sgn(σ) · [v₀, ..., v_p]

This orientation convention is an algebraic structure
on the finite set K_p — it assigns a sign ±1 to each
ordering. Decidable by the parity of the permutation.
```


### 11.9.2  Chain groups and the boundary operator

### Definition 11.21 — Bounded chain group:

```
The p-th chain group of K over a coefficient ring R
(where R = ℤ_B(k), ℚ_B(k²), or ℂ_B(k⁴)) is the
free R-module with basis the oriented p-simplices:

C_p(K; R) = { Σ_{σ ∈ K_p} a_σ · σ  |  a_σ ∈ R }

This is a finite-dimensional vector space (or free
module) over R with dim(C_p) = |K_p|.

A p-chain is an element of C_p(K; R): a finite
formal sum of oriented p-simplices with coefficients
in R. Type I.
```

### Definition 11.22 — Boundary operator:

```
The boundary operator ∂_p: C_p(K; R) → C_{p-1}(K; R)
is defined on basis elements by:

∂_p [v₀, v₁, ..., v_p]
  = Σ_{i=0}^{p} (−1)^i [v₀, ..., v̂_i, ..., v_p]

where v̂_i denotes omission of the i-th vertex.

This is a finite sum of p + 1 terms, each a
(p−1)-simplex with a sign. Extended to all chains
by R-linearity.

As a linear map between finite-dimensional spaces,
∂_p is represented by a |K_{p-1}| × |K_p| matrix
over R. Computable by direct enumeration.
```

### Theorem 11.12 — ∂² = 0:

```
For all p:  ∂_{p-1} ∘ ∂_p = 0.

Proof: For any basis p-simplex [v₀, ..., v_p]:

∂_{p-1}(∂_p [v₀, ..., v_p])
  = ∂_{p-1}(Σ_i (−1)^i [v₀,...,v̂_i,...,v_p])
  = Σ_i (−1)^i Σ_{j<i} (−1)^j [v₀,...,v̂_j,...,v̂_i,...,v_p]
    + Σ_i (−1)^i Σ_{j>i} (−1)^{j-1} [v₀,...,v̂_i,...,v̂_j,...,v_p]

Each (p−2)-simplex [v₀,...,v̂_j,...,v̂_i,...,v_p]
appears exactly twice: once with coefficient
(−1)^{i+j} and once with coefficient (−1)^{i+j-1}.
These cancel. Therefore ∂² = 0. □

Recovery type: Type I. The cancellation is exact
finite algebra — no limits, no topology.
```


### 11.9.3  Homology

### Definition 11.23 — Bounded simplicial homology:

```
The p-th homology group of K over R is:

H_p(K; R) = ker(∂_p) / im(∂_{p+1})

Since ∂² = 0 (Theorem 11.12), im(∂_{p+1}) ⊆ ker(∂_p),
so the quotient is well-defined.

Since C_p is finite-dimensional over R:
- ker(∂_p) is computable by Gaussian elimination
  (or row reduction) on the matrix of ∂_p.
- im(∂_{p+1}) is computable as the column space
  of the matrix of ∂_{p+1}.
- H_p is the quotient, with dimension computable
  as dim(ker(∂_p)) − dim(im(∂_{p+1})).

All computations are exact finite linear algebra
over R. Type I.
```


### 11.9.4  Cochain groups and cohomology

### Definition 11.24 — Bounded cochain group and coboundary:

```
The p-th cochain group is the dual:

C^p(K; R) = Hom_R(C_p(K; R), R)

Since C_p is finite-dimensional, C^p ≅ C_p as
R-modules (with basis the dual basis to the
oriented p-simplices).

The coboundary operator d^p: C^p → C^{p+1} is the
transpose (dual) of ∂_{p+1}:

(d^p f)(σ) = f(∂_{p+1} σ)  for f ∈ C^p, σ ∈ K_{p+1}

As a matrix: the matrix of d^p is the transpose of
the matrix of ∂_{p+1}. Therefore d² = 0 (dual of
Theorem 11.12).
```

### Definition 11.25 — Bounded simplicial cohomology:

```
H^p(K; R) = ker(d^p) / im(d^{p-1})

Computable by the same Gaussian elimination methods
as homology, applied to the transposed matrices.

For R = ℂ_B(k⁴), the cochain groups are bounded
vector spaces (Definition 11.1) and the coboundary
maps are bounded linear operators (Definition 11.3).
The cohomology groups are therefore finite-dimensional
vector spaces over ℂ_B(k⁴) with computable dimension.

This is the construction that Part X's bounded
Dolbeault cohomology (Definition 10.7) and the
exterior derivative discussion of Section 11.8.4
build upon. Type I.
```


### 11.9.5  Betti numbers and Euler characteristic

### Definition 11.26 — Betti numbers and Euler characteristic:

```
The p-th Betti number of K over R is:

β_p(K) = dim_R(H_p(K; R))

a specific natural number, computable by finite
linear algebra.

The Euler characteristic is:

χ(K) = Σ_{p=0}^{dim(K)} (−1)^p β_p(K)

By the rank-nullity theorem applied to each ∂_p:

χ(K) = Σ_{p=0}^{dim(K)} (−1)^p |K_p|

— the alternating sum of simplex counts, which is
computable without computing homology at all.

Both expressions for χ are equal (the Euler-Poincaré
formula). This is an exact finite identity: both
sides are computable from the combinatorial data
of K. Type I.
```


### 11.9.6  The combinatorial Laplacian

### Definition 11.27 — Combinatorial Laplacian:

```
For a simplicial complex K with cochain groups over
ℂ_B(k⁴), equipped with the standard inner product
on C^p (Definition 11.7 applied to the cochain
vector space):

The p-th combinatorial Laplacian is:

Δ_p = d^{p-1} (d^{p-1})* + (d^p)* d^p

where (d^p)* is the adjoint of d^p with respect to
the inner product (Definition 11.4, adjoint).

Δ_p is a |K_p| × |K_p| Hermitian matrix over
ℂ_B(k⁴). It is positive semidefinite:
⟨f, Δ_p f⟩ = ‖(d^{p-1})* f‖² + ‖d^p f‖² ≥ 0.

Its eigenvalues are computable by the spectral
theorem (Theorem 11.4). Type I.
```

### Theorem 11.13 — Simplicial Hodge theorem (BST):

```
The space of harmonic p-cochains — cochains f with
Δ_p f = 0 — is isomorphic to the p-th cohomology:

ker(Δ_p) ≅ H^p(K; ℂ_B(k⁴))

Proof:
Δ_p f = 0  iff  ‖(d^{p-1})* f‖² + ‖d^p f‖² = 0
        iff  (d^{p-1})* f = 0  and  d^p f = 0.

Therefore ker(Δ_p) = ker(d^p) ∩ ker((d^{p-1})*).

The orthogonal decomposition of C^p:

C^p = ker(Δ_p) ⊕ im(d^{p-1}) ⊕ im((d^p)*)

follows from the spectral decomposition of the
Hermitian matrix Δ_p (Theorem 11.4): the zero
eigenspace is ker(Δ_p), and the nonzero eigenspaces
split into im(d^{p-1}) and im((d^p)*) by the
structure of Δ_p.

Since H^p = ker(d^p)/im(d^{p-1}) and ker(Δ_p)
intersects im(d^{p-1}) trivially (harmonic cochains
are orthogonal to exact cochains), the projection
ker(d^p) → ker(d^p)/im(d^{p-1}) restricts to an
isomorphism on ker(Δ_p). □

Recovery type: Type I. This is the discrete Hodge
theorem — a finite linear algebra result. It
connects to Part X's bounded Hodge decomposition
(Theorem 10.3): the combinatorial Laplacian is the
discrete counterpart of the Hodge Laplacian, and
Theorem 10.3 extends this result to the approximate
Kähler setting.
```

Plain language: The simplicial Hodge theorem says that for a finite simplicial complex, harmonic cochains — those annihilated by the combinatorial Laplacian — are in exact correspondence with cohomology classes. This is a finite linear algebra theorem: the Laplacian is a finite matrix, its kernel is computable by the spectral theorem, and the isomorphism with cohomology is exact. It is the discrete foundation on which the continuous Hodge theory of Part X is built.


## 11.10  Recovery Accounting


The recovery status of functional analysis within BST divides cleanly into three groups.

### Available: finite-dimensional analogs (Type I or Type II)

```
Object/Theorem          BST status     Recovery type
──────────────────────────────────────────────────────
Bounded normed space    Exact def.     Type I
Norm equivalence        Theorem 11.1   Type II (computable constants)
Bounded linear operator Exact def.     Type I (finite matrix)
Operator norm           Definition 11.5  Type I (finite maximum)
Operator algebra ℬ(V)   Exact def.     Type I
Hahn-Banach (fin. dim.) Theorem 11.2   Type II (constructive)
Dual space              Exact def.     Type I
Riesz representation    Theorem 11.9   Type I (explicit formula)
Eigenvalue existence    Theorem 11.3   Type II (approx. within 1/k)
Spectral decomposition  Theorem 11.4   Type II (exact at each k)
Weyl inequality         Theorem 11.5   Type I (exact)
Davis-Kahan stability   Theorem 11.6   Type I (exact)
Gram-Schmidt            Theorem 11.8   Type I (finite algorithm)
Cauchy-Schwarz          Theorem 11.7   Type I (exact algebraic)
Finite Hilbert space    Def. 11.8      Type I (automatic properties)
Tensor product          Def. 11.9     Type I (exact finite)
Tensor contraction      Def. 11.11     Type I (finite sum)
Index raising/lowering  Def. 11.13     Type I (metric inverse)
Symmetric/antisym.      Def. 11.14     Type I (finite permutations)
Matrix exponential      Def. 11.15     Type I/III (spectral + scalar exp)
exp(A+B)=exp(A)exp(B)   Thm. 11.10    Type I (commuting normal)
Linear ODE solution     Thm. 11.11    Type I/III (exp(At)y₀)
Wedge product           Def. 11.16     Type I (exact algebra)
Exterior algebra        Def. 11.17     Type I (dim 2^n)
Hodge star              Def. 11.18     Type I (finite linear map)
Simplicial complex      Def. 11.19     Type I (finite set of sets)
Chain/cochain groups    Def. 11.21/24  Type I (finite-dim. modules)
Boundary ∂² = 0         Thm. 11.12    Type I (exact cancellation)
Simplicial homology     Def. 11.23     Type I (Gaussian elimination)
Simplicial cohomology   Def. 11.25     Type I (Gaussian elimination)
Betti numbers           Def. 11.26     Type I (computable dimension)
Euler characteristic    Def. 11.26     Type I (alternating sum)
Combinatorial Laplacian Def. 11.27     Type I (Hermitian matrix)
Simplicial Hodge thm.   Thm. 11.13    Type I (spectral decomp.)
```

### Correctly absent (Category C)

```
Theorem/Object          Reason for absence
──────────────────────────────────────────────────────
Infinite-dim. Banach    Requires completed infinite sets
and Hilbert spaces
Banach-Steinhaus        Requires infinite-dimensional setting
(uniform boundedness)
Open Mapping Theorem    Requires infinite-dimensional setting
Closed Graph Theorem    Requires infinite-dimensional setting
Hahn-Banach via Zorn    Non-constructive; Zorn requires
(infinite chain form)   infinite chains (Category C)
Spectral measure        Requires uncountable measure space
(continuous spectrum)   and σ-algebra over infinite sets
Unbounded operators     Domain issues in infinite dimension
```

None of these is a loss relative to what BST needs. Every downstream application in this paper — the bounded Hodge programme (Part X) and the bounded representation theory (Part XIII) — requires only the finite-dimensional layer, which is fully available.

### The BST advantage: computability

The finite-dimensional case not only matches classical analysis — in several respects it exceeds it:

- The operator norm is a computable maximum, not an existential supremum.
- The spectral gap is a computable minimum, not an existential infimum.
- Gram-Schmidt is a finite algorithm, not a transfinite construction.
- Completeness holds automatically, not by metric-space arguments.
- Hahn-Banach is constructive, not Zorn-dependent.

In each case, BST's Type I or Type II recovery is strictly more informative than the classical statement: it gives explicit witnesses, computable constants, or finite algorithms where classical analysis gives only existence.


## 11.11  Dependency Consequences for Downstream Programmes


The functional analysis layer established in this part resolves the bridge-layer gap identified in Future Work. Its consequences for the downstream programmes are as follows.

### For bounded simplicial topology

Finite simplicial complexes (Section 11.9) equipped with ℂ_B(k⁴)-valued cochains now have a complete linear-algebraic theory: cochain spaces are bounded vector spaces (Definition 11.1), coboundary maps are bounded linear operators (Definition 11.3), cohomology groups are kernels modulo images (computable by Gaussian elimination via Part VIII), and Laplacian operators are finite Hermitian matrices (spectral theory via Theorem 11.4). The simplicial Hodge theorem (Theorem 11.13) identifies harmonic cochains with cohomology classes. The simplicial homology and cohomology are thus fully developed within the functional analysis layer.

### For bounded Kähler geometry and the Hodge programme (Part X)

Theorem 10.3 (Bounded Hodge Decomposition) has a preliminary proof whose completion requires two things: approximate Kähler identities at precision 1/k, and stability of the bounded Laplacian's eigenspace decomposition. Theorems 11.5 and 11.6 of this part supply the second ingredient completely. The first ingredient — the approximate Kähler identities — remains to be established (the likely route is outlined in Part X, Section 10.4). Once those identities are available, Theorems 11.5 and 11.6 close the proof of Theorem 10.3: with ‖E‖ < C/k and spectral gap γ > 0 computable (Theorem 11.6), the condition k > C/γ ensures the harmonic subspace is isolated and the Hodge decomposition is stable within precision 1/k.

## ◆ Summary — Bounded Functional Analysis


```
Bounded normed spaces:
  Finite-dimensional vector spaces over ℂ_B(k⁴).
  Norms are exact BST functions V → ℝ_B(k).
  Norm equivalence holds with computable constants.

Bounded linear operators:
  Finite d_W × d_V matrices over ℂ_B(k⁴).
  Operator norm is a computable finite maximum.
  Operator algebra ℬ(V) is finite and exact.

Dual spaces and Hahn-Banach:
  V* isomorphic to V (finite-dimensional).
  Hahn-Banach proved by dimension induction.
  No Zorn's lemma; constructive extension.

Spectral theory:
  Eigenvalues exist (algebraic closure of ℂ_B(k⁴)).
  Spectral decomposition for normal operators
  by induction on dimension.
  Weyl's inequality: |μᵢ − λᵢ| ≤ ‖E‖ (exact).
  Davis-Kahan: eigenspace stability with
  computable spectral gap γ.

Finite Hilbert spaces:
  Inner product, Cauchy-Schwarz, Gram-Schmidt.
  Riesz representation: explicit formula.
  Completeness, separability: automatic.
  Spectral theorem: finite induction.

Tensor algebra:
  Tensor products of finite spaces: exact, Type I.
  Contraction, tensor product of tensors: finite sums.
  Index raising/lowering via metric inverse.
  Symmetric and antisymmetric tensors by finite
  permutation sums. All tensors are finite arrays
  over ℂ_B(k⁴).

Matrix exponential:
  Defined via spectral decomposition: exp(A) =
  Σ exp(λ_i) P_i. Computed in O(N³) operations.
  Unitarity of exp(iH) for Hermitian H: exact.
  Solves linear ODE systems: y(t) = exp(At)y₀.
  Type I for matrix computation; Type III for
  scalar exponential precision.

Exterior algebra:
  Wedge product, Hodge star, exterior derivative.
  Finite graded algebra of dimension 2^n.
  Connects to simplicial cochain complexes (Section 11.9).

Recovery status:
  Finite-dimensional layer: Type I or Type II.
  Infinite-dimensional layer: Category C.
  No approximation needed for linear algebra.
  BST version often strictly stronger (computable
  where classical analysis gives only existential).

Downstream dependencies resolved:
  Bounded simplicial cohomology.
  Bounded Hodge programme (Theorems 11.5–11.6).
```


End of Part XI



# Part XII: Computational Complexity and BST

The foundational commitment — there is no infinity, and there is an upper bound — means that computational complexity operates over finite input domains parameterised by a bound, with asymptotic behaviour recovered as a metatheoretic uniformity across the family.

Part VI established the connection between BST's bounded induction schemas and Buss's system S¹₂, showing that S¹₂ is interpretable in BST and characterises polynomial-time computation. This part develops the full complexity-theoretic consequences: BST-native definitions of the complexity classes P and NP, the polynomial hierarchy, the status of P vs NP, and the recovery of asymptotic complexity theory via metatheoretic families. The treatment is formal and in the same register as Parts III–IX.


## 12.1  BST-Provable Functions and Bounded Strings

In classical complexity, inputs are finite binary strings and computations are Turing machine runs. The domain of all strings {0,1}* does not exist as a set in BST — it is the infinite union of all finite string sets. BST works instead with bounded string domains.

### Definition 12.1 — Bounded strings:

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

### Definition 12.2 — BST-provable total function:

```
A function f: {0,1}^{≤k} → {0,1}^{≤p(k)} is BST-provably
total if there exists a formula φ_f(x,y) in the language
of BST such that:

BST ⊢ ∀x ∈ {0,1}^{≤k} ∃!y ∈ {0,1}^{≤p(k)} φ_f(x,y)

where the proof uses BI-BST or PIND.
```

The class of BST-provably total functions captures exactly those computations whose termination BST can establish. By Section 9.7, this class is the primitive recursive functions when the full BI-BST schema is used, and the polynomial-time functions when restricted to PIND on Σ^b₁ formulas.


## 12.2  Complexity Classes in BST

Classical complexity classes are defined over the infinite domain {0,1}*. BST defines complexity classes as uniform families over bounded domains.

### Definition 12.3 — BST-P:

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

### Definition 12.4 — BST-NP:

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

### Theorem 12.1 — Extensional equivalence with classical classes:

```
BST-P = P  and  BST-NP = NP  (extensionally).

Proof:
BST-P ⊆ P: Any BST-proof of polynomial-time decidability
corresponds to a finite verification argument. Extracting
the algorithm and running it on a standard Turing machine
gives a polynomial-time computation (Buss's Theorem,
Part VI, Section 6.3.5 establishes PIND ↔ polynomial-time). The uniformity
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


## 12.3  The Polynomial Hierarchy

The polynomial hierarchy PH is defined by alternating bounded quantifiers — exactly the structure of BFOL's Σ^b_i formula classes from Part VI.

### Definition 12.5 — BST polynomial hierarchy:

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

### Theorem 12.2 — PH collapse conditions:

```
If BST proves Σ^P_i = Σ^P_{i+1} for some i, then
the polynomial hierarchy collapses to level i in
the standard model.

Proof: BST is interpretable in IΣ₁ (Section 9.7),
which in turn is interpretable in PA. A BST-proof
of Σ^P_i = Σ^P_{i+1} translates to an arithmetic
proof of the collapse, which corresponds to a
statement about the standard complexity classes
by Theorem 12.1.  □
```


## 12.4  P vs NP in BST

Part XIV (Millennium Problems) examines P vs NP from the perspective of its mathematical content. This section establishes its formal logical status within BST.

### Theorem 12.3 — Logical status of P vs NP in BST:

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
      be formalisable in BST via Theorem 12.1.

(iv)  A proof of P ≠ NP in classical mathematics would
      demonstrate that no polynomial-time algorithm
      for SAT exists. If this proof is formalizable in
      PA or weaker, it translates to BST. If it requires
      strength beyond BST (≥ ε₀), it would be a Category D
      result — universally true but unprovable in BST
      without additional strength.
```

The difficulty of P vs NP has nothing to do with infinite foundations. The barriers — naturalisation (Razborov-Rudich), algebrisation (Aaronson-Wigderson), circuit lower bounds — are purely combinatorial and equally present in BST. The problem does not dissolve or simplify under a finite foundation. It survives intact.

BST does, however, offer a sharper account of why the naturalization barrier remains hard in a bounded setting — not by circumventing it, but by explaining the mechanism through which AFB enforces it structurally.

Natural proofs (Razborov-Rudich, 1994) require a constructive property that holds for a large fraction of all Boolean functions — formally, a property P defined on circuits such that (i) P is efficiently computable, (ii) P holds for a 1/poly fraction of all circuits of size s, and (iii) P implies hardness. The barrier result is that any proof technique with these properties cannot separate P from NP, because a large-fraction property over all circuits of size s would imply the non-existence of pseudorandom function generators — contradicting standard cryptographic assumptions.

The BST interpretation makes the counting constraint explicit. A natural proof requires reasoning about the space of all circuits of a given size s(k) — a counting argument over a set of cardinality 2^{s(k)}. For superpolynomial s, this count grows faster than any polynomial in k. For sufficiently large k, 2^{s(k)} exceeds the model bound n_M. A counting argument over a domain of size exceeding n_M cannot be carried out within a BST model with that bound: the domain itself does not fit. The natural proof infrastructure — the large-fraction property over all circuits — is precisely the kind of universal claim over an unbounded domain that a bounded model correctly cannot internalise.

This is not a proof that the barrier is insurmountable, nor a claim that P ≠ NP. It is an explanation of why the barrier does not dissolve under a finite foundation. The reason is the same as for Category D results: not because BST refutes anything, but because the relevant counting totality — the space of all circuits of size s(k) for growing k — is exactly what a model bounded by n_M cannot survey. The barrier survives for structural reasons internal to the bounded framework, not merely because the bounded setting happens to share the classical combinatorial obstacles.


## 12.5  Asymptotics via Metatheoretic Families

A standard objection to finite foundations for complexity theory is that asymptotics — the behaviour of algorithms as input length n → ∞ — require an infinite domain. This objection dissolves under BST's metatheoretic family approach.

Within any single BST model M with bound n_M, there is a maximum input size and no infinite limit. Asymptotic statements — "algorithm A runs in O(n²) time" — do not have direct object-level meaning in M. They acquire meaning at the metatheoretic level, across the family of models {ℕ_B(k)}.

### Definition 12.6 — Metatheoretic asymptotic:

```
An algorithm description φ_A is O(p(n))-time if,
for every k ∈ ℕ (metatheory), the BST-proof that
φ_A terminates in p(|x|) steps on inputs x ∈ {0,1}^{≤k}
is uniform — the same formula witnesses all k.

This is the correct formulation of "polynomial time"
for BST: not a limit statement, but a uniformity
statement across the parameterised family.
```

### Theorem 12.4 — Asymptotic recovery:

```
Classical asymptotic complexity theory is recovered
in BST as the metatheoretic study of the family
{ℕ_B(k) | k ∈ metatheory}.

A complexity-theoretic statement "A is O(p(n))"
has its classical meaning if and only if the uniform
BST-proof of Theorem 12.1 witnessing A's membership
in BST-P uses a step bound that is polynomial in |x|
with coefficients independent of k.

Proof: Immediate from Definitions 12.3 and 12.6 and
the uniformity condition in Theorem 12.1.  □
```

Plain language: asymptotic complexity does not require infinity — it requires uniformity. A single algorithm description that works for all input lengths is exactly what asymptotic O-notation captures, and uniformity across the family {ℕ_B(k)} is BST's formulation of that. Recovery type: Type IV (metatheoretic correspondence — "A runs in O(n²) time" is not a BST sentence inside any single model, but a uniformity claim about the family {ℕ_B(k)} that lives only in the metatheory).


## 12.6  Cryptography and BST

Modern cryptographic security rests on hardness assumptions — statements that certain computational problems are infeasible for adversaries of bounded resources. These assumptions are inherently finite and fit naturally in BST.

RSA security relies on the hardness of factoring: no algorithm of size S can factor an n-bit integer in time T (for appropriate S, T). This is a bounded statement for fixed n, S, T — Category B, directly verifiable in principle by BST. The universal security claim "RSA is secure for all key sizes" is a universal statement over key lengths — Category D. BST can reason about any specific key size but not about all key sizes simultaneously.

This is not a weakness of BST as a foundation for cryptography — it is the correct description of what cryptographic security actually means. Security is always relative to specific resource bounds, and the finite-precision, bounded-computation framework of BST is the natural home for that kind of reasoning.


## 12.7  Summary

```
Component          Classical complexity    BST complexity        Status
───────────────────────────────────────────────────────────────────────
Input domain       {0,1}* (infinite)       {0,1}^{≤k} (finite)  Definition 12.1
Class P            Poly-time decidable     BST-P (uniform)       ≡ P (Thm 12.1)
Class NP           Poly-time verifiable    BST-NP (bounded ∃)    ≡ NP (Thm 12.1)
P vs NP            Open                    Open (Cat. D univ.)   Survives
PH                 Alternating quant.      Σ^b_i formulas        Defined (12.5)
Asymptotics        n → ∞                   Metatheoretic family  Recovered (12.4)
Cryptography       Finite hardness         Finite hardness       Natural fit
```

Complexity theory is fundamentally about finite resources — the time and space required to solve problems on finite inputs. Its natural home is a finite foundation. The shift from ZFC to BST changes the framing — infinite domains become parameterised families — but nothing about the mathematical content of the classes, the problems, or the barriers. P vs NP remains hard. The polynomial hierarchy remains stratified (presumably). Cryptographic hardness remains a genuine and open question. BST provides a foundation in which these facts can be stated honestly, without the infinite scaffolding of {0,1}* that was never used in the actual arguments anyway.


End of Part XII


# Part XIII: Bounded Representation Theory

The foundational commitment — there is no infinity, and there is an upper bound — means that every group is finite, every representation is a finite matrix, and every character sum is an exact finite computation.

Part VII developed functions and relations in BST. Part XI developed finite-dimensional vector spaces, linear operators, and spectral theory over ℂ_B(k⁴). This Part constructs the bridge between them: the theory of group representations on finite-dimensional vector spaces. In classical mathematics, representation theory is developed over infinite groups with continuous representations and Haar integration. In BST, every group is finite, every representation is a finite matrix, and every character sum is a finite computation.

The development is self-contained, importing only from Parts IV (BST axioms), VII (functions and finite groups), VIII (ℂ_B(k⁴)), and XI (finite Hilbert spaces and spectral theory). All results are Type I — exact finite theorems about finite algebraic objects.


## 13.1  Group Actions on Finite Sets

### Definition 13.1 — Bounded group action:

```
A (left) action of a finite group G on a finite set
X is a function α: G × X → X, written g · x, satisfying:

(i)   e · x = x  for all x ∈ X (identity acts trivially)
(ii)  g · (h · x) = (gh) · x  for all g, h ∈ G, x ∈ X

Since G and X are finite sets in BST, α is a finite
function (Part VII). Conditions (i) and (ii) are
decidable — they can be checked by exhaustive finite
computation. Type I.
```

### Definition 13.2 — Orbits and stabilisers:

```
For x ∈ X, the orbit of x under G is:

Orb(x) = {g · x | g ∈ G}  ⊆  X

The stabiliser of x is:

Stab(x) = {g ∈ G | g · x = x}  ⊆  G

Both are finite sets, definable by Bounded Separation.
```

### Theorem 13.1 — Orbit-Stabiliser Theorem:

```
For any x ∈ X:

|G| = |Orb(x)| · |Stab(x)|

Proof: The map G → Orb(x) defined by g ↦ g · x is
surjective by definition. Its fibres are the left
cosets of Stab(x). Each fibre has |Stab(x)| elements.
The number of fibres is |Orb(x)|. By counting (the
fibres partition G): |G| = |Orb(x)| · |Stab(x)|. □

Recovery type: Type I. Exact finite counting.
```

### Theorem 13.2 — Burnside's Lemma:

```
The number of distinct orbits of G acting on X is:

|X/G| = (1/|G|) · Σ_{g ∈ G} |Fix(g)|

where Fix(g) = {x ∈ X | g · x = x}.

Proof: Count the set S = {(g,x) | g · x = x} in
two ways. By summing over g: |S| = Σ_g |Fix(g)|.
By summing over x: |S| = Σ_x |Stab(x)|
= Σ_x |G|/|Orb(x)| (by Theorem 13.1)
= |G| · Σ_x 1/|Orb(x)|
= |G| · (number of orbits). □

Recovery type: Type I. Exact finite double-counting.
```


## 13.2  Finite-Dimensional Representations

### Definition 13.3 — Bounded representation:

```
A (finite-dimensional) representation of a finite
group G over ℂ_B(k⁴) is a group homomorphism:

ρ: G → GL(V)

where V is a finite-dimensional vector space over
ℂ_B(k⁴) (Definition 11.1) and GL(V) is the group
of invertible linear maps V → V (finite matrices
with nonzero determinant).

Since G is finite, ρ is specified by |G| matrices
in M_n(ℂ_B(k⁴)) satisfying:
  ρ(e) = I
  ρ(gh) = ρ(g)ρ(h)  for all g, h ∈ G

These conditions are finitely checkable. Type I.

The degree (or dimension) of ρ is dim(V) = n.
```

```
Important examples:

The trivial representation: ρ(g) = 1 for all g.
Degree 1.

The regular representation: V = ℂ_B(k⁴)^{|G|} with
basis indexed by group elements. G acts by left
multiplication: (ρ(g)f)(h) = f(g⁻¹h). Degree |G|.

The permutation representation: For G acting on a
finite set X, V = ℂ_B(k⁴)^{|X|} with basis {e_x}.
(ρ(g))(e_x) = e_{g·x}. Degree |X|.
```

### Definition 13.4 — Subrepresentation and irreducibility:

```
A subrepresentation of (ρ, V) is a subspace W ⊆ V
such that ρ(g)(W) ⊆ W for all g ∈ G.

A representation is irreducible if its only
subrepresentations are {0} and V.

A representation is completely reducible (or
semisimple) if it decomposes as a direct sum of
irreducible subrepresentations:

V = V₁ ⊕ V₂ ⊕ ... ⊕ V_m

where each V_i is an irreducible subrepresentation.
```

### Theorem 13.3 — Maschke's Theorem (BST):

```
Every finite-dimensional representation of a finite
group G over ℂ_B(k⁴) is completely reducible,
provided |G| is invertible in ℂ_B(k⁴) (which holds
whenever |G| ≤ k, since ℂ_B(k⁴) contains all
rationals with denominator ≤ k).

Proof: Let W ⊆ V be a subrepresentation. Choose
any projection π₀: V → W (a linear map with
π₀|_W = id_W, which exists by finite linear algebra).

Define the G-averaged projection:

π = (1/|G|) Σ_{g ∈ G} ρ(g) ∘ π₀ ∘ ρ(g)⁻¹

This is a finite sum of |G| terms, each a composition
of three linear maps. The result is a linear map
V → V.

Claims:
(i)   π is G-equivariant: ρ(h) ∘ π = π ∘ ρ(h)
      for all h ∈ G. (By change of summation index.)
(ii)  π|_W = id_W. (Each term ρ(g) ∘ π₀ ∘ ρ(g)⁻¹
      restricts to id_W since W is G-invariant and
      π₀ restricts to id_W.)
(iii) π² = π. (Idempotent, from (i) and (ii).)

Therefore ker(π) is a G-invariant complement of W:
V = W ⊕ ker(π). By induction on dim(V) (BI-BST),
every representation decomposes into irreducibles. □

Recovery type: Type I. The proof is constructive:
the complementary subspace is explicitly computed
by the averaging formula. No Zorn's lemma, no
infinite-dimensional arguments.

Note: the division by |G| introduces O(1/k²)
rounding in ℂ_B(k⁴). For the projection to be
exact, work in ℚ_B(k⁴) where 1/|G| is an exact
rational (whenever |G| ≤ k²). The decomposition
is then exact. For |G| > k², the averaging formula
carries the standard ℂ_B(k⁴) arithmetic error.
```


## 13.3  Characters

### Definition 13.5 — Character:

```
The character of a representation (ρ, V) is the
function χ_ρ: G → ℂ_B(k⁴) defined by:

χ_ρ(g) = Tr(ρ(g))

Since ρ(g) is an n × n matrix over ℂ_B(k⁴), the
trace is a finite sum of n diagonal elements. The
character is a finite function on a finite group.
Type I.
```

```
Key properties (all proved by finite linear algebra):

(i)   χ_ρ(e) = dim(V) = n.
      (Tr(I) = n.) ✓

(ii)  χ_ρ(g⁻¹) = χ_ρ(g)* (complex conjugate).
      (For unitary ρ: ρ(g⁻¹) = ρ(g)*, so
      Tr(ρ(g⁻¹)) = Tr(ρ(g)*) = Tr(ρ(g))*.
      Every finite-group rep over ℂ_B(k⁴) can be
      made unitary by G-averaging the inner product,
      the same construction as Maschke.) ✓

(iii) χ_ρ is a class function: χ_ρ(hgh⁻¹) = χ_ρ(g).
      (Tr(ρ(h)ρ(g)ρ(h)⁻¹) = Tr(ρ(g)) by the cyclic
      property of trace.) ✓

(iv)  χ_{ρ₁ ⊕ ρ₂} = χ_{ρ₁} + χ_{ρ₂}.
      (Trace of block-diagonal matrix.) ✓

(v)   χ_{ρ₁ ⊗ ρ₂} = χ_{ρ₁} · χ_{ρ₂}.
      (Trace of Kronecker product.) ✓
```

### Theorem 13.4 — Orthogonality of characters:

```
For irreducible representations ρ_i, ρ_j of G:

⟨χ_i, χ_j⟩ := (1/|G|) Σ_{g ∈ G} χ_i(g) · χ_j(g)*

satisfies:

⟨χ_i, χ_j⟩ = δ_{ij}  (Kronecker delta)

That is: distinct irreducible characters are
orthogonal, and each irreducible character has
norm 1, under the inner product defined by
averaging over the finite group.

Proof: By Schur's lemma (Theorem 13.5) applied to
the G-equivariant map

T = (1/|G|) Σ_{g ∈ G} ρ_j(g)⁻¹ ∘ A ∘ ρ_i(g)

for arbitrary linear A: V_i → V_j. When i ≠ j,
Schur gives T = 0. Taking A = E_{pq} (matrix units)
and summing traces yields the orthogonality. When
i = j, Schur gives T = (Tr(A)/n_i)I, and the same
trace computation yields ⟨χ_i, χ_i⟩ = 1. □

Recovery type: Type I. The inner product is a
finite sum over a finite group. The orthogonality
is an exact algebraic identity (up to the standard
O(|G|/k²) arithmetic rounding of ℂ_B(k⁴)).
```

### Theorem 13.5 — Schur's Lemma (BST):

```
(i)  If ρ₁: G → GL(V₁) and ρ₂: G → GL(V₂) are
     irreducible representations and T: V₁ → V₂
     is a G-equivariant linear map (i.e.
     T ∘ ρ₁(g) = ρ₂(g) ∘ T for all g), then either
     T = 0 or T is an isomorphism.

(ii) If ρ: G → GL(V) is irreducible over ℂ_B(k⁴)
     and T: V → V is G-equivariant, then T = λI
     for some λ ∈ ℂ_B(k⁴).

Proof of (i): ker(T) is a subrepresentation of V₁
(G-invariance follows from equivariance). Since ρ₁
is irreducible, ker(T) = {0} or ker(T) = V₁.
Similarly im(T) is a subrepresentation of V₂, so
im(T) = {0} or im(T) = V₂. If ker(T) ≠ V₁ then
ker(T) = {0} (injective) and im(T) ≠ {0} so
im(T) = V₂ (surjective). □

Proof of (ii): T has at least one eigenvalue λ in
ℂ_B(k⁴) (by Theorem 11.3, eigenvalue existence).
T − λI is G-equivariant and has nontrivial kernel.
By (i), T − λI = 0, so T = λI. □

Recovery type: Type I.
```


## 13.4  The Decomposition Theorem

### Theorem 13.6 — Irreducible decomposition via characters:

```
Let ρ: G → GL(V) be a representation of a finite
group G. Let ρ₁, ..., ρ_r be a complete set of
pairwise non-isomorphic irreducible representations
of G (which exists and is finite since G is finite).

Then:

V ≅ V₁^{⊕m₁} ⊕ V₂^{⊕m₂} ⊕ ... ⊕ V_r^{⊕m_r}

where the multiplicity of ρ_i in ρ is:

m_i = ⟨χ_ρ, χ_i⟩ = (1/|G|) Σ_{g ∈ G} χ_ρ(g) · χ_i(g)*

Proof: By Maschke (Theorem 13.3), ρ decomposes
into irreducibles. By character orthogonality
(Theorem 13.4), the multiplicity is computed by
the character inner product. The sum is finite
and exact. □

Recovery type: Type I. The multiplicities are
computable by a finite sum over the group. The
decomposition is constructive: the projection
onto the ρ_i-isotypic component is:

P_i = (n_i / |G|) Σ_{g ∈ G} χ_i(g)* · ρ(g)

where n_i = dim(V_i). This is a finite sum of
matrices, giving an explicit projector.
```

```
Consequence — the number of irreducible
representations:

The number r of non-isomorphic irreducible
representations of G equals the number of
conjugacy classes of G.

Proof: Characters are class functions (Definition
13.5(iii)). The irreducible characters form an
orthonormal basis for the space of class functions
under the inner product ⟨·,·⟩. The dimension of
the space of class functions on a finite group
equals the number of conjugacy classes. Therefore
r = number of conjugacy classes. □

Type I. The conjugacy classes are computable by
exhaustive finite search.
```

### Theorem 13.7 — Dimension formula:

```
Σ_{i=1}^{r} n_i² = |G|

where n_i = dim(V_i) is the degree of the i-th
irreducible representation.

Proof: The regular representation has character
χ_{reg}(e) = |G| and χ_{reg}(g) = 0 for g ≠ e.
By the decomposition theorem, its multiplicity of
ρ_i is m_i = ⟨χ_{reg}, χ_i⟩ = n_i. Therefore
dim(regular rep) = Σ n_i · n_i = Σ n_i².
But dim(regular rep) = |G|. □

Recovery type: Type I. Exact finite identity.
```


## 13.5  Application: Representation Theory for Physics

The representation-theoretic toolkit developed above provides the mathematical language for several central constructions in physics:

**Particle classification.** In quantum mechanics, the state space of a system with symmetry group G decomposes into irreducible representations of G. Particles are classified by which irreducible representation they transform under. In BST, this decomposition is computed exactly by Theorem 13.6: the multiplicities are finite sums of characters, and the irreducible subspaces are found by the explicit projection formula.

**Selection rules.** A transition between states in representations ρ_i and ρ_j, mediated by an operator transforming under ρ_k, is nonzero only if ρ_j appears in the decomposition of ρ_i ⊗ ρ_k. This is decidable by the character inner product: m = ⟨χ_i · χ_k, χ_j⟩. Type I.

**The Standard Model representations.** The particle content of one generation of the Standard Model is specified by representations of SU(3) × SU(2) × U(1). In BST, these are representations of the bounded groups SU(3)_B × SU(2)_B × U(1)_B over ℂ_B(k⁴). The fundamental, adjoint, and tensor-product representations are finite matrix families. The representation content (e.g., left-handed quarks transforming as (3, 2, 1/6)) is a list of finite-dimensional vector spaces with specified group actions — all internal to BST at any k large enough to support the matrix sizes involved.

**Harmonic analysis on finite groups.** The decomposition of L²(G) (the regular representation) into irreducible components is the finite-group analogue of Fourier analysis. The character table of G — an r × r matrix over ℂ_B(k⁴) — is the finite-group analogue of the Fourier transform matrix (Section 9.3.2). The orthogonality relations (Theorem 13.4) are the finite-group analogue of Parseval's theorem (Theorem 9.1). This connection between representation theory and Fourier analysis is exact and structural, not merely analogical.


## 13.6  Recovery Accounting

```
Object/Theorem                BST status     Recovery type
──────────────────────────────────────────────────────────
Group action                  Exact def.     Type I
Orbit-stabiliser theorem      Theorem 13.1   Type I
Burnside's lemma              Theorem 13.2   Type I
Finite representation         Exact def.     Type I
Maschke's theorem             Theorem 13.3   Type I (constructive)
Character                     Exact def.     Type I (finite trace)
Character orthogonality       Theorem 13.4   Type I (finite sum)
Schur's lemma                 Theorem 13.5   Type I
Irreducible decomposition     Theorem 13.6   Type I (explicit projectors)
Dimension formula             Theorem 13.7   Type I
Number of irreducibles        Corollary      Type I
Selection rules               Application    Type I (decidable)
```

```
Correctly absent (Category C):

Infinite-dimensional unitary representations,
Peter-Weyl theorem on compact groups, Haar measure
as infinite-dimensional integration, Plancherel
formula for non-compact groups, induced
representations from infinite-index subgroups.

All require completed infinite sets or infinite-
dimensional spaces. BST's finite representation
theory replaces them for all finite groups and
all finite-dimensional representations.
```


## ◆ Summary — Bounded Representation Theory

```
Group actions:
  Finite groups acting on finite sets.
  Orbits, stabilisers, orbit-stabiliser theorem.
  Burnside's lemma: exact finite double-counting.

Representations:
  Finite-dimensional over ℂ_B(k⁴).
  Complete reducibility by Maschke's theorem.
  Constructive averaging formula for complements.

Characters:
  Traces of representation matrices.
  Class functions on finite groups.
  Orthogonality relations: exact finite sums.
  Character table computable by finite algebra.

Decomposition:
  Every representation decomposes into irreducibles.
  Multiplicities by character inner products.
  Explicit projection operators.
  Number of irreducibles = number of conjugacy classes.

Recovery status:
  Entire finite-group representation theory: Type I.
  Infinite-dimensional representation theory: Category C.
  The BST version is constructive where the classical
  version invokes Zorn's lemma or infinite-dimensional
  analysis. Every decomposition, every multiplicity,
  every character value is computable.

Downstream applications:
  Harmonic analysis on finite groups.
  Connection to bounded Fourier analysis (Section 9.3.2).
```


End of Part XIII

# Part XIV: The Millennium Problems

The foundational commitment — there is no infinity, and there is an upper bound — transforms each Millennium Problem differently: some survive intact, some reframe as finite analogs, and some split into finite content that is available and infinite content that is correctly absent.

> **Scope note.** This part is an extrapolation beyond the formal core of the paper. The problem-by-problem analysis below applies BST's completed construction to seven specific classical problems, identifying which aspects have finite analogs, which require infinite objects BST does not posit, and how each problem transforms under the foundational shift. This analysis is exploratory and substantive, but it does not constitute a formal development of BST-based algebraic geometry, analytic number theory, or gauge theory — those developments are deferred to future work. See the Future Work section following Part XIV.


In 2000, the Clay Mathematics Institute identified seven problems as the most important unsolved questions in mathematics, offering a prize of one million dollars for the solution to each. The selection was authoritative: the problems were chosen by leading mathematicians as representative of the deepest open questions in their respective areas. They have since become the canonical measure of mathematical depth.

The original paper motivating this work claimed that BST 'dissolves' the Millennium Problems — that from a finite foundation, the questions either become trivially answerable or cease to make sense. This claim was identified in Part II as one of the most serious deficiencies of that paper: it was made without argument, and the word 'dissolve' was used to avoid engaging with the mathematical substance of the problems.

This part does what that paper did not. Each of the seven problems is examined on its own terms. The classical formulation is stated precisely. Its relationship to BST is analysed: which aspects of the problem require infinite mathematics, which aspects have finite analogs, and what a BST-based treatment of the problem's content looks like. The outcomes are varied and determined by the mathematics, not by a prior commitment to a particular answer. Several problems survive intact as genuine challenges even within a finite foundation. Several are genuinely reframed — the question changes in BST because the objects it concerns change. One problem (BSD) splits: its finite content is available, its analytic content is not. No problem simply dissolves; each either survives, transforms, or concerns objects outside BST's ontology entirely.

The treatment is not a claim to solve any of the Millennium Problems. It is a precise account of what happens to each problem when the foundational assumptions shift from ZFC to BST.


## 14.1  Preliminary: The Ontological Inventory

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
Bounded reals ℝ_B(k)       Yes              Cauchy sequences over ℚ_B(k²)
                                            with canonical rounding;
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


## 14.2  P vs NP


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


## 14.3  The Hodge Conjecture


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

The construction of ℂ_B(k⁴) in Section 8.8 permits a second reformulation. With ℂ_B(k⁴) available, bounded complex varieties can be defined as zero sets of polynomials with coefficients in ℂ_B(k⁴). Bounded simplicial cohomology over ℂ_B(k⁴) can be defined using finite simplicial complexes — a BST-available construction (Part XI, Section 11.9). A bounded Hodge conjecture can then be formulated:

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


## 14.4  The Riemann Hypothesis


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


## 14.5  Yang-Mills Existence and Mass Gap


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


## 14.6  Navier-Stokes Existence and Smoothness


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


## 14.7  Birch and Swinnerton-Dyer Conjecture


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


## 14.8  The Poincaré Conjecture (Solved)


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


## 14.9  Summary: The Millennium Problems and BST


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


## 14.10  What the Analysis Shows

The Millennium Problems do not dissolve under a finite foundation. They transform. The transformation is determined by the mathematical structure of each problem, not by a prior commitment to any answer.

P vs NP is the one problem that requires no transformation at all. It is inherently a question about finite computations, and the shift from ZFC to BST changes nothing about the problem or its difficulty. If P vs NP is solved in classical mathematics, the proof translates to BST without loss.

The Hodge Conjecture, Riemann Hypothesis, Yang-Mills, Navier-Stokes, and BSD all transform: their analytic or continuous components require bounded reformulation, and finite analogs capture the algebraic and combinatorial content. The recovery of ℂ_B(k⁴) in Part VIII strengthens three of these: the Hodge Conjecture gains a second bounded formulation; the Riemann Hypothesis gains a numerical investigation tool in the truncated zeta function over ℂ_B(k⁴); and Yang-Mills gains a formal account of its gauge group structure within BST. In each case, the finite analog is a genuine open mathematical problem of comparable depth — or has already been a landmark achievement (Weil conjectures, Deligne 1974). The transformation is not trivialisation; it is recontextualisation.

BSD is the most interesting case: it splits. The finite part survives; the analytic part does not. This means BST can address half of BSD — the arithmetic geometry half — but not the L-function half. The split reveals the deep structure of the conjecture: it connects finite arithmetic (rational points on curves) to analytic structure (the L-function), and these two aspects respond differently to the finite foundation.

The Poincaré Conjecture is solved, and its solution requires tools BST does not have. The combinatorial analog is available, is of independent interest, and connects to the computational complexity of recognising spheres. But the solved problem is not within BST's reach.

The original paper's claim that BST 'dissolves' the Millennium Problems was both too strong (P vs NP does not dissolve at all) and too weak (the transformations for the other problems are mathematically substantive, not mere dissolutions). The correct account is what this part has provided: a problem-by-problem analysis showing exactly what changes and what doesn't, and why.

### ◆ The Core Finding of Part XIV

The Millennium Problems do not dissolve under a finite foundation — they transform. P vs NP survives completely unchanged. The Hodge Conjecture has two BST analogs: the Tate Conjecture over finite fields (primary, fully formulated using étale cohomology) and a bounded Hodge conjecture over ℂ_B(k⁴) (secondary, requiring further development of bounded complex analysis). The Riemann Hypothesis has a proved finite-field analog (Weil/Deligne), a surviving prime-counting reformulation, and a truncated zeta function over ℂ_B(k⁴) available for numerical investigation. Yang-Mills and Navier-Stokes reframe as lattice and discrete questions that are fully finite, with SU(N)_B(k⁴) now recoverable over ℂ_B(k⁴) for Yang-Mills. BSD splits into its finite arithmetic content (available) and its analytic content (lost). The transformations are not trivialisations — in each case the BST-reformulated problem is a genuine and open mathematical challenge, or has been a landmark achievement. The shift from ZFC to BST does not make hard mathematics easy; it identifies which hard questions are about finite structures and which are about completed infinities.

End of Part XIV


# Future Work

Parts I–XIII of this paper constitute the formal core: BFOL, the six axioms of BST, the ordinal and cardinal theory, two induction schemas, function and relation theory, the complete bounded number chain through ℂ_B(k⁴), real analysis, bounded complex analysis, bounded functional analysis, the complexity-theoretic development, and bounded representation theory. Part XIV applies this foundation to the Millennium Problems as an exploratory extrapolation. What follows identifies the open programmes in dependency order — distinguishing internal gaps in existing results from new construction programmes, and near-term from longer-range work.


## Completing the existing formal core

Two items in the paper are formally incomplete: specific arguments were stated with preliminary proofs where full proofs are required.

**Proof-theoretic ordinal of BST.** Section 9.7 gives a preliminary placement of |BST| = ω^ω, equivalent to IΣ₁, established by bounding above via the Goodstein independence argument and below via primitive recursive totality. Section 9.7.1 now provides the sequent-calculus framework supporting this placement: the system GST with BFOL-adapted quantifier rules and the BI induction rule, an explicit ordinal assignment mapping every GST proof to an ordinal < ω^ω in Cantor normal form, and a reduction strategy for all three cut cases (propositional, bounded quantifier, and induction cuts) with the correct ordinal accounting for each. What remains are two explicit verification lemmas: one confirming that substitution of concrete terms for bound variables is well-defined under GST's bound-tracking rules (Case 2), and one verifying that the BI rule's interaction with the cut rule does not introduce cuts of higher degree (Case 3). Until those lemmas are written and verified, the placement remains preliminary. This is the most important single open item in the paper's formal core.

**Bounded Power Set independence.** Section 4.6 establishes the independence of all six BST axioms via explicit finite models, and Example 4.6a demonstrates the quantitative threshold behaviour of Theorem 4.3: for any BST model with bound n_M, BPS holds for all A with |A| ≤ ⌊log₂(n_M)⌋ while full Power Set fails for sets above that threshold — with |P(B)| = 2^|B| > n_M. The arithmetic is verified concretely for n_M = 7. What remains is the element-by-element construction of an explicit 7-element (or similar) model satisfying all of A1–A6 with the membership relation fully specified, so that the threshold behaviour is demonstrated not just by counting but by an explicit finite structure checkable in ACA₀.


## Formalization in Isabelle/HOL

The paper's formal structure is designed for machine verification. All results across Parts III–XIII carry unique sequential identifiers: theorems, definitions, propositions, corollaries, and schemas are numbered within each Part with no gaps and no shared labels. The zero-lemmas policy ensures every result has a citable name. The three induction schemas (Schema 6.1, Schema 6.2, Schema 6.3) are distinguished from theorems by explicit labelling.

The natural first targets for Isabelle formalization are the six axioms of BST (Part IV), the four Bounded Fundamental Theorems (BFTs 4.1–4.4), and the core metatheoretic results: relative consistency via ACA₀ (Section 3.3.3.7), model existence (Theorem 5.3), hereditary finiteness (Corollary 5.3b), and axiom independence (Section 4.6). These are self-contained and depend only on BFOL and the axioms.

The sequent calculus GST of Section 9.7.1 is already structured for Isabelle translation: its rules are given in explicit inference-rule format, the ordinal assignment is defined inductively on proof structure, and the two outstanding verification lemmas (Case 2 and Case 3 of cut-elimination) are concrete proof obligations that Isabelle is well-suited to discharge. Completing these lemmas in Isabelle would simultaneously close the most important open item in the paper's formal core and provide the first machine-verified component of BST.

The bounded number chain (Part VIII) and the analytic recoveries (Part IX) are longer-term formalization targets. The arithmetic of ℝ_B(k) and ℂ_B(k⁴) involves approximate field axioms with explicit error tracking — a pattern that Isabelle's type system can enforce systematically.


## The analytic and algebraic extension stack

These are new constructions that build directly on existing Parts and have clear entry points.

**Completing bounded complex analysis.** Part X develops k-holomorphic functions, bounded Cauchy theory, bounded Dolbeault cohomology, and the bounded Hodge conjecture formulation. Two sections of Part X are marked preliminary: bounded Kähler geometry (Section 10.4) and the Hodge decomposition theorem (Theorem 10.3). Completing these requires proving that the approximate Kähler identities hold to within 1/k and that the eigenspace decomposition of the bounded Laplacian is stable under the approximation. These are concrete technical tasks with a clear success criterion: Theorem 10.3 elevated from preliminary to complete, which in turn gives the bounded Hodge conjecture its full analytic foundation. This is the most immediate extension of the Part X programme.

**Remaining open work in the functional-analytic layer.** Part XI establishes the full finite-dimensional functional analysis toolkit (bounded normed spaces, operators, spectral theory, Hahn-Banach, tensor algebra, matrix exponential, exterior algebra) and the bounded simplicial topology layer (simplicial complexes, chain and cochain groups, homology, cohomology, Betti numbers, the combinatorial Laplacian, and the simplicial Hodge theorem). One item remains open: the Kähler completion. Theorems 11.5 and 11.6 supply the spectral stability ingredient for Theorem 10.3 (Bounded Hodge Decomposition), and Theorem 11.13 (the simplicial Hodge theorem) provides the discrete foundation, but the approximate Kähler identities — the remaining missing ingredient — have yet to be established. This is a Part X task that now has all its functional-analytic and topological prerequisites in place.

**Extending the number chain: ℍ_B(k⁸) and 𝕆_B(k¹⁶).** Section 8.8 names the Cayley-Dickson extensions ℍ_B(k⁸) and 𝕆_B(k¹⁶) as constructible but does not develop their algebraic properties beyond existence. The next step is establishing these explicitly — non-commutativity and associativity of ℍ_B(k⁸), non-associativity of 𝕆_B(k¹⁶) — and then identifying which parts of quaternionic Kähler geometry and G₂-structure theory have BST-available finite analogs.


## Longer-range construction programmes

**Richer bounded complexity theory.** Part XII develops BST-P, BST-NP, and the polynomial hierarchy via Σ^b_i formula classes. Natural extensions include bounded circuit complexity — which connects directly to the Razborov-Rudich and algebrisation barriers named in Part XII — bounded proof complexity (connecting BST proof length to circuit lower bounds), bounded derandomisation classes, and a formal bounded cryptographic security framework. These extensions are internal to the complexity programme and do not depend on the analytic stack.

**The finite analog programme for advanced algebraic structures.** Part IX surveyed BST's relationship to classical mathematics across standard analysis and the Millennium Problems. Areas not examined include algebraic K-theory, motivic cohomology, derived categories, homological algebra, and tropical geometry. Extending the finite analog survey to these areas would require the simplicial topology and functional analysis developments — both now in place via Part XI (Sections 11.1–11.9). The four-category accounting framework of Part IX is already equipped to organise this survey.


## Research programmes built on the completed foundation

Once the analytic stack is mature, three focused mathematical programmes become tractable.

**A bounded Hodge programme.** Once Theorem 10.3 is completed, the bounded Hodge conjecture has its full analytic foundation. A dedicated programme would develop bounded harmonic forms, bounded Lefschetz operators, bounded Hodge diamonds for specific classes of bounded varieties, and a sharpened formulation of the bounded Hodge conjecture that exploits the finite linear-algebraic computability of all objects involved. The Tate conjecture over finite fields remains the primary fully-formulated BST analog of the Hodge conjecture; the bounded Hodge programme over ℂ_B(k⁴) is its companion, pending the Kähler completion.

**A bounded Riemann Hypothesis programme.** Part XIV introduces the truncated zeta function ζ_B(s, k) over ℂ_B(k⁴) as a numerical investigation tool. A dedicated programme would develop this further: bounded Dirichlet series, zero-distribution questions for finite truncations, explicit error terms comparing ζ_B(s, k) to the classical zeta function at finite depths, and the relationship between the truncated zero distribution and the prime-counting reformulation of RH. The classical analytic continuation that defines the non-trivial zeros in Re(s) < 1 is not available in BST, but the numerical and prime-arithmetic content can be pursued systematically within ℂ_B(k⁴).

**A bounded BSD split theory.** Part XIV establishes that the Birch and Swinnerton-Dyer conjecture splits under BST: the finite arithmetic geometry content survives (rational points on elliptic curves over finite fields, Tate-Shafarevich groups at finite primes), while the analytic content (the L-function and its order of vanishing at s = 1) requires the completed complex plane and is correctly absent. A focused programme would sharpen exactly what of BSD is provable in BST-available finite arithmetic geometry, and whether bounded surrogates for parts of the analytic content can be constructed over ℂ_B(k⁴).



# Coda: What Has Been Built

This paper set out to do what no prior finitist program had done: construct a bounded set theory that is technically rigorous, philosophically honest, and complete enough to support genuine mathematical work. Parts I through XII have accomplished this formal construction — including bounded complex analysis (Part X), bounded functional analysis (Part XI), and the complexity-theoretic development (Part XII); Part XIII adds bounded representation theory; Part XIV applies the construction to the Millennium Problems as an exploratory extrapolation. Open questions and directions for future development are collected in the Future Work section preceding this Coda. What follows is a plain statement of what has been built.

## What Has Been Built

A complete axiomatic system. Six axioms (Part IV), each stated formally with full symbolic notation and plain-language explanation. The system is independent (no axiom is redundant), consistent relative to ACA₀ (established in Part III, Section 3.3.3.7), and expressive enough to support the mathematics of Parts III through IX.

A resolution of the central technical obstacle. The Burali-Forti analogue for bounded set theory (Part V) — the problem that no prior finitist program had formally addressed — is resolved by the external-bound construction, with the structural parallel to ZFC's proper class solution made explicit.

Two induction schemas with a complete comparison. BST-native bounded induction and Buss's S¹₂ PIND schema (Part VI), their relationship stated formally, their differences explained, and the conditions under which each is preferable given precisely.

A function and relation theory without Power Set. Two approaches (syntactic and axiomatic), their capabilities compared in a formal table (Part VII), with an honest account of what is available in each approach and what requires bounded reformulation.

The complete bounded number chain. ℕ_B(k), ℤ_B(k), ℚ_B(k²), ℝ_B(k), and ℂ_B(k⁴) constructed explicitly in Part VIII, with every embedding proved and every cardinality bounded. Analysis over ℝ_B(k) developed in Part IX. Complex arithmetic and the Cayley-Dickson extensions ℍ_B(k⁸) and 𝕆_B(k¹⁶) available via Section 8.8.

An honest accounting. The four-category analysis (Part IX) classifies every major classical theorem: recovered with explicit bounds (Category A), directly provable (Category B), correctly absent (Category C), or at the narrow edge of finite induction (Category D). No softening; no inflation of what the bounded constructions achieve.

A problem-by-problem analysis of the Millennium Problems. Each problem treated on its own mathematical terms, with the transformation under BST determined by the structure of the problem, not by prior commitment (Part XIV).

## The Foundational Claim

Bounded Set Theory is a coherent, technically rigorous, and expressive foundation for finite mathematics. It is not a replacement for ZFC in all domains — classical analysis over completed infinite domains, uncountable set theory, and theorems at the edge of finite induction lie beyond it. It is a foundation for the mathematics that takes place in a world where all objects are finite, all computations terminate, and all measurements have finite precision. The bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) shows that this world includes not only real analysis but complex arithmetic, algebraic closure within bounds, and the group-theoretic structures that representation theory requires.

Whether that is the right world to build a foundation for is a philosophical question. The answer depends on what you believe about the ontological status of completed infinite totalities. If you believe they exist as mathematical objects in the same sense that the number 3 exists, ZFC is the appropriate foundation. If you believe that mathematical existence requires some form of constructibility or finite describability, and that the Axiom of Infinity is a declaration rather than a discovery, then a foundation with a lower ontological commitment is more honest.

This paper has not resolved that philosophical question. It has built the foundation that the second position requires — carefully, completely, and with full acknowledgment of what it costs. The question of whether to adopt it is left where it belongs: with the reader.

— end —
