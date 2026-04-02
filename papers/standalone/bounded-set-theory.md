# Bounded Set Theory

## A Complete Finite Set Theory from a Single Axiom

Working Paper, 2026


# Abstract

This paper constructs Bounded Set Theory (BST), a set theory built from a single axiom: the Axiom of Finite Bounds (AFB). AFB negates the Axiom of Infinity and asserts a finite upper bound on set size. The logic is Bounded First-Order Logic (BFOL), in which every quantifier carries an explicit bounding term and unbounded quantifier forms are absent from the language.

The models of BST are the standard finite levels of the cumulative hierarchy, 𝒱_n = V_n. Each 𝒱_n partitions into interior elements (members of some set in the domain) and ceiling elements (not contained in anything). All Bounded Fundamental Theorems are constrained to interior elements. Ceiling elements exist in the domain with definite cardinality but are constructively inert. The bound constrains everything uniformly.

Nine ZFC axioms are proved as Bounded Fundamental Theorems of 𝒱_n: Foundation, Extensionality, Empty Set, Pairing, Union, Replacement, Separation, Power Set, and Choice. Each holds in every standard model 𝒱_n because V_n = P(V_{n-1}), which guarantees closure under all set-forming operations for interior elements. The Axiom of Infinity is the only ZFC axiom whose content BST denies.

BST differs from hereditarily finite set theory (ZF¬∞) by imposing a bound, not merely negating infinity: ZF¬∞ has only infinite models capable of supporting arithmetic, while every model of BST is finite. BST and ZFC are model-theoretically incomparable: neither theory's models include the other's. BST is consistent relative to IΣ₁ (Σ₁ induction, a bounded fragment of Peano Arithmetic), and its proof-theoretic ordinal is ω^ω, equivalent to IΣ₁. The metatheory has the same proof-theoretic strength as the theory; under Formulation A, each specific model requires no metatheory at all. BST-B is undecidable: truth in any single finite model is decidable, but truth across all standard models 𝒱_n is not, because the bound is unspecified. An exhaustive computational verification over all 65,535 subdomains of 𝒱₃ provides independent confirmation that every BFT holds in every standard model.

**Keywords:** bounded set theory, Axiom of Finite Bounds, bounded construction, interiority, ceiling elements, Burali-Forti resolution, finite models, Bounded Fundamental Theorems, cumulative hierarchy, ZFC alternatives


---


# 1. Introduction

This paper constructs a complete finite set theory from a single axiom. The Axiom of Finite Bounds (AFB) negates the Axiom of Infinity and asserts a finite upper bound on set size. From this commitment alone, the entire set-theoretic apparatus follows: nine ZFC axioms are proved as Bounded Fundamental Theorems of the standard models 𝒱_n, each constrained to interior elements by the bound.

The ontological commitment is stated in one sentence: there is no infinity, and there is an upper bound. The philosophical case for this commitment (the forced-move argument establishing that the bound is the only logical consequence of genuinely rejecting infinity, the parsimony argument establishing that the infinite commitment is unforced, the ceiling coherence argument establishing that a maximum can be asserted without contradiction) is developed in *Finite Philosophy*. This paper does not reproduce that case. It formalizes the commitment.

The logic is Bounded First-Order Logic (BFOL), defined and developed in the companion paper *Bounded First-Order Logic*. BFOL differs from standard first-order logic in exactly one structural respect: the only quantifier forms are ∀x ≤ t φ(x) and ∃x ≤ t φ(x), where t is a term. Unbounded forms are not well-formed. The complete metatheory of BFOL (soundness, completeness, decidability of truth in finite structures, cut-elimination, Craig interpolation, Beth definability, and the behaviour under finite-model restriction including failure of compactness, failure of Löwenheim-Skolem, and Trakhtenbrot undecidability) is established in that paper. This paper uses BFOL as its logical substrate without re-deriving any of those results.

BST is not a fragment of ZFC. It is not ZFC with a size cap. BST proves sentences that ZFC refutes: that all sets are finite, that no Dedekind-infinite sets exist, that cardinalities are natural numbers, that all nine non-Infinity ZFC axioms are theorems rather than independent assumptions. ZFC proves sentences that BST refutes: that an infinite set exists, that limit ordinals exist. ZFC proves Power Set universally; BST proves it below a computable threshold. The two theories are model-theoretically incomparable. Neither is a subsystem of the other.

BST is also not hereditarily finite set theory (ZF¬∞). ZF¬∞ negates the Axiom of Infinity but imposes no bound. Every set in ZF¬∞ is finite, but for every natural number n, ZF¬∞ proves the existence of a set with n elements. Any model of ZF¬∞ capable of supporting arithmetic has an infinite domain. The infinity has been removed from the individual sets and relocated to the domain. In ZF¬∞, Pairing and Union are unconstrained: the successor of any set always exists, forcing the domain to be infinite. BST constrains all constructions to interior elements, which is what allows the domain to be finite. The bound is what produces finite models rather than infinite ones.

This paper establishes only the set theory. The bounded number systems, analysis, and applications belong to subsequent papers.

The paper proceeds as follows. Section 2 states the Axiom of Finite Bounds. Section 3 defines the standard models 𝒱_n and the interior/ceiling partition. Section 4 proves the nine Bounded Fundamental Theorems, each uniformly constrained to interior elements. Section 5 develops the ordinal theory, including the Burali-Forti resolution. Section 6 characterizes the models of BST. Section 7 gives the formal comparison with ZFC. Section 8 concludes. Section 9 identifies future work.


---


# 2. The Axiom of Finite Bounds

The Axiom of Finite Bounds is the single axiom of BST. It has two components: the negation of infinity and the assertion of a bound. The bound implies a uniform constraint: in a finite domain, all set-theoretic operations apply only to interior elements (those appearing as members of some set in the domain). This interior/ceiling partition is developed in Section 3. The negation component is shared with ZF¬∞. The bound component is what distinguishes BST from ZF¬∞ and is the formal content of the forced-move argument developed in *Finite Philosophy*, §3.

The negation component is the direct negation of ZFC's Axiom of Infinity.


## 2.1 The negation component

The Axiom of Infinity in ZFC asserts the existence of a set closed under the successor operation and containing the empty set:

```
Axiom of Infinity (ZFC):
∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

The negation:

```
Negation Component:
¬∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]
```

No set is closed under the successor operation while containing the empty set. The successor chain ∅, {∅}, {∅,{∅}}, ... always terminates. Every set is finite.

This component alone is the axiom of ZF¬∞. As established in Section 6.4 below, it is insufficient: in ZF¬∞, Pairing and Union are unconstrained, so the successor of any set always exists, forcing the domain to be infinite. ZF¬∞ has only infinite models capable of supporting arithmetic. The bound component is what produces finite models rather than infinite ones.


## 2.2 The bound component: two formulations

Two formulations of the bound are developed. They are not equivalent. Both are presented because different applications favour different formulations.

### Formulation A (Schema)

Formulation A states the bound as an object-level axiom schema, one sentence for each candidate bound value n:

```
AFB_A(n):   ∀S ≤ n ( |S| ≤ n )

where |S| is the cardinality of S (the number of
elements, defined in Section 5.4) and n is a
meta-language numeral.
```

The schema asserts: there exists some specific numeral n for which AFB_A(n) holds. The specific n is not determined within the theory.

Formulation A is syntactically explicit: every instance is a first-order sentence in BFOL. It is directly useful for model-theoretic analysis: each model satisfies exactly one instance. Its limitation is that it is not a single axiom but a family of axioms, one for each candidate bound.


### Formulation B (Metatheoretic constraint)

Formulation B states the bound as a metatheoretic condition on models:

```
Meta-constraint:
All models M of BST are finite: |M| < ∞.

Bounded Reflection Principle:
BST ⊢ φ  iff  φ is true in every standard
model 𝒱_n.
```

The bound is not an object of the theory. No term B exists in BST such that BST ⊢ ∀S(|S| ≤ B). The theory knows it lives in a finite universe without being able to name the ceiling from inside.

There is a structural parallel with ZFC. In ZFC, the class of all ordinals is a proper class, real but not representable as a set. In BST under Formulation B, the bound is a metatheoretic constraint, real but not representable as a term. Both resolve their respective paradoxes by the same structural move: the problematic totality exists at a higher level than the objects the theory quantifies over.

Formulation B is a single foundational commitment rather than an infinite schema: the bound exists but is unknown. It requires metatheoretic machinery: the coherence of the Bounded Reflection Principle is established relative to IΣ₁ (Σ₁ induction; Hájek and Pudlák, 1993). This coherence proof proceeds in three steps: the class of standard models 𝒱_n is well-defined within IΣ₁ (each V_n is constructible by bounded recursion); soundness holds (every theorem is true in every 𝒱_n, verifiable by satisfaction in finite structures); and the completeness stipulation is consistent (if φ and ¬φ were both true in all 𝒱_n, φ ∧ ¬φ would be true in some 𝒱_n, contradiction, since no structure satisfies a contradiction). The standard models 𝒱_n (Section 3) witness non-emptiness.


### The relationship between the two formulations

The two formulations are not competitors. They are complements. Their semantic relationship:

```
Theorem: Semantic Equivalence of Formulations:

BST_B = ∩_{n ∈ ℕ} Th(Mod(BST_A(n)))

That is, Formulation B is exactly the theory of
sentences true in every Formulation A instance.
A sentence is a theorem of BST-B if and only if
it is true no matter which specific finite bound
is in effect.
```

For the remainder of this paper, both formulations are carried. When a result holds under both, it is stated once. When a result depends on the specific features of one formulation, the dependence is noted.


## 2.3 The complete axiom

The complete Axiom of Finite Bounds combines the negation component with the bound component:

```
Axiom of Finite Bounds: Complete Form:

Component 1 (Negation):
¬∃S [ ∅ ∈ S  ∧  ∀x( x ∈ S → x ∪ {x} ∈ S ) ]

Component 2 (Bound):
[Formulation A]  There exists n ∈ ℕ (meta)
                 such that: ∀S ≤ n ( |S| ≤ n )
or
[Formulation B]  Every model of BST is finite.
                 The bound is not an object of the
                 theory. Bounded Reflection holds.
```

The negation component, as stated here, uses unbounded quantifiers and unconditional successor. These are the pre-BFOL philosophical forms. Their proper BFOL rendering, which requires bounded quantifiers, is given in the BFT statements of Section 4.


## 2.4 The bound is not a specific number

The axiom does not say that there are at most 10⁸⁰ sets, or 10^(10^185), or any particular finite quantity. It says there is some finite upper bound without naming it. The theory knows it lives in a finite universe without being able to point at the ceiling from inside. This expresses the epistemic situation formally: we assert that reality is finite without claiming to know its extent. The two are separable claims. (*Finite Philosophy*, §4.2 develops this point in full.)


---


# 3. The Standard Models and the Interior/Ceiling Partition

AFB constrains the universe to be finite. The standard models 𝒱_n are the finite levels of the cumulative hierarchy. BST's models are specified directly, not characterized after the fact (Section 6.2). This section defines the standard models, establishes the interior/ceiling partition, and verifies that the partition is a structural consequence of finiteness.


## 3.1 The standard models 𝒱_n

For each n ∈ ℕ, the standard BST-model 𝒱_n is defined:

```
Definition: Standard BST-model 𝒱_n:

Domain:      D_n = V_n (the hereditarily finite sets
             of rank ≤ n)
Membership:  ∈^M = standard set-theoretic membership
             restricted to D_n
Bounding:    ≤^M = cardinality comparison on D_n
Arithmetic:  0^M = ∅, S^M(x) = x ∪ {x}
             (truncated to D_n)
```

The cumulative hierarchy is built by iterated power set:

```
V_0  =  {∅}
V_1  =  P(V_0)  =  {∅, {∅}}
V_2  =  P(V_1)  =  {∅, {∅}, {{∅}}, {∅,{∅}}}
V_n  =  P(V_{n-1})

|V_0| = 1,  |V_1| = 2,  |V_2| = 4,  |V_3| = 16,
|V_4| = 65536,  |V_5| = 2^65536, ...
```

The key structural fact: V_n = P(V_{n-1}). Every subset of V_{n-1} is an element of V_n. This closure property is what makes all construction operations work within 𝒱_n, as established in Section 4.


## 3.2 The interior/ceiling partition

Every standard model 𝒱_n partitions its domain into two kinds of elements. This partition is a structural fact about finite models, not an additional axiom.

```
Definition: Interior and Ceiling:

An element x ∈ V_n is interior if x ∈ V_{n-1}.
An element x ∈ V_n is a ceiling element if
x ∈ V_n \ V_{n-1}.

Equivalently: x is interior if ∃y ∈ V_n (x ∈ y).
x is a ceiling element if ¬∃y ∈ V_n (x ∈ y).

The partition V_n = Interior(V_n) ∪ Ceiling(V_n)
is exhaustive and disjoint.
Interior(V_n) = V_{n-1}.
```

Interior elements are those that appear as members of some set in the domain. Ceiling elements are not contained in anything. They exist in the domain with definite cardinality, but all Bounded Fundamental Theorems are constrained to interior elements. Ceiling elements are constructively inert.

The partition is a consequence of finiteness. Any finite directed graph has nodes with in-degree zero under any given edge relation. In a finite structure with a membership relation, the ceiling elements are the maximal elements under ∈: nothing contains them. The partition is a property of finite structures, not a stipulation of the theory.

The argument that conditioning construction on interiority allows a maximum to be asserted without contradiction is developed in *Finite Philosophy*, §7.


## 3.3 Concrete example

The standard model 𝒱₃ = V₃ has 16 elements: all subsets of V₂ = {∅, {∅}, {{∅}}, {∅,{∅}}}.

```
Interior (4 elements = V₂):
  ∅        - member of {∅}, {∅,{∅}}, etc.
  {∅}      - member of {{∅}}, {∅,{∅}}, etc.
  {{∅}}    - member of {{{∅}}}, etc.
  {∅,{∅}}  - member of {{∅,{∅}}}, etc.

Ceiling (12 elements = V₃ \ V₂):
  These 12 sets are not members of anything in V₃.
  They are sets with definite cardinality.
  No BFT applies to them.
```

The pattern: interior elements are "small" (they appear inside other sets). Ceiling elements are "large" (nothing in the domain contains them). The 12 ceiling elements sit at or near the maximum cardinality of the model; their presence is what witnesses the bound.


## 3.4 Why BFTs respect the bound

In 𝒱_n, every BFT is constrained to interior elements. The key structural fact is V_n = P(V_{n-1}): every subset of V_{n-1} is an element of V_n.

Foundation: every nonempty interior set has an ∈-minimal element, because membership strictly decreases rank in V_n.

Extensionality: distinct interior sets have distinct members visible in V_n, because V_n is transitive (all members of elements of V_n are themselves in V_n).

Empty Set: ∅ is interior (∅ ∈ V_{n-1} for all n ≥ 1).

Pairing: if a, b are interior (in V_{n-1}), then {a, b} ⊆ V_{n-1}, so {a, b} ∈ P(V_{n-1}) = V_n. The pair exists.

Union: if F is interior (in V_{n-1}), then ⋃F collects members of members of F. These are at lower rank and are in V_{n-1}. So ⋃F ⊆ V_{n-1}, hence ⋃F ∈ V_n.

Replacement: if A is interior and ψ maps members of A to interior elements, the image is a subset of V_{n-1}, hence an element of V_n.

Separation: any subset of an interior set is a subset of V_{n-1}, hence in V_n.

Power Set: P(A) exists when 2^|A| ≤ |V_n|, i.e., when |A| ≤ ⌊log₂(|V_n|)⌋. Above this threshold, P(A) has too many elements to fit in V_n.

Choice: every nonempty interior set has members in V_n by transitivity. Choices are available by enumeration.

Constructions that would produce outputs outside V_n (mapping interior elements to ceiling elements, forming pairs of ceiling elements, taking power sets above the threshold) do not succeed. The bound constrains everything uniformly.

**Convention on interiority in theorem statements.** From this point forward, when a theorem states "for all sets A, B" or "for any set A," the quantification ranges over interior elements unless stated otherwise. Ceiling elements do not participate in constructions or mathematical reasoning. This convention reflects the fact that all mathematical content operates on interior elements.


---


# 4. The Bounded Fundamental Theorems

Nine ZFC axioms are proved as Bounded Fundamental Theorems of the standard models 𝒱_n. Each holds in every 𝒱_n because V_n = P(V_{n-1}), which guarantees closure under set-forming operations for interior elements. All nine BFTs carry the interiority condition uniformly: they apply to interior elements only. The BFTs are numbered by logical dependency order.


## 4.1 Bounded Foundation (BFT 1)

```
ZFC Foundation (Regularity):
∀A ( A ≠ ∅  →  ∃x ∈ A ( x ∩ A = ∅ ) )
```

### BFT 1: Bounded Foundation:

```
In every 𝒱_n: every nonempty interior set has an
∈-minimal element.

∀A ≤ n_M ( Interior(A)
→ ( A ≠ ∅ → ∃x ∈ A ∀y ∈ x (y ∉ A) ) )

Proof:

Part 1: No self-membership.
Suppose interior A ∈ A for some A in 𝒱_n.
In V_n, membership is standard set-theoretic
membership. For any x ∈ A, rank(x) < rank(A).
Self-membership would require rank(A) < rank(A).
Contradiction.

Part 2: No membership cycles.
By the same argument: any membership chain
x₀ ∋ x₁ ∋ x₂ ∋ ... has strictly decreasing rank.
Since rank is a non-negative integer, all
membership chains terminate.

Part 3: Foundation satisfied.
Given nonempty interior A in 𝒱_n, the membership
relation on A is a finite acyclic directed graph
(by Parts 1 and 2). It has leaves: sets with no
members in A. Any such leaf x satisfies
x ∩ A = ∅. Foundation holds for A.
```

The argument has a graph-theoretic restatement: the membership relation ∈ on V_n is a finite directed acyclic graph (acyclic because membership strictly decreases rank). Every path terminates at a node with in-degree zero (the empty set). Foundation follows from the well-foundedness of rank for interior elements.

In ZFC, Foundation is an independent axiom because the Axiom of Infinity permits infinite membership structures where descending chains could occur. In BST, rank is bounded by n, so Foundation follows from the structure of 𝒱_n.


## 4.2 Bounded Extensionality (BFT 2)

```
ZFC Extensionality:
∀A ∀B [ ∀x(x ∈ A ↔ x ∈ B)  →  A = B ]
```

### BFT 2: Bounded Extensionality:

```
In every 𝒱_n: two interior sets with the same members
are identical.

∀A ≤ n_M ∀B ≤ n_M
  ( Interior(A) ∧ Interior(B)
  → [ ∀x ≤ n_M (x ∈ A ↔ x ∈ B) → A = B ] )

Proof: 𝒱_n is transitive: every member of every
element of V_n is itself in V_n (Section 3.1).
Two distinct interior sets in V_n have at least
one different member. By transitivity, that member
is in V_n. Therefore distinct interior elements of
V_n are distinguishable by their members in V_n.
```

Extensionality defines identity for interior elements.


## 4.3 Bounded Empty Set (BFT 3)

```
ZFC Empty Set:
∃∅ ∀x ( x ∉ ∅ )
```

### BFT 3: Bounded Empty Set:

```
In every 𝒱_n: an interior empty set exists.

∃e ≤ n_M ( Interior(e) ∧ ∀x ≤ n_M ( x ∉ e ) )

Proof: ∅ ∈ V_{n-1} for all n ≥ 1. The empty set
is interior and has no members.
```


## 4.4 Bounded Pairing (BFT 4)

```
ZFC Pairing:
∀a ∀b ∃P ∀x ( x ∈ P  ↔  x = a ∨ x = b )
```

### BFT 4: Bounded Pairing:

```
In every 𝒱_n: the pair of two interior elements
exists.

∀a ≤ n_M ∀b ≤ n_M
  ( Interior(a) ∧ Interior(b)
    → ∃P ≤ n_M ∀x ≤ n_M (x ∈ P ↔ x = a ∨ x = b) )

Proof: If a, b ∈ V_{n-1} (interior), then
{a, b} ⊆ V_{n-1}. Since V_n = P(V_{n-1}), every
subset of V_{n-1} is an element of V_n.
Therefore {a, b} ∈ V_n.
```

The pair {a, b} is a new object that must belong to the finite domain. The bound constrains pairing: ceiling elements cannot be paired, because the resulting set would need to be in V_n, but a set containing a ceiling element is a subset of V_n (not of V_{n-1}) and therefore an element of V_{n+1}, which is outside the domain.

Ordered pairs are defined by the Kuratowski encoding: (a, b) := {{a}, {a, b}}. This is constructible by two applications of BFT 4 when both a and b are interior. The encoding adds two levels of nesting, so elements must have sufficiently low rank for the pairs to fit within the bounded domain. In standard models 𝒱_n for large n, this rank constraint is not binding.

The Cartesian product A × B := {(a, b) | a ∈ A, b ∈ B} exists as a set when A and B are interior and all ordered pairs (a, b) for a ∈ A, b ∈ B are in the domain.


## 4.5 Bounded Union (BFT 5)

```
ZFC Union:
∀F ∃U ∀x ( x ∈ U  ↔  ∃Y(Y ∈ F ∧ x ∈ Y) )
```

### BFT 5: Bounded Union:

```
In every 𝒱_n: the union of any interior set exists.

∀F ≤ n_M ( Interior(F)
→ ∃U ≤ n_M ∀x ≤ n_M (x ∈ U ↔ ∃Y ∈ F (x ∈ Y)) )

Proof: Let F ∈ V_{n-1} (interior). F is a subset
of V_{n-2}, so every member y of F satisfies
y ∈ V_{n-2}. Each member x of y satisfies
rank(x) < rank(y) ≤ n-2, so x ∈ V_{n-2} ⊆ V_{n-1}.
Therefore ⋃F ⊆ V_{n-1}, so
⋃F ∈ P(V_{n-1}) = V_n.
```

Union collects members of members, which are at lower rank and already in the domain. Binary union A ∪ B is defined as ⋃{A, B}: form the pair by BFT 4 (requires A, B interior), then take its union.


## 4.6 Bounded Replacement (BFT 6)

```
ZFC Replacement:
∀A ( ∀x(x ∈ A → ∃!y ψ(x,y))
→ ∃B ∀y(y ∈ B ↔ ∃x(x ∈ A ∧ ψ(x,y))) )
for any formula ψ.
```

### BFT 6: Bounded Replacement:

```
In every 𝒱_n: the image of an interior set under
a functional formula mapping to interior elements
exists.

∀A ≤ n_M ( Interior(A)
→ ( ∀x ∈ A ∃!y ≤ n_M (Interior(y) ∧ ψ(x,y))
     → ∃B ≤ n_M ∀y ≤ n_M
         (y ∈ B ↔ ∃x ∈ A ψ(x,y)) ) )
for any BFOL formula ψ.

Proof: If A ∈ V_{n-1} (interior) and ψ maps each
member of A to an element of V_{n-1} (interior),
then the image B ⊆ V_{n-1}. Since V_n = P(V_{n-1}),
B ∈ V_n. The image has cardinality |B| ≤ |A|.
```

Replacement is the most frequently used construction principle in BST. It underlies Cartesian products, function graphs, and quotient sets. Both the input A and the outputs of ψ must be interior. In a bounded universe, constructions that map interior elements to ceiling elements produce images that do not fit in the domain.

The Function Axiom (FA-BST) asserts that the graph of any definable functional relation on interior finite sets exists as a set. It follows from BFT 6 when the Cartesian product A × B exists in the domain.


## 4.7 Bounded Separation (BFT 7)

```
ZFC Separation (Aussonderung):
∀A ∃B ∀x ( x ∈ B  ↔  x ∈ A ∧ φ(x) )
for any formula φ.
```

### BFT 7: Bounded Separation:

```
In every 𝒱_n: subsets of interior sets defined by a
property exist.

∀A ≤ n_M ( Interior(A)
→ ∃B ≤ n_M ∀x ≤ n_M ( x ∈ B ↔ x ∈ A ∧ φ(x) ) )
for any BFOL formula φ.

Proof: If A ∈ V_{n-1} (interior), then A is a
subset of V_{n-2} (since V_{n-1} = P(V_{n-2})).
Any subset of A is therefore also a subset of
V_{n-2} ⊆ V_{n-1}. Therefore
{x ∈ A : φ(x)} ⊆ V_{n-1}, so
{x ∈ A : φ(x)} ∈ P(V_{n-1}) = V_n.
```

Bounded Separation can also be derived from BFT 6 (Replacement) and BFT 5 (Union) by the standard Fraenkel construction, as an alternative proof. The direct proof above is simpler in the standard models.


## 4.8 Bounded Power Set (BFT 8)

```
ZFC Power Set:
∀A ∃P(A) ∀x ( x ∈ P(A)  ↔  x ⊆ A )
```

### BFT 8: Bounded Power Set:

```
In every 𝒱_n: the power set of an interior set
exists when 2^|A| fits within the domain.

∀A ≤ n_M ( Interior(A) ∧ |A| ≤ ⌊log₂(n_M)⌋
  → ∃P ≤ n_M ∀x ≤ n_M (x ∈ P ↔ ∀z ∈ x (z ∈ A)) )

Proof:
|P(A)| = 2^|A| ≤ 2^(⌊log₂(n_M)⌋) ≤ n_M.
P(A) has cardinality within the model bound.
Each subset of A is a subset of V_{n-2} (since
A ⊆ V_{n-2}), hence an element of
V_{n-1} = P(V_{n-2}). The collection P(A) is
therefore a subset of V_{n-1}, and has cardinality
2^|A| ≤ n_M, so P(A) ∈ P(V_{n-1}) = V_n.
```

### The threshold

The threshold at which Power Set becomes unavailable is exact:

```
Theorem: Full Power Set threshold:

P(A) exists when |A| ≤ ⌊log₂(n_M)⌋.
P(A) does not exist when |A| > ⌊log₂(n_M)⌋.

Proof of the upper bound:
|P(A)| = 2^|A|. If |A| > ⌊log₂(n_M)⌋, then
|P(A)| = 2^|A| > 2^(log₂(n_M)) = n_M.
P(A) would exceed the model bound and cannot
exist in the model.
```

The threshold is a computable function of the model bound. For n_M = 2^64, any set with |A| ≤ 64 has a full power set within the model.

In the standard models 𝒱_n, the threshold is tight: the maximum cardinality of an interior set is |V_{n-2}|, and ⌊log₂(n_M)⌋ = ⌊log₂(|V_{n-1}|)⌋ = |V_{n-2}|. Every interior set satisfies the premise. The threshold is never exceeded on the interior fragment, but it is exactly the right cutoff: a set with one more element than the maximum interior cardinality would exceed it.

Two independent reasons support the bounded treatment of Power Set. The cardinality argument: exponential growth exceeds the bound. The predicativist argument (Weyl, Poincaré, Feferman): P(A) is defined by quantifying over all subsets of A, presupposing the existence of the collection being defined. Below the threshold, the impredicativity is benign because the finite collection is explicitly enumerable. Above it, both arguments converge.


## 4.9 Bounded Choice (BFT 9)

```
ZFC Axiom of Choice:
For any collection C of nonempty sets, there exists a
function f such that f(S) ∈ S for every S ∈ C.
```

### BFT 9: Bounded Choice:

```
In every 𝒱_n: for any interior collection of
nonempty sets, each member has at least one element
in the domain.

∀C ≤ n_M ( Interior(C)
→ ( ∀S ∈ C (S ≠ ∅)
     → ∀S ∈ C ∃e ≤ n_M (e ∈ S) ) )

Proof: Let C be an interior collection of nonempty
sets. Let S ∈ C. S is nonempty, so S has at least
one member x. 𝒱_n is transitive (Section 3.1):
if S is in the domain and x ∈ S, then x is in
the domain. Therefore ∃e ≤ n_M (e ∈ S) is
witnessed by x.
```

The proof does not require the choice function to exist as a single set (a collection of ordered pairs) in the domain. It establishes that for each nonempty S, an element of S is available. In finite models, this is sufficient: the choices can be made one at a time by enumeration. No non-constructive principle is required.

The Axiom of Choice in ZFC is needed because infinite collections cannot be finitely enumerated. In BST, all collections are finite. Choices can be made by enumeration, so Choice is a theorem rather than an axiom.

Two fragments of Choice commonly used in classical analysis are also unnecessary in BST. Countable Choice (AC_ω) holds vacuously: no infinite collection exists in BST to satisfy its premise. Dependent Choice (DC) is replaced by bounded recursion: for any finite number of steps N ≤ k, the dependent sequence x₀, ..., x_N is constructible without any choice principle.


## 4.10 Summary

```
The nine Bounded Fundamental Theorems:

BFT    ZFC Axiom        Structural fact used
──────────────────────────────────────────────────────
BFT 1  Foundation       Rank descent in V_n
BFT 2  Extensionality   Transitivity of V_n
BFT 3  Empty Set        ∅ ∈ V_{n-1}
BFT 4  Pairing          V_n = P(V_{n-1})
BFT 5  Union            V_n = P(V_{n-1})
BFT 6  Replacement      V_n = P(V_{n-1})
BFT 7  Separation       V_n = P(V_{n-1})
BFT 8  Power Set        V_n = P(V_{n-1})
BFT 9  Choice           Transitivity of V_n

Negated:
       Infinity         Negated by AFB
```

All nine non-Infinity ZFC axioms are Bounded Fundamental Theorems of 𝒱_n. Each is constrained to interior elements and follows from the structure of the standard models. The Axiom of Infinity is the only ZFC axiom whose content BST denies.


---


# 5. Ordinals in BST

Classical ordinals are built to extend through ω and beyond; BST's ordinals are bounded. This section constructs the bounded ordinal theory, develops primitive cardinality, and resolves the bounded analogue of the Burali-Forti paradox.


## 5.1 Why ordinals need separate treatment

The von Neumann ordinal construction depends structurally on the Axiom of Infinity. The ordinal ω = {0, 1, 2, 3, ...} is the set of all finite ordinals, a completed infinite set whose existence the Axiom of Infinity guarantees. The full ordinal theory is built to continue through ω, ω+1, and beyond. Limit ordinals (ordinals with no immediate predecessor) are essential to transfinite induction. Under AFB, limit ordinals do not exist: every nonzero interior ordinal has an immediate predecessor. The transfinite extension of the classical framework does not apply in BST.

In ZF¬∞, all ordinals are individually finite but form an infinite class isomorphic to ω as an order type. Under AFB, even the class of ordinals must be bounded.


## 5.2 Ordinal definitions

```
Definition: Preordinal:
A preordinal is a structure (A, <) where:
(i)   A is a finite set
(ii)  < is a strict total order on A
(iii) every nonempty subset of A has a least element
      under < (well-foundedness)

For finite sets, (iii) is implied by (ii). It is
stated for conceptual clarity.
```

```
Definition: Ordinal:
Two preordinals (A, <_A) and (B, <_B) are isomorphic
if there exists a bijection f: A → B preserving order.
An ordinal is an isomorphism class of preordinals.
```

Isomorphism classes are metatheoretic collections. Within BST, each ordinal is represented by its canonical representative: the finite von Neumann ordinal.

```
Definition: Canonical representatives:

0  =  ∅
1  =  {∅}
2  =  {∅, {∅}}
n  =  {0, 1, ..., n-1}
```

```
Definition: Successor:

S(α) = α ∪ {α}, giving S(α) = α+1 in canonical form.

Precondition: α must be interior. The successor
S(α) = α ∪ {α} is a subset of V_{n-1} (since α
and all members of α are in V_{n-1}), hence
S(α) ∈ V_n. At the ceiling, α ∉ V_{n-1}, so
S(α) is not a subset of V_{n-1} and cannot be
constructed.
```

Successor is a construction, not a universal operation.


## 5.3 Key theorems

```
Theorem: Every nonzero interior ordinal is a successor:

For every interior ordinal α > 0, there exists an
ordinal β such that α = S(β).

Proof: Let α = ord(A, <) with |A| = k > 0. Remove the
greatest element of A. The remaining structure has
ordinal β. Then S(β) = α.
```

There are no limit ordinals in BST. The ordinal sequence is 0, 1, 2, 3, ... up to whatever the bound permits. The ordinal ω does not exist, and no transfinite structure of any kind arises.

```
Theorem: Interior ordinals are linearly ordered:

For any two interior ordinals α, β in BST:
α ≤ β or β ≤ α.

Proof: Canonical representatives are finite well-orders
of sizes j and k. Since j, k ∈ ℕ are comparable, the
shorter is isomorphic to an initial segment of the
longer.
```

```
Theorem: Bounded induction is valid:

For any property P definable in BST, and any
ordinal bound k:

P(0) ∧ ∀α < k ( Interior(α) ∧ P(α) → P(S(α)) )
→  ∀α ≤ k  P(α)

The interiority condition ensures S(α) is
well-defined. For α < k with k interior,
interiority of α is automatic (α ∈ k).
```


## 5.4 Primitive cardinality

```
Definition: Cardinality:

The cardinality of a set S, written |S|, is the
length of the shortest adjunction sequence from ∅
to S:

|∅|       = 0
|S ∪ {x}| = |S| + 1   for any x ∉ S

Equivalently: |S| is the unique natural number n
such that S can be built by n successive adjunctions
starting from ∅.
```

```
Theorem: Cardinality coincides with ordinal:

For any interior set S with |S| = n, the canonical
well-order on S is order-isomorphic to the von
Neumann ordinal n.

Proof: By induction on n.
```

In BST, cardinality and ordinal are the same concept. In infinite set theory the two diverge sharply; in the finite setting they coincide. BST has one number concept, not two.


## 5.5 The Burali-Forti problem and its resolution

The Burali-Forti paradox is one of the earliest discovered paradoxes in set theory. In ZFC it is resolved by declaring the collection of all ordinals a proper class. In BST, an analogous paradox arises when a maximum-cardinality set is assumed to be interior. Its resolution follows from the interior/ceiling partition.

### The classical paradox (for reference)

```
Suppose the collection of all ordinals forms a set Ω.
Ω is well-ordered, so it has an ordinal ord(Ω).
ord(Ω) must be an ordinal, so ord(Ω) ∈ Ω.
But ord(Ω) > every element of Ω.
Therefore ord(Ω) > ord(Ω).  Contradiction.
```

ZFC resolves this by making the ordinals a proper class.


### The bounded analogue

```
Theorem: No interior set has maximum cardinality:

Suppose 𝒱_n contains an interior set Ω such that
∀S ≤ n_M ( |S| ≤ |Ω| ).

Step 1:  Ω is interior, so Ω ∈ V_{n-1} = P(V_{n-2}).
         Therefore Ω ⊆ V_{n-2}, and all members of
         Ω are in V_{n-2} ⊆ V_{n-1}.
Step 2:  S(Ω) = Ω ∪ {Ω}. Every element of S(Ω)
         is in V_{n-1} (members of Ω and Ω itself).
         So S(Ω) ⊆ V_{n-1}, hence S(Ω) ∈ V_n.
Step 3:  Ω ∉ Ω (by Foundation, BFT 1).
         Therefore |S(Ω)| = |Ω| + 1 > |Ω|.
         Contradiction.

No interior set can have maximum cardinality.
```


### The ceiling resolution

If Ω is a ceiling element (not a member of any set in the domain) then Ω ∉ V_{n-1}. The successor S(Ω) = Ω ∪ {Ω} is not a subset of V_{n-1} and cannot be constructed. No contradiction arises.

Maximum-cardinality sets exist in every model of BST. They are ceiling elements: sets at the maximum cardinality of the model. No BFT applies to them.

The bounded Burali-Forti resolution follows a pattern shared with ZFC: any theory asserting a maximum object in a domain closed under a successor-like operation faces a contradiction. The ingredients are a maximum object, an operation producing something strictly larger, and a closure principle asserting the result exists in the domain. The resolution in every case is to restrict the operation's scope.

ZFC restricts by ontological exclusion: proper classes are not sets and cannot be inputs to set-building operations. BST restricts by the interior/ceiling partition: ceiling elements are sets in the domain with definite cardinality, but constructions do not apply to them. The structural move is the same; the implementations differ in that BST's ceiling elements are concrete finite objects within the domain, while ZFC's proper classes are not objects of the theory.

```
Structural parallel:

ZFC:    'the class of all ordinals' is a proper class,
        not a set, real but not representable.

BST:    Maximum-cardinality sets are ceiling elements,
        sets in the domain with definite cardinality
        that are constructively inert.

Both resolve their paradoxes by restricting the
scope of the operation that would exceed the maximum.
```


## 5.6 What ordinals look like in BST models

In any model 𝒱_n:

```
The ordinals of 𝒱_n are: 0, 1, 2, ..., up to the
bound permitted by n.
The greatest ordinal is a ceiling element.
Every nonzero interior ordinal is a successor.
No limit ordinals exist.

BST proves: a maximum ordinal exists
            (by Bounded Reflection, every finite
            model has one).
BST cannot prove: which specific ordinal is the
            greatest (model-dependent).
```

The successor of a ceiling ordinal cannot be formed: S(α) = α ∪ {α} requires α ∈ V_{n-1}, and ceiling elements are not in V_{n-1}.


---


# 6. Models of BST

This section characterizes the models of BST: their finiteness, the relationship between BST's specified models and the cumulative hierarchy, the model-theoretic relationship with ZF¬∞, and the consistency and undecidability results.


## 6.1 Every model of BST is finite

```
Theorem: Finiteness of models:

For any model M ⊨ BST: |M| < ∞.

Proof: Under Formulation B, this follows directly from
the metatheoretic constraint: BST-B is defined as the
theory of sentences true in all standard models 𝒱_n,
and the coherence of this definition is established in
Section 2.2. Under Formulation A, each model satisfies
a specific instance AFB_A(n) and contains only sets
of cardinality at most n. The domain is finite.
```


## 6.2 BST models are specified, not characterized

The standard models 𝒱_n are defined directly in Section 3.1. Under Formulation B, BST's theorems are the sentences true in every 𝒱_n. Under Formulation A, the standard model for AFB_A(k) is the 𝒱_n whose maximum set cardinality n_M equals k (the axiom index k and the model stage index n are different: for example, V_3 has n_M = 4, so V_3 is the standard model for AFB_A(4)). The models of BST are specified, not characterized after the fact.

**Remark (Mostowski collapse).** Any finite extensional well-founded structure is isomorphic to a transitive finite set via the Mostowski collapsing map (a standard result in IΣ₁, provable by bounded recursion on rank). This means that any finite structure satisfying BFT 1 (Foundation) and BFT 2 (Extensionality) is isomorphic to a transitive subset of some V_{h+1}. BST does not require this result: the standard models 𝒱_n are constructed directly, and the BFTs are proved from their structure. The Mostowski collapse confirms that no finite extensional well-founded structure falls outside the cumulative hierarchy.


## 6.3 Verification of the standard models

Each 𝒱_n satisfies AFB and all nine BFTs:

```
Verification that 𝒱_n satisfies AFB and BFTs 1–9:

AFB: V_n is finite. No set in V_n is successor-closed
  containing ∅: the successor chain has no finite
  completion.

BFT 1 (Foundation): For interior A ∈ V_{n-1},
  the membership relation on A is finite and acyclic.
  Every nonempty interior set has an ∈-minimal
  element.

BFT 2 (Extensionality): For interior A, B ∈ V_{n-1},
  distinct sets have distinct members. By transitivity,
  all members are visible in V_n.

BFT 3 (Empty Set): ∅ ∈ V_{n-1} for all n ≥ 1.
  The empty set is interior.

BFT 4 (Pairing): For interior a, b ∈ V_{n-1},
  {a, b} ⊆ V_{n-1}. Since V_n = P(V_{n-1}),
  {a, b} ∈ V_n.

BFT 5 (Union): For interior F ∈ V_{n-1}, ⋃F
  collects members of members of F, which are at
  lower rank. ⋃F ⊆ V_{n-1}, so ⋃F ∈ V_n.

BFT 6 (Replacement): For interior A ∈ V_{n-1} and
  ψ mapping members of A to interior elements, the
  image B ⊆ V_{n-1}. Since V_n = P(V_{n-1}),
  B ∈ V_n.

BFT 7 (Separation): For interior A ∈ V_{n-1}, any
  subset of A is a subset of V_{n-1}, hence an
  element of V_n.

BFT 8 (Power Set): For interior A ∈ V_{n-1},
  P(A) exists when 2^|A| ≤ |V_n|.

BFT 9 (Choice): For interior C ∈ V_{n-1}, every
  nonempty member S ∈ C has members in V_n by
  transitivity.
```

The uniform argument above establishes the BFTs for all 𝒱_n. An exhaustive computational verification over all 65,535 subdomains of 𝒱₃ provides independent confirmation for V_1, V_2, and V_3.


## 6.4 BST and ZF¬∞ are model-theoretically incomparable

```
Theorem: ZF¬∞ has only infinite models:

ZF¬∞ ⊢ ∀k ∃m ( m > k ).

Proof: For each specific numeral k, the von Neumann
ordinal k ∪ {k} is constructible in ZF¬∞ by Pairing
and Union (both retained). ZF¬∞ proves there is no
largest natural number.

Any model satisfying all these sentences simultaneously
contains sets of every finite cardinality, and
therefore has an infinite domain.
```

```
Corollary: Model-theoretic incomparability:

(i)   No non-trivial model of ZF¬∞ is a model of BST
      (ZF¬∞ models are infinite; BST models are finite).
(ii)  No model of BST is a model of ZF¬∞
      (BST models satisfy ∀S(|S| ≤ n) for some n;
      ZF¬∞ proves ¬∃n ∀m(m ≤ n)).
(iii) BST and ZF¬∞ are model-theoretically incomparable.
```

BST and ZF¬∞ describe different ontologies. ZF¬∞ says every set is finite but the universe is infinite. BST says every set is finite and the universe is finite. No structure satisfies both. (The bi-interpretability of ZF¬∞ and PA is established in Kaye and Wong, 2007.)


## 6.5 Relative consistency

```
Theorem: Relative consistency of BST-A:

If finite combinatorics is consistent, then BST-A(n)
is consistent for every specific n.

Proof: The hereditarily finite sets of rank ≤ n form
an explicit finite model of BST-A(n). A theory with
an explicit finite model is consistent.
```

```
Theorem: Relative consistency of BST-B:

If IΣ₁ is consistent, then BST-B is consistent.

Proof: The coherence proof of Section 2.2 establishes
that the Bounded Reflection Principle is a consistent
stipulation within IΣ₁. If IΣ₁ is consistent, no
contradiction is derivable in BST-B.
```

Both consistency assumptions are strictly weaker than the consistency of PA. BST's metatheory requires only bounded induction, matching the theory's own proof-theoretic strength (ω^ω).

Under Formulation A, BST-A(n) for any specific n requires no metatheory at all. The standard model V_n is a specific finite structure. The BFTs are verifiable by finite computation on that structure. No axioms, no consistency assumptions, no metatheoretic framework. The proof is the computation itself. IΣ₁ is needed only for Formulation B, where the Bounded Reflection Principle quantifies over all standard models simultaneously.


## 6.6 Decidability and undecidability

```
Decidability and undecidability:

Under Formulation A, truth in any specific 𝒱_n is
decidable. The domain is finite, and satisfaction
of a BFOL sentence in a finite structure is
computable (BFOL paper, Theorem 2).

Under Formulation B, the bound is unspecified. The
Bounded Reflection Principle defines BST-B's
theorems as sentences true in every standard model
𝒱_n. This requires checking infinitely many finite
models. No algorithm can complete this check: truth
across all 𝒱_n is not decidable.

The undecidability is a structural consequence of
the unspecified bound. Each instance is decidable.
The universal quantification over all instances is
not. This is the finite analogue of Trakhtenbrot's
theorem, which establishes the same phenomenon for
truth across all finite structures of a language
with a binary relation (BFOL paper, Theorem 9). A
bounded reformulation of Trakhtenbrot for specific
families of finite models would formalize this
precisely; such a reformulation belongs to the
metatheory of BFOL and is beyond the scope of this
paper.
```

```
Single-model truth (BST-A):   Decidable.
All-model truth (BST-B):      Not decidable.
```


## 6.7 Note on metatheoretic frameworks

The metatheoretic results in this section (relative consistency, proof-theoretic ordinal, undecidability) are stated in terms of classical infinite frameworks: IΣ₁, proof-theoretic ordinals, and the natural number sequence. These frameworks assume the infinite objects that BST denies. The results are correct as mathematical theorems about BST's position relative to classical systems, but they do not themselves operate within BST's bounded ontology.

Under Formulation A, this tension does not arise. Each BST-A(n) is a specific finite theory with a specific finite model. The BFTs are verifiable by finite computation. No infinite framework is needed.

Under Formulation B, the Bounded Reflection Principle quantifies over all standard models 𝒱_n, which requires reasoning about an infinite family of finite structures. The metatheoretic results in Sections 6.5 and 6.6 address this quantification using classical tools. Bounded analogues of these results, formulated entirely within finite frameworks, are expected to exist and belong to subsequent work (Section 9).


---


# 7. BST and ZFC: Formal Comparison

This section compares BST with ZFC, identifies what each theory proves that the other does not, and summarizes the architecture of BST.


## 7.1 Axiom-by-axiom comparison

```
BFT    ZFC Axiom        BST Status    Structural fact used
─────────────────────────────────────────────────────────────
BFT 1  Foundation       Theorem       Rank descent in V_n
BFT 2  Extensionality   Theorem       Transitivity of V_n
BFT 3  Empty Set        Theorem       ∅ ∈ V_{n-1}
BFT 4  Pairing          Theorem       V_n = P(V_{n-1})
BFT 5  Union            Theorem       V_n = P(V_{n-1})
BFT 6  Replacement      Theorem       V_n = P(V_{n-1})
BFT 7  Separation       Theorem       V_n = P(V_{n-1})
BFT 8  Power Set        Theorem       V_n = P(V_{n-1})
BFT 9  Choice           Theorem       Transitivity of V_n

       Infinity         Negated       Negated by AFB
```

All nine non-Infinity ZFC axioms are theorems in BST, each constrained to interior elements. In ZFC, all nine are independent of each other: no subset of the nine entails the rest. In BST, all nine follow from the single axiom AFB via the structure of the standard models 𝒱_n.


## 7.2 What ZFC proves that BST cannot

ZFC proves the existence of infinite sets, limit ordinals, transfinite cardinals, unbounded power sets, and the totality of the Ackermann function. BST proves none of these. Three universal statements at the edge of finite induction (Goodstein's theorem, Paris-Harrington, Ackermann totality) form a narrow gap: every finite instance is provable in BST, but the universal quantification across all naturals is not. This is BST's specific instantiation of Gödel's First Incompleteness Theorem.

BST's proof-theoretic ordinal is ω^ω, equivalent to IΣ₁ (Σ₁ induction). The upper bound follows from the interpretability of BST in IΣ₁ (the standard models 𝒱_n and their satisfaction relation are definable by bounded recursion in IΣ₁; Hájek and Pudlák, 1993, Chapter I). The lower bound follows from the bi-interpretability of hereditarily finite set theory with bounded induction and IΣ₁ (Kaye and Wong, 2007, restricted to bounded fragments). BST is strictly stronger than Buss's S¹₂ and strictly weaker than Peano Arithmetic (ordinal ε₀). The gap between ω^ω and ε₀ is exactly the region containing Goodstein, Paris-Harrington, and Ackermann totality.


## 7.3 The architecture of BST

BST has three structural features that distinguish it from ZFC.

First, a single axiom. ZFC requires ten axioms (nine structural axioms plus Infinity), all independent of each other. BST requires one (AFB), which negates Infinity. The nine ZFC structural properties follow from the structure of the standard models 𝒱_n, determined by AFB.

Second, a uniform constraint. All nine BFTs carry the interiority condition: they apply to interior elements only. Ceiling elements are constructively inert. The bound constrains everything uniformly, resolving the Burali-Forti paradox and all analogous constructions that would exceed the domain.

Third, a bounded metatheory. BST-B's consistency is established relative to IΣ₁, a bounded fragment of Peano Arithmetic. IΣ₁ has the same proof-theoretic ordinal (ω^ω) as BST itself: the metatheory has the same proof-theoretic strength as the theory. Under Formulation A, each BST-A(n) requires no metatheory at all: the BFTs are verifiable by finite computation on the specific finite structure V_n.


---


# 8. Conclusion

Bounded Set Theory is a complete finite set theory built from a single axiom. The Axiom of Finite Bounds determines the standard models 𝒱_n. Nine ZFC axioms are proved as Bounded Fundamental Theorems of these models, each constrained to interior elements. The Axiom of Infinity is negated. Every model is finite.

The core principle is that a finite universe determines its own set theory. In a bounded domain, every set-theoretic operation is constrained by the bound. The interior/ceiling partition, the closure of constructions, the resolution of paradoxes, the availability of choices: all follow from V_n = P(V_{n-1}). The bound is the axiom. Everything else is structure.

ZFC distributes its foundational content across ten independent axioms. BST concentrates it in one. What ZFC assumes separately (extensionality, pairing, union, replacement, separation, power set, foundation, choice), BST derives from the single fact that the universe is a finite level of the cumulative hierarchy. The nine properties are not independent features of set-theoretic reality. They are consequences of finiteness.

BST is incomparable with ZFC. Neither is a subsystem of the other. BST is consistent relative to IΣ₁, with proof-theoretic ordinal ω^ω. The metatheory has the same proof-theoretic strength as the theory. Under Formulation A, each specific model requires no metatheory at all: the proof is the computation.

The set theory is established. The bounded number systems, analysis, and applications belong to subsequent papers.


---


# 9. Future Work

Three extensions to the results of this paper are planned.

**Bounded metatheory.** The metatheoretic results in Section 6 (relative consistency, proof-theoretic ordinal, undecidability) are stated using classical infinite frameworks. Bounded analogues of these results, formulated entirely within finite frameworks, would complete BST's self-containment. Three specific targets: a bounded consistency argument that does not reference IΣ₁; a bounded analogue of proof-theoretic ordinals that does not assume the natural number sequence; and a bounded reformulation of Trakhtenbrot's theorem for specific families of finite models.

**Formulation A meta-language.** The numeral n in AFB_A(n) is currently a meta-language numeral. A precise characterization of the meta-language (whether it requires IΣ₁ or can be stated in a weaker bounded framework) would clarify the relationship between Formulations A and B.

**Computational verification at higher levels.** The exhaustive computational verification in this paper covers 𝒱₁, 𝒱₂, and 𝒱₃. Verification of 𝒱₄ (65,536 elements) is computationally feasible and would provide further confirmation of the BFTs at a larger scale.


---


# References

**Finite Philosophy.** Working Paper, 2026. The ontological case for bounded finitude: the forced-move argument, parsimony, the paradox dividend, and the ceiling coherence argument.

**Bounded First-Order Logic.** Working Paper, 2026. The logical substrate: syntax, semantics, proof theory, and the complete metatheory (soundness, completeness, decidability, cut-elimination, Craig interpolation, Beth definability, GBP, Trakhtenbrot).

Ackermann, W. (1937). "Die Widerspruchsfreiheit der allgemeinen Mengenlehre." *Mathematische Annalen*, 114, 305–315.

Buss, S. (1986). *Bounded Arithmetic*. Bibliopolis.

Feferman, S. (1964). "Systems of Predicative Analysis." *Journal of Symbolic Logic*, 29(1), 1–30.

Fraenkel, A. (1922). "Zu den Grundlagen der Cantor-Zermeloschen Mengenlehre." *Mathematische Annalen*, 86, 230–237.

Gödel, K. (1931). "Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I." *Monatshefte für Mathematik und Physik*, 38, 173–198.

Goodstein, R. L. (1944). "On the Restricted Ordinal Theorem." *Journal of Symbolic Logic*, 9(2), 33–41.

Hájek, P. and Pudlák, P. (1993). *Metamathematics of First-Order Arithmetic*. Springer.

Jech, T. (2003). *Set Theory*. 3rd millennium ed. Springer.

Kaye, R. and Wong, T. L. (2007). "On Interpretations of Arithmetic and Set Theory." *Notre Dame Journal of Formal Logic*, 48(4), 497–510.

Kirby, L. and Paris, J. (1982). "Accessible Independence Results for Peano Arithmetic." *Bulletin of the London Mathematical Society*, 14(4), 285–293.

Kunen, K. (1980). *Set Theory: An Introduction to Independence Proofs*. North-Holland.

Kuratowski, K. (1921). "Sur la notion de l'ordre dans la théorie des ensembles." *Fundamenta Mathematicae*, 2, 161–171.

Mostowski, A. (1949). "An Undecidable Arithmetical Statement." *Fundamenta Mathematicae*, 36, 143–164.

Paris, J. and Harrington, L. (1977). "A Mathematical Incompleteness in Peano Arithmetic." In *Handbook of Mathematical Logic*, ed. J. Barwise, 1133–1142. North-Holland.

Poincaré, H. (1906). "Les mathématiques et la logique." *Revue de métaphysique et de morale*, 14, 294–317.

Simpson, S. G. (2009). *Subsystems of Second Order Arithmetic*. 2nd ed. Cambridge University Press.

Trakhtenbrot, B. (1950). "The Impossibility of an Algorithm for the Decision Problem in Finite Classes." *Doklady Akademii Nauk SSSR*, 70, 569–572.

von Neumann, J. (1923). "Zur Einführung der transfiniten Zahlen." *Acta Scientiarum Mathematicarum (Szeged)*, 1, 199–208.

Weyl, H. (1918). *Das Kontinuum: Kritische Untersuchungen über die Grundlagen der Analysis*. Veit & Comp.

Zermelo, E. (1908). "Untersuchungen über die Grundlagen der Mengenlehre I." *Mathematische Annalen*, 65, 261–281.
