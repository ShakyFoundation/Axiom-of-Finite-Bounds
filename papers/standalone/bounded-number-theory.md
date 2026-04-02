# Bounded Number Theory

## The Complete Bounded Number Chain

Working Paper, 2026


## Abstract

This paper constructs the complete bounded number chain from Bounded Set Theory (BST), the sole prerequisite. Starting from the standard models 𝒱_n and the nine Bounded Fundamental Theorems established in *Bounded Set Theory*, the paper develops bounded induction and bounded recursion, the function and relation machinery, and builds the chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) with explicit precision bounds at every level. On the discrete systems (ℕ_B, ℤ_B, ℚ_B), arithmetic on interior elements whose results are interior is exact; the interiority condition, operating through the BFTs, determines the precise range of available computation. On the continuous systems (ℝ_B, ℂ_B), arithmetic is rational computation on canonical representatives followed by rounding to the nearest grid point, producing definite values at each step; the field identities at precision 1/k are BST theorems quantifying the grid displacement per operation as O(1/k²). The Cayley-Dickson extensions to bounded quaternions ℍ_B(k⁸) and octonions 𝕆_B(k¹⁶) are available at the algebraic level.

At each stage of the chain, equivalence is defined by exact identification computed within the model's domain, ensuring transitivity without approximate thresholds. Each construction is verified within the standard models, with the interiority cascade (that inputs, outputs, and results remain interior at every stage) checked explicitly. The paper classifies how number-theoretic results relate to BST using a three-type recovery taxonomy. BST's proof-theoretic ordinal ω^ω (established in *Bounded Set Theory*) determines a boundary of provability; the specific content of that boundary is deferred until bounded metatheoretic tools are available, since the classical tools for locating it assume the infinite objects BST denies.


---


## 1. Introduction

### 1.1 From ontology to number systems

The ontological commitment (there is no infinity, and there is an upper bound) produces the logic (BFOL, in which every quantifier carries an explicit bounding term), which produces the set theory (BST, in which a single axiom determines finite models with nine set-theoretic properties as theorems). The logic is developed in *Bounded First-Order Logic*. The set theory is developed in *Bounded Set Theory*. This paper builds the number systems.

*Bounded Set Theory* concludes: "The set theory is established. The bounded number systems, analysis, and applications belong to subsequent papers." This paper is that subsequent paper. It constructs the complete bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴), develops the number theory within the chain, and classifies how the results relate to BST. The sole prerequisite is *Bounded Set Theory*.

*Bounded Set Theory* and *Bounded First-Order Logic* are working papers. Their core content (the standard models 𝒱_n, the nine BFTs, the interior/ceiling partition, the bounded quantifier constraint) is stable and is what this paper depends on. Ongoing work on the predecessor papers may lead to updates; such updates would not affect the constructions in this paper, which use only the BFTs and the standard models. If anything, they are expected to simplify the foundations further.

### 1.2 Prerequisites from BST

The following is assumed from *Bounded Set Theory* and is summarised here so that the reader can follow the constructions without consulting the predecessor paper.

**The Axiom of Finite Bounds (AFB).** AFB negates infinity and asserts a finite upper bound. The standard models are the finite levels 𝒱_n = V_n of the cumulative hierarchy. BST's theorems are exactly the sentences true in every standard model 𝒱_n.

**The standard models.** V_0 = {∅}, V_n = P(V_{n-1}). The key structural fact: every subset of V_{n-1} is an element of V_n. Sizes: |V_0| = 1, |V_1| = 2, |V_2| = 4, |V_3| = 16, |V_4| = 65536.

**The interior/ceiling partition.** An element x ∈ V_n is interior if x ∈ V_{n-1} (equivalently, x is a member of something in V_n). Ceiling elements are in V_n \ V_{n-1} and are constructively inert. Interior(V_n) = V_{n-1}. The partition is a structural consequence of finiteness, not an additional axiom.

**The nine Bounded Fundamental Theorems.** Each holds in every 𝒱_n, each is constrained to interior elements. The structural fact V_n = P(V_{n-1}) is what makes them work.

```
BFT   Name             Precondition and content
───────────────────────────────────────────────────────────────
1     Foundation        Every nonempty interior set has an
                        ∈-minimal element. (Rank descent in V_n.)

2     Extensionality    Two interior sets with the same members
                        are identical. (Transitivity of V_n.)

3     Empty Set         ∅ is interior in every 𝒱_n with n ≥ 1.

4     Pairing           If a, b are interior, {a, b} exists.
                        (V_n = P(V_{n-1}).)

5     Union             If F is interior, ⋃F exists.
                        (Members of members are at lower rank.)

6     Replacement       If A is interior and ψ maps members of A
                        to interior elements, the image exists.
                        (V_n = P(V_{n-1}). |image| ≤ |A|.)

7     Separation        If A is interior, {x ∈ A : φ(x)} exists
                        for any BFOL formula φ.
                        (Subsets of interior sets are interior.)

8     Power Set         If A is interior and |A| ≤ ⌊log₂(n_M)⌋,
                        P(A) exists. Every interior set in the
                        standard models satisfies this premise.

9     Choice            For any interior collection of nonempty
                        sets, each member has an element in the
                        domain. (Transitivity of V_n. Choices by
                        enumeration. No non-constructive
                        principle required.)
```

**The ordinal theory.** Von Neumann ordinals 0 = ∅, 1 = {∅}, 2 = {∅, {∅}}, ..., up to the bound. No limit ordinals exist: every nonzero interior ordinal is a successor. Successor S(α) = α ∪ {α} requires α to be interior (BFT 4 and BFT 5). Cardinality and ordinal coincide in BST.

### 1.3 The logical substrate

BFOL (Bounded First-Order Logic) is the logical substrate of BST. For the purposes of this paper, one feature matters: every quantifier carries an explicit bounding term. The only quantifier forms are ∀x ≤ t φ(x) and ∃x ≤ t φ(x), where t is a term. Unbounded quantifier forms are not well-formed. Every statement in this paper (the axiom, the BFTs, the definitions, the theorems) is a BFOL sentence. The bounded quantifier constraint ensures that all such statements are decidable in finite structures.

### 1.4 Conventions and notation

**The parameter k and the model stage n.** The parameter k is the cardinality bound (n_M in BST notation, the maximum cardinality of any interior set in the model). The model stage index n is different: V₃ has 16 elements, and the maximum cardinality of any interior set in 𝒱₃ is |V₂| = 4, so 𝒱₃ is the standard model with bound k = 4. When we write ℕ_B(k), k is the cardinality bound.

The constructions in this paper are uniform in k: they work for every k without requiring a specific value. This paper never fixes k to a specific number.

**Convention on interiority.** From this point forward, when a theorem states "for all sets A, B" or "for any set A," the quantification ranges over interior elements unless stated otherwise. Ceiling elements do not participate in constructions or mathematical reasoning. This convention is inherited from BST and reflects the fact that all mathematical content operates on interior elements.

### 1.5 Plan of the paper

Section 2 develops bounded induction and bounded recursion, the engine and computational tool of proof within BST. Section 3 develops ordered pairs, functions, relations, and quotient structures (the construction toolkit). Sections 4 through 8 build the five number systems in order. Section 9 presents the complete chain, the interiority cascade verification, and the recovery taxonomy. Section 10 concludes.


---


## 2. Bounded Induction and Bounded Recursion

The engine of proof and the computational tool for defining arithmetic operations.

### 2.1 What induction must do in BST

Classical Peano induction asserts: if φ(0) holds and φ(n) → φ(n+1) for all n, then φ(n) holds for all natural numbers. The conclusion ∀n φ(n) quantifies over an infinite domain. In BST, no infinite domain exists. Bounded induction replaces the unbounded conclusion with ∀α ≤ k φ(α) for an explicit interior bound k.

**Proposition: Unbounded induction fails in BST.**

Let φ(n) be the formula "there exists a set of cardinality n," i.e., ∃S ≤ n_M (|S| = n).

- Base case: φ(0) holds. ∅ has cardinality 0.
- Inductive step: φ(n) → φ(n+1) holds for every interior n. If an interior set S of cardinality n exists, then S ∪ {x} for any x ∉ S has cardinality n+1. The construction uses BFT 5 (Union) and BFT 4 (Pairing), both of which require their inputs to be interior. Since S is interior, the construction succeeds.
- At the ceiling: if S is a ceiling element of cardinality k, then S ∪ {x} cannot be formed. BFT 4 requires its inputs to be interior; ceiling elements are not interior. The construction is blocked: not because the property fails, but because the BFT preconditions are not met.
- The unbounded conclusion ∀n φ(n), interpreted as ranging over all natural numbers, asserts that sets of every cardinality exist. But the model contains no set of cardinality k+1. The conclusion fails.

Bounded induction resolves this by restricting the conclusion to ∀α ≤ k φ(α) for an explicit interior k, where all elements below k are automatically interior and all constructions succeed.

### 2.2 Bounded induction (BI-BST)

The primary induction schema, stated and proved valid in BST Section 5.3.

**Schema (BI-BST):** For any BFOL property φ, and any interior bound k:

    φ(0) ∧ ∀α < k (φ(α) → φ(S(α))) → ∀α ≤ k φ(α)

The interiority condition: S(α) = α ∪ {α} is a construction via BFT 4 (Pairing) and BFT 5 (Union), requiring α to be interior. For α < k with k interior, interiority of α is automatic: α ∈ k (as a von Neumann ordinal), and k is interior (k ∈ V_{n-1}), so α ∈ V_{n-1} by transitivity of V_n. No separate interiority check is needed at each step.

**Validity:** In any model 𝒱_n, the ordinals are {0, 1, ..., n_M} for some finite n_M. Any k ≤ n_M is a specific finite number. If φ(0) holds and the step φ(α) → φ(S(α)) holds for all α < k, then φ holds at 0, then at 1, then at 2, ..., terminating after k steps. The process is finite.

**Strong induction variant (SBI-BST):** Derivable from BI-BST by the standard transformation. Define ψ(α) ≡ ∀β ≤ α φ(β). Apply BI-BST to ψ: the hypothesis ∀β < α φ(β) → φ(α) gives the step ψ(α) → ψ(S(α)). BI-BST yields ψ(k), which implies φ(α) for all α ≤ k.

**The ceiling boundary.** BI-BST proofs are valid in every model of BST simultaneously. If BI-BST establishes φ(α) for all α ≤ k for some explicit k, then in any model where k is interior (n_M > k), the conclusion holds. The proof does not need to know the model's ceiling; it only needs k to be interior.

At the ceiling itself, construction is blocked: S(k) = k ∪ {k} requires k to be interior (BFT 4), and ceiling elements are not interior. This is the structural reason induction stops at the ceiling: the successor construction cannot be performed because the BFT preconditions are not met.

### 2.3 Bounded recursion (BR-BST)

The computational correlate of induction. Derived from BI-BST, not assumed independently.

**Schema (BR-BST):** For any functions g and h definable in BST, any interior bound k, there exists a unique function f with domain {0,...,k} such that:

    f(0) = g()
    f(S(α)) = h(α, f(α))   for all interior α < k

**Derivation from BI-BST.** Induct on the property P(m) = "there exists a unique function f_m with domain {0,...,m} satisfying the recursion."

Base (m = 0): f_0 = {(0, g())}. The ordered pair (0, g()) exists by BFT 4 (Pairing), since both 0 and g() are interior. The singleton {(0, g())} exists by BFT 4. f_0 is the unique function with domain {0} satisfying f_0(0) = g(). P(0) holds.

Step: Assume f_m exists uniquely (P(m) holds, m interior since m < k and k is interior). Define v = h(m, f_m(m)). Form the ordered pair (S(m), v) by BFT 4, since both S(m) and v are interior. Form the singleton {(S(m), v)} by BFT 4. Form f_{S(m)} = f_m ∪ {(S(m), v)} by BFT 5 (Union): the pair {f_m, {(S(m), v)}} exists by BFT 4 (both components are interior), and ⋃{f_m, {(S(m), v)}} = f_m ∪ {(S(m), v)} exists by BFT 5 (the pair is interior). This extension is unique given f_m. P(S(m)) holds.

BI-BST gives P(m) for all m ≤ k. Take f = f_k: the unique function on {0,...,k} satisfying the recursion.

The domain of f is bounded by k. BST cannot assert a recursively defined function on all natural numbers, only on ordinals up to a specific bound.

### 2.4 Applications

The primary applications of BR-BST are the recursive definitions of arithmetic on the bounded naturals. These definitions are given here; Section 4 constructs ℕ_B(k) and verifies the arithmetic within it.

**Definition: Addition on ℕ_B(k).** For m, n ∈ ℕ_B(k), addition is defined by BR-BST on n with bound k, holding m fixed:

    m + 0 := m
    m + S(n) := S(m + n)

Each step computes S(m + n) = (m + n) ∪ {m + n}, which requires m + n to be interior (BFT 4 and BFT 5). When m + n is interior, the step is exact.

**Definition: Multiplication on ℕ_B(k).** Defined by BR-BST on n, holding m fixed:

    m × 0 := 0
    m × S(n) := (m × n) + m

Each step uses addition, which is exact for interior results.

**Definition: Exponentiation on ℕ_B(k).** Defined by BR-BST on n, holding m fixed:

    m^0 := 1
    m^S(n) := (m^n) × m

The following algebraic identities are proved by BI-BST using these recursive definitions. They are needed to verify that ℤ_B(k) is a ring (Section 5.2) and ℚ_B(k) is a field (Section 6.2).

**Lemma: 0 + m = m.** By BI-BST on m. Base: 0 + 0 = 0 by the definition of addition (m + 0 := m with m = 0). Step: assume 0 + m = m. Then 0 + S(m) = S(0 + m) = S(m) by the recursive definition and the induction hypothesis.

**Commutativity of addition:** m + n = n + m. By BI-BST on n. Base: m + 0 = m = 0 + m (the latter by the lemma above). Step: assume m + n = n + m. Then m + S(n) = S(m + n) = S(n + m). We need S(n + m) = n + S(m), i.e., S(n + m) = S(n + m), which holds by the recursive definition applied to n + S(m) = S(n + m) (provable by a subsidiary induction on m).

**Associativity of addition:** (m + n) + p = m + (n + p). By BI-BST on p. Base: (m + n) + 0 = m + n = m + (n + 0). Step: assume (m + n) + p = m + (n + p). Then (m + n) + S(p) = S((m + n) + p) = S(m + (n + p)) = m + S(n + p) = m + (n + S(p)).

**Commutativity of multiplication:** m × n = n × m. By BI-BST on n, using commutativity and associativity of addition.

**Associativity of multiplication:** (m × n) × p = m × (n × p). By BI-BST on p.

**Distributivity:** m × (n + p) = m × n + m × p. By BI-BST on p, using associativity and commutativity of addition.


---


## 3. Ordered Pairs, Functions, and Relations

The construction toolkit for building number systems. All constructions use BST's BFTs as the foundation.

### 3.1 Ordered pairs and Cartesian products

**Kuratowski encoding:** (a, b) := {{a}, {a, b}}.

**Construction:** {a} exists by BFT 4 (Pairing, with both inputs a) when a is interior. {a, b} exists by BFT 4 when both a and b are interior. {{a}, {a, b}} exists by BFT 4 when both {a} and {a, b} are interior.

**Rank analysis.** The Kuratowski encoding adds two levels of nesting. If a, b ∈ V_{n-2}, then {a}, {a,b} ∈ V_{n-1} (subsets of V_{n-2}, hence elements of P(V_{n-2}) = V_{n-1}), and (a,b) = {{a},{a,b}} ∈ V_n (a subset of V_{n-1}). For the ordered pair to be interior (available as input to further constructions), it must be in V_{n-1}, which requires a, b ∈ V_{n-3}. For elements of ℕ_B(k), the maximum rank is k (the von Neumann ordinal k has rank k). Pairs of naturals therefore have rank ≤ k+2. For the pair to be interior, the model must have n ≥ k+3. In the standard models 𝒱_n, the super-exponential growth of |V_n| ensures this is satisfied with room to spare for any fixed k.

**Ordered pair correctness:** (a,b) = (c,d) iff a = c and b = d. Proof by BFT 2 (Extensionality), case analysis on whether a = b.

**Cartesian product:** A × B := {(a,b) | a ∈ A, b ∈ B}. Exists when A and B are interior.

Construction: For each a ∈ A, form R_a = {(a,b) | b ∈ B} by BFT 6 (Replacement) applied to B with the map b ↦ (a,b). The preconditions: B is interior (given); each output (a,b) is interior (a and b are members of interior sets, hence interior; the ordered pair is interior in a sufficiently large model by the rank analysis above). Each R_a has cardinality |B| and is interior. The collection {R_a | a ∈ A} is formed by BFT 6 applied to A with the map a ↦ R_a (A is interior, each R_a is interior). Then A × B = ⋃{R_a | a ∈ A} by BFT 5 (Union), since the collection is interior.

Cardinality: |A × B| = |A| · |B|.

### 3.2 Relations and quotient sets

**Binary relation:** A relation R from A to B is a subset of A × B. Exists by BFT 7 (Separation) applied to A × B for any BFOL formula φ(a,b): R = {(a,b) ∈ A × B | φ(a,b)}. Requires A × B to exist (A and B interior).

**Equivalence relation:** A relation ~ on A satisfying reflexivity (∀x ∈ A, x ~ x), symmetry (∀x,y ∈ A, x ~ y → y ~ x), and transitivity (∀x,y,z ∈ A, x ~ y ∧ y ~ z → x ~ z). Each is a bounded statement about elements of A. Whether the properties hold depends on the specific BFOL formula defining ~; the verification for each specific equivalence relation in this paper (Sections 5.1 and 6.1) uses the algebraic identities established in Section 2.4.

**Quotient set:** For an equivalence relation ~ on interior A, the quotient A/~ is the set of equivalence classes.

Construction and interiority verification: A is interior, so A ∈ V_{n-1}, so A ⊆ V_{n-2}. For each a ∈ A, the equivalence class [a] = {x ∈ A | x ~ a} exists by BFT 7 (Separation) applied to interior A. Each [a] is a subset of A, hence a subset of V_{n-2}, hence an element of P(V_{n-2}) = V_{n-1}. So each [a] is interior. The quotient A/~ = {[a] | a ∈ A} is formed by BFT 6 (Replacement) applied to A with the map a ↦ [a]. The preconditions: A is interior (given); each output [a] is interior (just verified). The image has cardinality ≤ |A|, so A/~ is a subset of V_{n-1}, hence an element of V_n. A/~ is interior in any model with stage n+1 or larger.

This interiority cascade (input interior → equivalence classes interior → quotient set interior) is the pattern that makes the constructions of ℤ_B(k) (Section 5) and ℚ_B(k) (Section 6) work.

### 3.3 Functions in BST

Two approaches to functions are available. The syntactic approach is always available and is used for defining arithmetic operations throughout the number chain. FA-BST adds functions as first-class objects (sets) when cardinality permits.

**Syntactic approach.** A function from A to B is a BFOL formula φ_f(x,y) such that:
- Totality: ∀x ∈ A ∃y ∈ B φ_f(x,y)
- Uniqueness: ∀x ∈ A ∀y,z ≤ n_M (φ_f(x,y) ∧ φ_f(x,z) → y = z)

The function is a syntactic object, not a set. Writing f(x) = y means φ_f(x,y). This recovers: function application, composition, image (by BFT 6), preimage (by BFT 7), recursive definitions (by BR-BST).

**The Function Axiom (FA-BST).** Function graphs exist as sets when inputs and outputs are interior. Derived from BFT 6 (Replacement).

FA-BST: For interior A and B, if φ defines a function A → B (totality + uniqueness), then the graph G = {(x, y) | x ∈ A, φ(x,y)} exists as a set.

Derivation: Define the BFOL formula ψ(x, z) ≡ ∃y ≤ n_M (φ(x, y) ∧ z = (x, y)), where z = (x, y) is the Kuratowski pair (expressible as a BFOL formula using bounded quantifiers over members of z). The formula ψ is a BFOL formula since φ is BFOL and the Kuratowski equality is BFOL. By the functionality condition on φ, ψ defines a functional relation: for each x ∈ A, there is a unique z = (x, y_x). By BFT 6 (Replacement) applied to interior A with ψ, the image G = {(x, y_x) | x ∈ A} exists as a set. Each output (x, y_x) is interior (both x and y_x are interior). G is the graph of the function defined by φ.

What FA-BST adds: functions as first-class objects (sets), quantification over specific function sets when the collection fits within the bound.

**Function spaces (remark).** The full function space Func(A,B) = {G ⊆ A × B | G is a function graph} exists as a set when A and B are interior and |B|^|A| ≤ n_M, below the Power Set threshold (BFT 8). This paper's constructions use individual function graphs (FA-BST) and the syntactic approach; full function spaces are not required.

### 3.4 Cardinality

Cardinality as ordinal, following BST Section 5.4. |S| is the length of the shortest adjunction sequence from ∅ to S. In BST, cardinality and ordinal are the same concept.

For interior A and B: |A| ≤ |B| means the ordinal |A| is a member of or equal to the ordinal |B| (von Neumann ordinals are ordered by ∈, which is a linear order on ordinals, BST Section 5.3). The antisymmetry of this order gives: |A| ≤ |B| and |B| ≤ |A| implies |A| = |B|.

Cardinality arithmetic: |A × B| = |A| · |B|, |A ∪ B| = |A| + |B| − |A ∩ B|, where +, ·, − are the arithmetic operations defined in Section 2.4. When P(A) exists (BFT 8, requiring |A| ≤ ⌊log₂(n_M)⌋), |P(A)| = 2^|A|. All provable by BI-BST.


---


## 4. The Bounded Naturals ℕ_B(k)

### 4.1 Construction

The natural numbers in BST are the finite von Neumann ordinals established in BST Section 5.2.

**Definition:** ℕ_B(k) := {α | α is an ordinal and α ≤ k} = {0, 1, 2, ..., k}.

Construction: The von Neumann ordinal k is the set {0, 1, ..., k-1}. The set ℕ_B(k) = k ∪ {k} = S(k), formed by BFT 4 (Pairing, to form {k}) and BFT 5 (Union, to form k ∪ {k}). Both require k to be interior. In any model with n_M > k, k is interior and the construction succeeds.

Cardinality: |ℕ_B(k)| = |S(k)| (the cardinality is the ordinal S(k), which exists because k is interior).

Interiority: When k is interior (n_M > k), all elements of ℕ_B(k) are interior. Each α ≤ k is a member of S(k), and S(k) is in the domain, so α is a member of something in the domain, hence interior by definition.

There is no set ℕ in BST. There is no completed infinite set of all natural numbers. ℕ_B(k) is the natural number set for bound k.

### 4.2 Arithmetic operations

Addition, multiplication, and exponentiation on ℕ_B(k) are defined by BR-BST in Section 2.4. The definitions are:

    m + 0 := m;        m + S(n) := S(m + n)
    m × 0 := 0;        m × S(n) := (m × n) + m
    m^0   := 1;         m^S(n)  := (m^n) × m

Each operation is a function symbol (Section 3.3, syntactic approach) whose graph exists as a set by FA-BST (Section 3.3) when the Cartesian product ℕ_B(k) × ℕ_B(k) fits within the model. The cardinality of ℕ_B(k) is |S(k)|, so the Cartesian product has |S(k)|² elements. In any standard model 𝒱_n with n ≥ k+3 (Section 3.1), the cardinality |V_n| = 2^|V_{n-1}| far exceeds |S(k)|², so the product and its function graphs fit within the model. The graph is constructed by BFT 6 (Replacement), not by Power Set.

The algebraic identities (commutativity, associativity, distributivity) are proved in Section 2.4 by BI-BST.

### 4.3 Arithmetic within the interiority condition

Arithmetic on ℕ_B(k) is exact for interior results. The interiority condition, operating through the BFTs, determines the precise range of available computation:

- Addition: m + n is an interior element of ℕ_B(k) when m + n ≤ k. The result is exact: it is the von Neumann ordinal m + n, constructed by iterated successor. When m + n would exceed k, the successor construction cannot be performed (BFT 4 requires interiority).
- Multiplication: m × n is interior when m × n ≤ k. Exact within this range.
- Exponentiation: m^n is interior when m^n ≤ k. Exact within this range.

This paper works within stated bounds: arithmetic is performed on the domain where results are interior, with explicit provisos when an operation might exceed the bound. An alternative is truncated arithmetic (m +_k n := min(m+n, k)), which is unconditionally closed but sacrifices the cancellation law; this paper uses domain restriction throughout.

The closure proviso propagates through the number chain: when ℤ_B(k) and ℚ_B(k) are defined (Sections 5-6), their arithmetic inherits the same pattern. Ring and field axioms hold on the domain where operations produce interior results.

### 4.4 Order structure

Total order on ℕ_B(k): m ≤ n iff m ⊆ n (von Neumann ordinals). Well-ordered. Minimum element 0. Maximum element k.

The constructions in this paper work in any model with n_M > k, where k is interior. In such a model, every element of ℕ_B(k) is interior, all BFT preconditions are met, and successor is available for all elements up to k. The model-dependent question of whether k is a ceiling element does not arise: we always work in models large enough that k is interior.

### 4.5 The scope of bounded arithmetic

Every specific numerical identity (e.g., 7 + 5 = 12) is provable by direct computation within ℕ_B(k) for any k ≥ 12. For any specific k, universal claims such as ∀m,n ≤ k (m + n = n + m) are provable by BI-BST. These are the algebraic identities of Section 2.4. BST does not assert claims without a specific bound.

The following number-theoretic results are provable within ℕ_B(k) for any specific k, each by BI-BST:

**Divisibility:** m | n defined as ∃q ∈ ℕ_B(k) (n = m × q). All quantifiers bounded. Decidable within ℕ_B(k) by finite search.

**Primality:** n is prime iff n > 1 ∧ ∀m ≤ n (m | n → m = 1 ∨ m = n). Decidable within ℕ_B(k).

**GCD and Euclidean algorithm:** For any m, n ∈ ℕ_B(k) not both zero, gcd(m,n) is computed by the Euclidean algorithm. Termination in at most log₂(max(m,n)) steps: at each step, the remainder strictly decreases, so the process terminates by BI-BST on the remainder size.

**Bezout's identity (natural number form):** For any m, n ∈ ℕ_B(k) not both zero, the extended Euclidean algorithm produces p, q ∈ ℕ_B(k) such that either p · m = q · n + gcd(m,n) or q · n = p · m + gcd(m,n). This avoids negative coefficients and is proved entirely within ℕ_B(k) by BI-BST on the algorithm steps.

**Unique factorisation:** For any n ∈ ℕ_B(k) with n > 1, n has a unique prime factorisation. Existence by BI-BST on n: if n is prime, done; if composite, n = a × b with a, b < n, apply the induction hypothesis to a and b, combine. Uniqueness by BI-BST using the key lemma: if prime p divides a × b, then p divides a or p divides b. Proof of the key lemma: if p ∤ a, then gcd(p, a) = 1 (since p is prime). By Bezout's identity (natural number form), there exist p', a' with p' · p = a' · a + 1 or a' · a = p' · p + 1. In either case, multiplying through by b and using p | a × b yields p | b. All arithmetic is within ℕ_B(k).


---


## 5. The Bounded Integers ℤ_B(k)

### 5.1 Construction

The integers extend the naturals by adding additive inverses.

**Pairs:** Pairs(k) := ℕ_B(k) × ℕ_B(k). Exists by Section 3.1 (Cartesian products) when ℕ_B(k) is interior. Cardinality |S(k)|².

**Equivalence:** (a,b) ~_k (c,d) iff a + d = b + c. The addition is computed in ℕ, where both sides are ≤ 2k. This requires ℕ_B(2k) to exist in the model (n_M > 2k). The equivalence check is an exact condition, not an approximation. Transitivity follows from transitivity of equality. No approximate threshold is involved.

This is the first instance of the "within domain" pattern: equivalence is defined by exact identification, computed in a wider ambient system within the model's resources. The pattern recurs at ℚ_B(k) (Section 6, with ℤ_B(k²)) and ℝ_B(k) (Section 7, with ℚ_B(k)).

Verification that ~_k is an equivalence relation: reflexivity (a + b = b + a by commutativity, Section 2.4); symmetry (a + d = b + c implies c + b = d + a by commutativity); transitivity (if a + d = b + c and c + f = d + e, then a + d + f = b + c + f = b + d + e, so a + f = b + e by the cancellation law, provable by BI-BST in ℕ_B(2k)).

**Definition:** ℤ_B(k) := Pairs(k) / ~_k. Constructed by the quotient machinery of Section 3.2.

**Interiority cascade:** ℕ_B(k) is interior (n_M > k) → Pairs(k) = ℕ_B(k) × ℕ_B(k) exists and is interior (requires n_M ≥ |S(k)|², Section 3.1) → each equivalence class [(a,b)] is a subset of Pairs(k), hence interior (Section 3.2) → ℤ_B(k) = Pairs(k)/~_k is interior (Section 3.2, |ℤ_B(k)| ≤ |Pairs(k)|). The full construction requires n_M > 2k (for equivalence checking) and n_M ≥ |S(k)|² (for the Cartesian product). The rank analysis: elements of ℕ_B(k) have rank ≤ k (Section 3.1), Kuratowski pairs have rank ≤ k+2, Pairs(k) ∈ V_{k+3}, equivalence classes ∈ V_{k+3}, ℤ_B(k) ∈ V_{k+4}. For ℤ_B(k) to be interior: n ≥ k+5.

Cardinality: |ℤ_B(k)| = S(2 × k) (the integers from −k to +k: k negative integers, zero, and k positive integers).

Canonical representatives: (a, 0) for non-negative integers a, and (0, b) for negative integers −b with b > 0.

### 5.2 Arithmetic and ring structure

**Addition:** [(a,b)] + [(c,d)] := [(a+c, b+d)].

Well-definedness: if (a,b) ~ (a',b') and (c,d) ~ (c',d'), then a + b' = b + a' and c + d' = d + c'. We need (a+c) + (b'+d') = (b+d) + (a'+c'). Rearranging the left side: (a+c) + (b'+d') = (a+b') + (c+d') by commutativity and associativity of addition (Section 2.4). Substituting the equivalence hypotheses: (a+b') + (c+d') = (b+a') + (d+c'). Rearranging the right side: (b+a') + (d+c') = (b+d) + (a'+c').

**Subtraction:** [(a,b)] − [(c,d)] := [(a+d, b+c)]. Additive inverse: −[(a,b)] := [(b,a)].

**Multiplication:** [(a,b)] × [(c,d)] := [(ac+bd, ad+bc)].

Well-definedness: if (a,b) ~ (a',b'), so that a + b' = b + a', we need to show (ac+bd, ad+bc) ~ (a'c+b'd, a'd+b'c), i.e., (ac+bd) + (a'd+b'c) = (ad+bc) + (a'c+b'd). Starting from the equivalence hypothesis a + b' = b + a', multiply both sides by (c+d) using distributivity (Section 2.4): a·(c+d) + b'·(c+d) = b·(c+d) + a'·(c+d). Expanding: ac + ad + b'c + b'd = bc + bd + a'c + a'd. Rearranging: (ac + b'd) + (ad + b'c) = (ad + bc) + ... . Collecting terms: (ac+bd) + (a'd+b'c) = (ad+bc) + (a'c+b'd). (The same argument applies when (c,d) ~ (c',d').)

**Closure:** The result of adding [(a,b)] and [(c,d)] is [(a+c, b+d)]. In canonical form, this represents an integer whose value ranges between −2k and 2k, which may fall outside the range [−k, k] of ℤ_B(k). Similarly, multiplication may produce canonical values up to k². All operations are exact when the result falls within [−k, k] and the construction cannot be performed when it would exceed the bound. This is the same interiority pattern as ℕ_B(k) arithmetic (Section 4.3).

**Ring axioms:** On the domain where operations produce interior results, ℤ_B(k) satisfies commutativity, associativity, distributivity, additive identity (0 = [(0,0)]), additive inverses (−[(a,b)] = [(b,a)]), and multiplicative identity (1 = [(1,0)]). All provable by BI-BST using the algebraic identities of Section 2.4.

### 5.3 Order structure

**Order on ℤ_B(k):** [(a,b)] ≤ [(c,d)] iff a + d ≤ b + c. Computed in ℕ_B(2k).

Well-definedness: if (a,b) ~ (a',b') then a + b' = b + a'. We need: a + d ≤ b + c iff a' + d ≤ b' + c. From a + b' = b + a', adding d to both sides: a + b' + d = b + a' + d. Adding c to both sides of the inequality a + d ≤ b + c gives a + d + b' ≤ b + c + b'. Substituting a + b' = b + a': b + a' + d ≤ b + c + b', so a' + d ≤ c + b' = b' + c.

Total order: for any [(a,b)], [(c,d)], either a + d ≤ b + c or b + c ≤ a + d, since ≤ on ℕ_B(2k) is total (Section 4.4). Compatible with ring operations within domain: provable by BI-BST.

### 5.4 Embedding

The canonical embedding ι₁: ℕ_B(k) → ℤ_B(k) defined by n ↦ [(n, 0)].

Injective: if [(n, 0)] = [(m, 0)] then n + 0 = m + 0, so n = m.

Preserves addition: ι₁(m) + ι₁(n) = [(m,0)] + [(n,0)] = [(m+n, 0)] = ι₁(m + n), on the domain where m + n ≤ k.

Preserves multiplication: ι₁(m) × ι₁(n) = [(m,0)] × [(n,0)] = [(m·n+0·0, m·0+0·n)] = [(mn, 0)] = ι₁(mn), on the domain where mn ≤ k.

Order-preserving: m ≤ n in ℕ_B(k) iff m + 0 ≤ 0 + n iff [(m,0)] ≤ [(n,0)].


---


## 6. The Bounded Rationals ℚ_B(k)

### 6.1 Construction

The rationals extend the integers by adding multiplicative inverses for all nonzero elements.

**Fraction pairs:** FracPairs(k) := {(a,b) | a ∈ ℤ_B(k), b ∈ ℤ_B(k), b ≠ 0}. Constructed by BFT 7 (Separation) applied to ℤ_B(k) × ℤ_B(k), selecting pairs with b ≠ 0. Cardinality: S(2 × k) × (2 × k) (the full integer range for the numerator, the nonzero integers for the denominator).

**Equivalence:** (a,b) ~_k (c,d) iff a · d = b · c. The multiplication is computed in ℤ, where both sides have absolute value ≤ k², requiring ℤ_B(k²) as the ambient integer system. This is an exact condition, the second instance of the "within domain" pattern.

Verification that ~_k is an equivalence relation:

Reflexivity: a · b = b · a by commutativity of multiplication (Section 2.4).

Symmetry: if a · d = b · c, then c · b = d · a by commutativity.

Transitivity: if a · d = b · c and c · f = d · e (with b, d, f ≠ 0), we need a · f = b · e. From the hypotheses: a · d · f = b · c · f = b · d · e. Since d ≠ 0, the cancellation law (provable by BI-BST in ℤ_B(k²)) gives a · f = b · e.

**Definition:** ℚ_B(k) := FracPairs(k) / ~_k.

The object is ℚ_B(k): fractions with numerator and denominator bounded by k. The equivalence check requires products up to k², computed in the wider system ℤ_B(k²). This requires the model to satisfy n_M > 2k² (for the ambient integer system).

Canonical representatives: fractions in lowest terms with positive denominator.

Cardinality: |ℚ_B(k)| ≤ S(2 × k) × (2 × k) (bounded by the pre-quotient cardinality of FracPairs(k), since quotienting cannot increase cardinality, BFT 6, |image| ≤ |domain|).

**Interiority cascade:** Elements of ℤ_B(k) have rank ≤ k+3 (Section 5.1). Kuratowski pairs of integers have rank ≤ k+5. FracPairs(k) ⊆ ℤ_B(k) × ℤ_B(k), so FracPairs(k) ∈ V_{k+6}. Each equivalence class is a subset of FracPairs(k), hence ∈ V_{k+6}. ℚ_B(k) ∈ V_{k+7}. For ℚ_B(k) to be interior: n ≥ k+8. The equivalence check requires ℤ_B(k²), which requires n ≥ k²+5 (Section 5.1 applied with k² in place of k). Both requirements are satisfied in any standard model 𝒱_n with n ≥ k²+5.

**Notation in the chain.** The chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) writes k² at the ℚ position. This reflects the resource requirement: the equivalence checking requires products up to k², computed in ℤ_B(k²). The object ℚ_B(k) has components bounded by k; the notation ℚ_B(k²) in the chain indicates the total ambient resource needed at this stage.

### 6.2 Arithmetic and field structure

**Addition:** [(a,b)] + [(c,d)] := [(ad+bc, bd)].

Well-definedness: if (a,b) ~ (a',b') (so ab' = a'b) and (c,d) ~ (c',d') (so cd' = c'd), we need (ad+bc) · (b'd') = (a'd'+b'c') · (bd). Expanding the left side: ad·b'd' + bc·b'd'. Expanding the right side: a'd'·bd + b'c'·bd. From ab' = a'b: a·b' = a'·b, so a·b'·d·d' = a'·b·d·d', giving ad·b'd' = a'd'·bd. From cd' = c'd: c·d' = c'·d, so b·c·b'·d' = b·c'·d·b', giving bc·b'd' = b'c'·bd. Adding the two equalities: ad·b'd' + bc·b'd' = a'd'·bd + b'c'·bd.

Closure: the denominator bd may have absolute value up to k². After reduction by GCD (Section 4.5), the result in lowest terms may still exceed k. Operations that produce results outside ℚ_B(k) require working in ℚ_B(k²) or reducing immediately.

**Multiplication:** [(a,b)] × [(c,d)] := [(ac, bd)].

Well-definedness: if (a,b) ~ (a',b') (so ab' = a'b) and (c,d) ~ (c',d') (so cd' = c'd), we need ac · b'd' = bd · a'c'. From the hypotheses: ac·b'd' = a·c·b'·d' = (ab')·(cd') = (a'b)·(c'd) = a'·c'·b·d = a'c'·bd.

**Division:** [(a,b)] / [(c,d)] := [(ad, bc)] for c ≠ 0.

**Multiplicative inverse:** [(a,b)]⁻¹ := [(b,a)] for a ≠ 0.

**Field axioms:** On the domain where operations produce interior results, ℚ_B(k) satisfies all field axioms: commutativity, associativity, and distributivity of addition and multiplication; additive identity 0 = [(0,1)]; multiplicative identity 1 = [(1,1)]; additive inverses −[(a,b)] = [(−a,b)]; multiplicative inverses [(a,b)]⁻¹ = [(b,a)] for a ≠ 0. Each is an equational identity on equivalence classes of pairs, provable by BI-BST using the ring identities of Section 2.4.

### 6.3 Density and order

**Order:** [(a,b)] < [(c,d)] iff a · d < b · c (with b, d > 0 in canonical form). All comparisons computed in ℤ_B(k²).

Well-definedness: if (a,b) ~ (a',b') (so ab' = a'b, with b, b' > 0), we need a·d < b·c iff a'·d < b'·c. From ab' = a'b, multiply both sides of a·d < b·c by b' (positive, so inequality preserved): a·d·b' < b·c·b'. Substituting ab' = a'b: a'·b·d < b·c·b', so a'·d < c·b' = b'·c.

Strict total order: for any [(a,b)], [(c,d)] with b, d > 0, exactly one of a·d < b·c, a·d = b·c, or a·d > b·c holds (since ≤ on ℤ_B(k²) is total). Compatible with field operations within domain.

**Density:** ℚ_B(k) is k²-dense: no gap between adjacent elements exceeds 1/k².

Proof: For any two adjacent elements p/q and r/s in ℚ_B(k) listed in order (with q, s ≤ k, both in lowest terms, positive denominators), the difference r/s − p/q = (rq − sp)/(sq). Since p/q and r/s are adjacent in the Farey sequence of order k (the sorted list of all fractions in lowest terms with denominator ≤ k), the numerator satisfies rq − sp = 1 (a standard property of Farey neighbours, provable by BI-BST using the extended Euclidean algorithm and Bezout's identity from Section 4.5). Therefore r/s − p/q = 1/(sq) ≤ 1/k².

This density is what allows ℝ_B(k) to be constructed at precision 1/k.

### 6.4 Embedding

The canonical embedding ι₂: ℤ_B(k) → ℚ_B(k) defined by z ↦ [(z, 1)], where 1 = [(1,0)] ∈ ℤ_B(k). The integer z is mapped to the fraction z/1.

Injective: if [(z, 1)] = [(w, 1)] then z · 1 = 1 · w, so z = w.

Preserves addition: ι₂(z) + ι₂(w) = [(z,1)] + [(w,1)] = [(z·1+1·w, 1·1)] = [(z+w, 1)] = ι₂(z+w), on the domain where z + w ∈ ℤ_B(k).

Preserves multiplication: ι₂(z) × ι₂(w) = [(z,1)] × [(w,1)] = [(zw, 1)] = ι₂(zw), on the domain where zw ∈ ℤ_B(k).

Order-preserving: z ≤ w in ℤ_B(k) iff z · 1 ≤ 1 · w iff [(z,1)] ≤ [(w,1)].


---


## 7. The Bounded Reals ℝ_B(k)

### 7.1 Bounded Cauchy sequences

A finite sequence of length m over ℚ_B(k) is a function from {0, ..., m} to ℚ_B(k). By FA-BST (Section 3.3), the function graph exists as a set when {0,...,m} and ℚ_B(k) are interior. The Cauchy condition is a BFOL formula with all quantifiers bounded by m ≤ k².

**Definition:** A bounded Cauchy sequence with precision 1/k is a function s: {0,...,m} → ℚ_B(k) such that:
- m ≤ k² (length bounded)
- ∀i,j ≤ m (i ≥ ⌈m/2⌉ ∧ j ≥ ⌈m/2⌉ → |s(i) − s(j)| < 1/k)

where |s(i) − s(j)| is computed using subtraction and absolute value on ℚ_B(k) (Section 6), and 1/k = [(1, k)] ∈ ℚ_B(k). The modulus of convergence is explicit: all pairs in the second half of the sequence are within 1/k.

**CS(k) as a set.** Let CS(k) denote the set of all bounded Cauchy sequences with precision 1/k over ℚ_B(k). Each sequence is a function graph, a subset of {0,...,m} × ℚ_B(k) for some m ≤ k². By BFT 8, P(A) exists for every interior set A in the standard models (the Power Set threshold is never exceeded on the interior fragment). The function space Func({0,...,m}, ℚ_B(k)) is a subset of P({0,...,m} × ℚ_B(k)) and exists when {0,...,m} × ℚ_B(k) is interior. CS(k) is obtained by BFT 7 (Separation), selecting those function graphs satisfying the Cauchy condition. CS(k) exists when ℚ_B(k) is interior and the model stage n is large enough that all relevant sets are interior.

### 7.2 The canonical rounding equivalence

The equivalence relation for ℝ_B(k). This is the critical construction. It must produce an exact equivalence, not an approximate one.

**The problem with approximate equivalence:** Defining s ~ t by "the tails of s and t are within 2/k of each other" fails transitivity. If s and t are 2/k-close, and t and u are 2/k-close, the triangle inequality gives only that s and u are 4/k-close. This holds at every k: the ratio 4/k to 2/k is always 2. Approximate equality at a fixed precision is inherently non-transitive.

**The canonical rounding function:** ρ_k: CS(k) → ℚ_B(k) defined as follows. For s ∈ CS(k) with final term q_m:

ρ_k(s) is the element r ∈ ℚ_B(k) minimising |q_m − r|, with ties broken by canonical ordering on ℚ_B(k) (lowest terms, positive denominator, lexicographic on (numerator, denominator)).

The minimum exists because ℚ_B(k) is a finite linearly ordered set, so the minimisation is a finite search, computable by direct enumeration. The absolute value |q_m − r| is computed in ℚ_B(k²) (Section 6). The selection of the minimiser is definable by a BFOL formula; ρ_k(s) exists by BFT 7 (Separation) applied to ℚ_B(k).

**The equivalence:** s ~_k t iff ρ_k(s) = ρ_k(t). Two Cauchy sequences are equivalent iff they round to the same canonical rational.

This is an equivalence relation: reflexivity, symmetry, and transitivity are immediate from the transitivity of equality on ℚ_B(k). No approximate threshold is involved. No precision degradation occurs.

This is the third instance of the "within domain" pattern. At each stage of the chain, equivalence is defined by exact identification computed within the model's domain:
- ℤ_B(k): exact condition a + d = b + c, computed in ℕ_B(2k).
- ℚ_B(k): exact condition a · d = b · c, computed in ℤ_B(k²).
- ℝ_B(k): exact condition ρ_k(s) = ρ_k(t), computed in ℚ_B(k).

The pattern is uniform: exact equality, trivially transitive, no approximate threshold.

### 7.3 Construction

**Definition:** ℝ_B(k) := CS(k) / ~_k ≅ range(ρ_k) ⊆ ℚ_B(k).

Each equivalence class is represented by its canonical rational ρ_k(s). The quotient is isomorphic to the image of ρ_k, a finite subset of ℚ_B(k). In practice, ℝ_B(k) may be identified with this subset.

Cardinality: |ℝ_B(k)| ≤ |ℚ_B(k)| ≤ S(2 × k) × (2 × k) (since ℝ_B(k) = range(ρ_k) ⊆ ℚ_B(k), and subset cardinality ≤ ambient set cardinality by BFT 7).

**Interiority cascade:** Since ℝ_B(k) ≅ range(ρ_k) ⊆ ℚ_B(k), and ℚ_B(k) is interior (Section 6.1, requiring n ≥ k+8), ℝ_B(k) is a subset of an interior set, hence an element of V_{k+8}, hence interior when n ≥ k+9. CS(k) itself has higher rank (function graphs are more deeply nested), but ℝ_B(k) is identified with range(ρ_k), not with CS(k), so ℝ_B(k)'s rank is determined by ℚ_B(k)'s rank.

**Rational embedding:** ι₃: ℚ_B(k) → ℝ_B(k) defined by q ↦ ρ_k((q, q, q)) = q. The constant sequence (q, q, q) of length 3 is in CS(k): |q − q| = 0 < 1/k. Its final term is q, which rounds to itself. So ι₃ is the identity on ℚ_B(k): every rational maps to itself. Injective, order-preserving, field-homomorphic on the domain where operations close.

**What ℝ_B(k) contains:** All of ℚ_B(k) (via constant sequences). All computable reals approximable to precision 1/k within the bound, e.g., √2, π, e are represented by their nearest rational at precision 1/k, computed by bounded algorithms (Newton-Raphson for √2 converges in ⌈log₂(log₂(k))⌉ steps using arithmetic in ℚ_B(k²)). Each such representative is a specific, computable element of ℚ_B(k).

The bounded reals are a finite set of rationals. BST does not posit the classical real line; it works with each finite precision level directly.

### 7.4 Arithmetic

Arithmetic on ℝ_B(k) is rational arithmetic on canonical representatives, followed by rounding.

**Definition:** For a, b ∈ ℝ_B(k) (identified with their canonical rational representatives in ℚ_B(k)):
- a +_k b := ρ_k(a +_ℚ b), where a +_ℚ b is rational addition computed in ℚ_B(k²), then rounded back to ℚ_B(k).
- a ×_k b := ρ_k(a ×_ℚ b), where a ×_ℚ b is rational multiplication computed in ℚ_B(k⁴), then rounded back.
- −_k a := ρ_k(−a) = −a (negation is exact: if a ∈ ℚ_B(k), then −a ∈ ℚ_B(k)).
- a /_k b := ρ_k(a /_ℚ b) for b ≠ 0, where a /_ℚ b is rational division computed in ℚ_B(k⁴), then rounded back. Division by zero is not defined.

Well-definedness: the operations are defined on canonical representatives (elements of ℚ_B(k)), not on equivalence classes of sequences. If [s] = [t], then ρ_k(s) = ρ_k(t), so the same canonical representative is used. No well-definedness issue arises.

**Model size requirement:** Addition requires ℚ_B(k²) as the ambient system for cross-multiplication. By Section 6.1 (with k² in place of k), ℚ_B(k²) requires n ≥ k²+8. Multiplication requires ℚ_B(k⁴), requiring n ≥ k⁴+8. These requirements are satisfied in any standard model 𝒱_n with n ≥ k⁴+8.

**Field structure at precision 1/k.** Every operation on ℝ_B(k) produces a definite, exact element of ℚ_B(k). The field identities have precise content at precision 1/k:
- Commutativity: a +_k b = b +_k a. Exact. ρ_k(a + b) = ρ_k(b + a) by commutativity of rational addition. Similarly for multiplication.
- Associativity at precision 1/k: (a +_k b) +_k c and a +_k (b +_k c) are both definite elements of ℝ_B(k). The BST theorem is: |(a +_k b) +_k c − (a +_k (b +_k c))| ≤ 1/(2k²). This is the content of associativity: the two computation orders produce values on the same or adjacent grid points. The classical identity without the precision parameter is a formal shorthand that suppresses the grid structure.
- Distributivity at precision 1/k: a ×_k (b +_k c) and (a ×_k b) +_k (a ×_k c) are both definite elements. The BST theorem quantifies the grid displacement as at most C/k² for computable C.
- Identities: a +_k 0 = a. a ×_k 1 = a. Both exact.
- Additive inverses: a +_k (−_k a) = 0. Exact.

All provable by BI-BST. Every verified proof of the classical identities is itself a finite derivation over finite symbols. BST's formulation makes the finite precision explicit rather than suppressing it behind an infinite ontology.

### 7.5 Completeness

**k-completeness:** Every bounded Cauchy sequence s ∈ CS(k) has a limit in ℝ_B(k), namely ρ_k(s), its canonical rational representative.

Proof: ρ_k(s) ∈ ℝ_B(k) by construction (it is in range(ρ_k)). Every tail element s(i) for i ≥ ⌈m/2⌉ satisfies |s(i) − s(m)| < 1/k (the Cauchy condition). Since ρ_k(s) is the nearest element of ℚ_B(k) to s(m), we have |s(m) − ρ_k(s)| ≤ 1/(2k²) (the maximum distance to the nearest grid point, by the density of ℚ_B(k)). Therefore |s(i) − ρ_k(s)| ≤ |s(i) − s(m)| + |s(m) − ρ_k(s)| < 1/k + 1/(2k²). The limit ρ_k(s) is within 1/k + 1/(2k²) of every tail element. This is the only sense of "limit" available at precision 1/k.

### 7.6 Comparison with classical ℝ

What ℝ_B(k) has that ℝ does not: explicit precision at every step, computable witnesses for all existence claims, finite search for extrema (every function on a finite domain attains its maximum and minimum), no non-computable reals.

What ℝ has that ℝ_B(k) does not: completed infinite decimal expansions, uncountable cardinality, the associativity identity stated without a precision parameter (a formal shorthand that suppresses the grid structure), irrational elements as formal objects in the theory rather than rational representatives.

The difference is ontological, not computational. Every verified proof of real analysis is a finite derivation over finite representations. BST makes this finiteness explicit. The analytical apparatus over ℝ_B(k) (continuity, differentiation, integration, convergence, transcendental functions) belongs to the subsequent bounded analysis paper. This paper establishes ℝ_B(k) as the finite field on which that analysis will be built.


---


## 8. The Bounded Complex Numbers ℂ_B(k⁴)

### 8.1 Construction

**Definition:** ℂ_B(k⁴) := ℝ_B(k) × ℝ_B(k). Ordered pairs of bounded reals, constructed by Section 3.1 (Cartesian products).

Cardinality: |ℂ_B(k⁴)| = |ℝ_B(k)|² ≤ (S(2 × k) × (2 × k))². The parameter k⁴ in the notation reflects the model size requirement.

Existence: The Cartesian product exists when ℝ_B(k) is interior. By BFT 8, P(A) exists for all interior A in the standard models, so the product and all its subsets exist whenever ℝ_B(k) is interior.

**Interiority cascade:** Elements of ℝ_B(k) have rank ≤ k+6 (as elements of ℚ_B(k), Section 6.1). Kuratowski pairs of reals have rank ≤ k+8. ℂ_B(k⁴) ⊆ V_{k+8}, so ℂ_B(k⁴) ∈ V_{k+9}. For ℂ_B(k⁴) to be interior: n ≥ k+10.

### 8.2 Arithmetic and field structure

**Complex arithmetic:** For (a,b), (c,d) ∈ ℂ_B(k⁴):
- Addition: (a,b) + (c,d) := (a +_k c, b +_k d), using ℝ_B(k) addition (Section 7.4).
- Multiplication: (a,b) · (c,d) := (a ×_k c −_k b ×_k d, a ×_k d +_k b ×_k c), using ℝ_B(k) multiplication and subtraction.
- Negation: −(a,b) := (−_k a, −_k b).
- Conjugation: conj(a,b) := (a, −_k b). Conjugation negates the second component.
- Modulus squared: ||(a,b)||² := a ×_k a +_k b ×_k b ∈ ℝ_B(k).
- Multiplicative inverse (for (a,b) ≠ (0,0)): (a,b)⁻¹ := (a /_k ||(a,b)||², (−_k b) /_k ||(a,b)||²), using ℝ_B(k) division (Section 7.4).

**Model size requirement:** Addition uses ℝ_B(k) operations, requiring ℚ_B(k²) for intermediate computation (n ≥ k²+8, Section 6.1). Multiplication involves four ℝ_B(k) multiplications, requiring ℚ_B(k⁴) (n ≥ k⁴+8). Both satisfied in any standard model 𝒱_n with n ≥ k⁴+8.

**Field structure at precision 1/k.** Every operation produces a specific, exact element of ℂ_B(k⁴). The field identities have precise content at precision 1/k:
- Commutativity: exact (immediate from commutativity of ℝ_B(k) operations).
- Associativity at precision 1/k: (a·b)·c and a·(b·c) are both definite elements of ℂ_B(k⁴). The BST theorem quantifies the grid displacement as at most C/k² for computable C, since each complex multiplication involves at most four ℝ_B(k) operations, each placing its result on a definite grid point.
- Identities: exact. Additive identity (0,0). Multiplicative identity (1,0).
- Additive inverses: exact. Multiplicative inverses: a · a⁻¹ is a definite element; the BST theorem quantifies its displacement from (1,0) as at most O(1/k²).

**Non-orderability (exact).** i² = (0,1) · (0,1). Computing by the multiplication rule: real part = 0 ×_k 0 −_k 1 ×_k 1 = 0 − 1 = −1; imaginary part = 0 ×_k 1 +_k 1 ×_k 0 = 0 + 0 = 0. So i² = (−1, 0). This computation is exact: all intermediate values (0, 1, −1) are elements of ℚ_B(k) with no rounding needed. In any ordered field, x² ≥ 0 for all x. But i² = (−1, 0), and −1 < 0. Therefore no total order on ℂ_B(k⁴) is compatible with the field operations. This is the expected algebraic behaviour, independent of the bounded setting.

**Embedding:** ι₄: ℝ_B(k) → ℂ_B(k⁴) by a ↦ (a, 0). Injective, field-homomorphic on the domain where operations close. Imaginary unit i := (0, 1), satisfying i² = (−1, 0).

### 8.3 Algebraic closure

For polynomials of low degree, roots in ℂ_B(k⁴) are computable by explicit formulas within this paper's framework:
- Degree 1: az + b = 0 gives z = (−b) /_k a, using ℝ_B(k) division (Section 7.4).
- Degree 2: az² + bz + c = 0 gives z = ((−b) ±_k √_k(b² −_k 4ac)) /_k (2a), where √_k denotes the nearest rational representative of the square root in ℝ_B(k), computable by Newton-Raphson (Section 7.3).
- Degrees 3 and 4: explicit formulas exist (Cardano, Ferrari) and are computable in ℂ_B(k⁴) using the same arithmetic.

For polynomials of degree d ≥ 5, no algebraic formula using radicals exists (Abel-Ruffini, a finite algebraic result about the non-solvability of S₅, requiring no infinite machinery). Root-finding for these degrees requires iterative methods whose development belongs to the subsequent bounded analysis paper. This paper establishes ℂ_B(k⁴) as the bounded complex field; general algebraic closure is available once the iterative machinery is in place.

### 8.4 Cayley-Dickson extensions

The Cayley-Dickson construction iterates the Cartesian product with a modified multiplication rule. At each step, an algebraic property is lost.

**Bounded quaternions:** ℍ_B(k⁸) := ℂ_B(k⁴) × ℂ_B(k⁴) with Cayley-Dickson multiplication:

(a,b) · (c,d) := (a·c −_k conj(d)·b, d·a +_k b·conj(c))

where conj denotes complex conjugation (Section 8.2). Cardinality ≤ |ℂ_B(k⁴)|² ≤ (S(2 × k) × (2 × k))⁴.

**Interiority cascade:** Elements of ℂ_B(k⁴) have rank ≤ k+8 (Kuratowski pairs, Section 8.1). Kuratowski pairs of complex numbers have rank ≤ k+10. ℍ_B(k⁸) ∈ V_{k+11}. For interiority: n ≥ k+12.

Division algebra. Every operation produces a specific, exact element. Associativity at precision 1/k: (a·b)·c and a·(b·c) are both definite elements of ℍ_B(k⁸). The BST theorem quantifies the grid displacement between the two computation orders, as with ℂ_B(k⁴) and ℝ_B(k).

Non-commutative. With i = ((0,1),(0,0)) and j = ((0,0),(1,0)):

i·j: By the Cayley-Dickson rule with a=(0,1), b=(0,0), c=(0,0), d=(1,0):
First component: (0,1)·(0,0) −_k conj((1,0))·(0,0).
  (0,1)·(0,0) = (0·0 −_k 1·0, 0·0 +_k 1·0) = (0, 0).
  conj((1,0)) = (1,0). (1,0)·(0,0) = (1·0 −_k 0·0, 1·0 +_k 0·0) = (0, 0).
  First component = (0,0) −_k (0,0) = (0,0).
Second component: (1,0)·(0,1) +_k (0,0)·conj((0,0)).
  (1,0)·(0,1) = (1·0 −_k 0·1, 1·1 +_k 0·0) = (0, 1).
  conj((0,0)) = (0,0). (0,0)·(0,0) = (0, 0).
  Second component = (0,1) +_k (0,0) = (0,1).
Result: i·j = ((0,0), (0,1)).

j·i: By the Cayley-Dickson rule with a=(0,0), b=(1,0), c=(0,1), d=(0,0):
First component: (0,0)·(0,1) −_k conj((0,0))·(1,0).
  (0,0)·(0,1) = (0·0 −_k 0·1, 0·1 +_k 0·0) = (0, 0).
  conj((0,0)) = (0,0). (0,0)·(1,0) = (0·1 −_k 0·0, 0·0 +_k 0·1) = (0, 0).
  First component = (0,0) −_k (0,0) = (0,0).
Second component: (0,0)·(0,0) +_k (1,0)·conj((0,1)).
  (0,0)·(0,0) = (0, 0).
  conj((0,1)) = (0,−1). (1,0)·(0,−1) = (1·0 −_k 0·(−1), 1·(−1) +_k 0·0) = (0, −1).
  Second component = (0,0) +_k (0,−1) = (0,−1).
Result: j·i = ((0,0), (0,−1)).

So i·j = ((0,0),(0,1)) ≠ ((0,0),(0,−1)) = j·i. Commutativity fails.

**Bounded octonions:** 𝕆_B(k¹⁶) := ℍ_B(k⁸) × ℍ_B(k⁸) with Cayley-Dickson multiplication (analogous). Cardinality ≤ (S(2 × k) × (2 × k))⁸. Division algebra, non-associative, non-commutative. The alternative law at precision 1/k: a·(a·b) and (a·a)·b are both definite elements, with the BST theorem quantifying the grid displacement.

**Interiority cascade:** Elements of ℍ_B(k⁸) have rank ≤ k+10. Kuratowski pairs have rank ≤ k+12. 𝕆_B(k¹⁶) ∈ V_{k+13}. For interiority: n ≥ k+14.

The loss of commutativity at ℍ and associativity at 𝕆 are features of the Cayley-Dickson construction, not of the bounded setting.

Cardinalities are formally bounded at each step: |ℝ_B(k)| ≤ S(2×k)×(2×k), |ℂ_B(k⁴)| ≤ (S(2×k)×(2×k))², |ℍ_B(k⁸)| ≤ (S(2×k)×(2×k))⁴, |𝕆_B(k¹⁶)| ≤ (S(2×k)×(2×k))⁸. Each bound is an ordinal computed by the arithmetic of Section 2.4. For a fixed model bound, the growth of these bounds sets a practical limit on which extensions are available at given precision.


---


## 9. The Complete Number Chain

### 9.1 The embedding chain

The complete chain:

    ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴)

with embeddings:
- ι₁: n ↦ [(n, 0)], naturals into integers (Section 5.4)
- ι₂: z ↦ [(z, 1)], integers into rationals (Section 6.4, lands in ℚ_B(k); the chain notation ℚ_B(k²) reflects the resource requirement for equivalence checking, as explained in Section 6.1)
- ι₃: q ↦ ρ_k((q, q, q)) = q, rationals into reals, identity on ℚ_B(k) (Section 7.3)
- ι₄: a ↦ (a, 0), reals into complex numbers (Section 8.2)

Each embedding is injective and preserves the algebraic structure of the preceding system on the domain where results are interior elements of the target system. The proofs are given in Sections 5.4, 6.4, 7.3, and 8.2 respectively.

**Composition:** The composite ι₄ ∘ ι₃ ∘ ι₂ ∘ ι₁: ℕ_B(k) → ℂ_B(k⁴) is well-defined: n ↦ [(n,0)] ↦ [((n,0), 1)] ↦ (n,0) as a rational ↦ ((n,0), (0,0)) as a complex number. Each step is injective (Sections 5.4-8.2), so the composite is injective. The composite preserves addition and multiplication on the domain where all intermediate and final results are interior. The natural number n is recoverable from its image at every stage of the chain.

The parameter growth (k, k, k², k, k⁴) reflects the combinatorial cost of each construction: k² at ℚ because equivalence checking requires products up to k² (computed in ℤ_B(k²)), k⁴ at ℂ because the Cartesian product ℝ_B(k) × ℝ_B(k) has |ℝ_B(k)|² ≤ (S(2 × k) × (2 × k))² elements.

### 9.2 The "within domain" pattern

At each quotient stage of the chain, the equivalence is defined by exact identification computed within the model's domain:

| Stage | Equivalence | Exact condition | Equality checked in | Intermediate computation in |
|-------|------------|----------------|--------------------|-----------------------------|
| ℤ_B(k) | (a,b) ~ (c,d) | a + d = b + c | ℕ_B(2k) | ℕ_B(2k) |
| ℚ_B(k) | (a,b) ~ (c,d) | a · d = b · c | ℤ_B(k²) | ℤ_B(k²) |
| ℝ_B(k) | s ~ t | ρ_k(s) = ρ_k(t) | ℚ_B(k) | ℚ_B(k²) (for rounding) |

The table has three rows because the chain has three quotient stages. ℕ_B(k) is the base (constructed directly from ordinals, no quotient). ℂ_B(k⁴) is a Cartesian product (no equivalence relation required).

In every case: exact equality, trivially transitive, no approximate threshold. The quotient is always well-defined. This uniformity is not coincidental. It is forced by BST's requirement that all constructions use decidable conditions on interior elements.

This pattern is what makes the chain work as a chain: each embedding (ι₁, ι₂, ι₃) maps into a quotient system, so it must be well-defined on equivalence classes. If any equivalence were approximate (non-transitive), the embedding would fail: different representatives of the same class could map to different classes in the target. Exact equivalence at every stage is a structural requirement, not a convenience.

### 9.3 The interiority cascade

For sufficiently large model stage n, all five number systems, their embeddings, and their arithmetic fit within 𝒱_n with all components interior. The rank calculations are given inline in Sections 4-8; this section summarises the results.

**Rank requirements by stage (from Sections 4-8):**

| System | Rank | Interior when | Formal cardinality bound |
|--------|------|---------------|--------------------------|
| ℕ_B(k) | ∈ V_{k+2} | n ≥ k+3 | \|S(k)\| |
| ℤ_B(k) | ∈ V_{k+4} | n ≥ k+5 | S(2 × k) |
| ℚ_B(k) | ∈ V_{k+7} | n ≥ k+8 | S(2 × k) × (2 × k) |
| ℝ_B(k) | ⊆ ℚ_B(k) | n ≥ k+8 | S(2 × k) × (2 × k) |
| ℂ_B(k⁴) | ∈ V_{k+9} | n ≥ k+10 | (S(2 × k) × (2 × k))² |
| ℍ_B(k⁸) | ∈ V_{k+11} | n ≥ k+12 | (S(2 × k) × (2 × k))⁴ |
| 𝕆_B(k¹⁶) | ∈ V_{k+13} | n ≥ k+14 | (S(2 × k) × (2 × k))⁸ |

**Ambient system requirements:** The arithmetic operations on ℝ_B(k) and ℂ_B(k⁴) require wider ambient systems for intermediate computation: ℚ_B(k²) (n ≥ k²+8) for real addition, ℚ_B(k⁴) (n ≥ k⁴+8) for real and complex multiplication. These requirements dominate the rank requirements above.

**Governing requirement:** The entire chain with arithmetic fits within 𝒱_n for n ≥ k⁴+8. This is a specific ordinal computed by the arithmetic of Section 2.4. For any k, the standard model 𝒱_{k⁴+8} contains the entire number chain with all components interior and all arithmetic operations available.

### 9.4 The recovery taxonomy

Three types of recovery, strictly ordered by strength:

**Type I (internal exact):** BST proves the theorem outright about its own objects. No precision parameters, no family indexing. Examples: unique factorisation in ℕ_B(k), Lagrange's theorem, CRT, Fermat's Little Theorem, quadratic reciprocity.

**Type II (uniform family):** BST proves the theorem at each precision level k with stable form. Examples: k-completeness of ℝ_B(k), the density of ℚ_B(k) (k²-dense for each k).

**Type III (precision-parameterised):** BST proves the theorem at each precision level k with an explicit precision parameter quantifying the grid displacement. The precision parameter is the mathematical content: it reports what computation actually produces. Examples: associativity of ℝ_B(k) (grid displacement ≤ 1/(2k²)), distributivity of ℝ_B(k).

The diagnostic test: can you point to a specific BST model and a specific BST theorem that witnesses the recovery? If yes → at most Type II. If the theorem involves a precision parameter → Type III.

The ordering of strength is strict: Type I > Type II > Type III.

### 9.5 Classification of number-theoretic results

Every major result from the number chain classified by recovery type:

| Result | Type | Structural reason |
|--------|------|-------------------|
| Commutativity of + and × (ℕ,ℤ,ℚ) | I | Exact identity, proved by BI-BST |
| Associativity of + and × (ℕ,ℤ,ℚ) | I | Exact identity, proved by BI-BST |
| Distributivity (ℕ,ℤ,ℚ) | I | Exact identity, proved by BI-BST |
| Unique factorisation in ℕ_B(k) | I | Proved by BI-BST on n |
| Fermat's Little Theorem | I | Lagrange's theorem applied to (ℤ/pℤ)* |
| Chinese Remainder Theorem | I | Constructive proof by BI-BST |
| Lagrange's theorem | I | Coset decomposition by BI-BST |
| Quadratic reciprocity | I | Proved by BI-BST in ℤ/pqℤ |
| Modular arithmetic (ℤ/nℤ) | I | Quotient ring by Section 3.2 |
| Commutativity of + and × (ℝ,ℂ) | I | Exact: rounding applied to same value |
| Additive/multiplicative identities | I | Exact at every level |
| Additive inverses (all systems) | I | Exact at every level |
| k-completeness of ℝ_B(k) | II | Proved at each k by construction |
| Density of ℚ_B(k) (k²-dense) | II | Proved at each k by BI-BST |
| Embedding chain preservation | II | Proved at each k by BI-BST |
| Associativity of + and × (ℝ,ℂ) | III | Grid displacement ≤ 1/(2k²) |
| Distributivity (ℝ,ℂ) | III | Grid displacement ≤ C/k² |
| Multiplicative inverses (ℝ,ℂ) | III | Grid displacement ≤ O(1/k²) |

### 9.6 Relationship to infinite-ontology number systems

What the bounded chain recovers: the algebraic and number-theoretic content of the standard chain, with every object finite, every cardinality formally bounded (Section 9.3), and every construction verified through the BFTs.

What it does not contain: completed infinite totalities (ℕ, ℤ, ℚ, ℝ, ℂ as infinite sets), uncountable cardinality, the associativity/distributivity identities on ℝ and ℂ stated without a precision parameter (formal shorthands that suppress the grid structure), non-computable reals/complex numbers, Dedekind-infinite sets.

Why the differences are features: BST's precision-parameterised identities are strictly more informative than the shorthands used in infinite-ontology frameworks: they report what computation actually produces; computable witnesses are stronger than non-constructive existence; finite search replaces infinite-domain arguments.


---


## 10. Conclusion

The bounded number chain ℕ_B(k) ↪ ℤ_B(k) ↪ ℚ_B(k²) ↪ ℝ_B(k) ↪ ℂ_B(k⁴) is constructed from a single axiom. The Axiom of Finite Bounds determines the standard models 𝒱_n. The nine Bounded Fundamental Theorems provide the construction tools: Pairing for ordered pairs, Replacement for function graphs and quotient sets, Separation for subsets defined by properties, Union for collecting results. Bounded induction and bounded recursion provide the proof engine and the computational tool. Every construction is verified within the standard models, with the interiority cascade (that inputs, outputs, and results remain interior at every stage) checked explicitly. Every cardinality is formally bounded by expressions in S, ×, and exponentiation from Section 2.4. For any k, the standard model 𝒱_{k⁴+8} contains the entire number chain with all components interior and all arithmetic operations available.

Three structural principles govern the construction. First, the "within domain" pattern: at each quotient stage of the chain, equivalence is defined by exact identification computed within the model's resources. This pattern is a structural requirement: if any equivalence were approximate, the embeddings would fail. Second, the interiority cascade: each construction consumes a bounded number of rank levels, and the super-exponential growth of the cumulative hierarchy ensures room for the next. Third, precision is explicit at every level: on the discrete systems, arithmetic is exact for interior results; on the continuous systems, every operation produces a definite value and the grid displacement is bounded (≤ 1/(2k²) per operation for associativity, ≤ C/k² for distributivity). Every verified proof in mathematics is a finite derivation over finite symbols. BST makes this finiteness explicit rather than suppressing it behind an infinite ontology. The three-type recovery taxonomy (Section 9.4) classifies every result in the chain: most are Type I (exact), with completeness and density at Type II (uniform family) and the continuous-system identities at Type III (precision-parameterised).

The number chain is established. The Cayley-Dickson extensions (ℍ_B(k⁸), 𝕆_B(k¹⁶)) are available at the algebraic level. The analytical apparatus over ℝ_B(k) and ℂ_B(k⁴) (continuity, differentiation, integration, convergence, transcendental functions) belongs to subsequent papers. The bounded metatheory (characterising the proof-theoretic boundary on BST's own terms, without importing infinite frameworks) is a separate and open line of work.


---


## References

**Bounded Set Theory.** Working Paper, 2026. The set theory: single axiom, nine BFTs, standard models. The sole dependency of this paper.
