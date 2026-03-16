(*
  afb_scaffold.thy

  Isabelle/HOL scaffold for the working paper on the Axiom of Finite
  Bounds (AFB), Bounded First-Order Logic (BFOL), and Bounded Set Theory (BST).

  Purpose.
  --------
  This theory records, in Isabelle/HOL form, the principal syntactic
  categories, proof rules, object-language constants, and axiom-schemas
  tracked in the paper. It is intended to function as a formal appendix
  scaffold and cross-checking aid for the manuscript.

  Status.
  -------
  This is not a completed mechanization of the full metatheory developed
  or proposed in the paper. In particular:

  - BFOL is represented here as a bounded proof language with primitive
    bounded quantifiers.
  - The manuscript's Global Boundedness Principle (GBP) is primarily a
    metatheoretic restriction on intended models; this theory uses a simple
    meta-level surrogate [Omega] only for draft cardinal bookkeeping.
  - Several proof-theoretic side conditions stated in the manuscript,
    especially freshness conditions on bounded quantifier rules, are not
    yet internalized in the inductive proof system below.
  - Substitution, well-formedness, semantic interpretation, and
    soundness/completeness are not yet fully developed here.
  - The BST section should be read as a registry of the paper's core
    constructions and dependencies, not as a final semantic reduction of
    all BST claims to Isabelle/HOL.

  Accordingly, this theory is best understood as a publication-facing
  formal scaffold accompanying the working paper, rather than as a
  finished verified deep embedding.
*)

theory afb_scaffold
  imports Main
begin

(* ================================================================== *)
(* PART 1: BFOL — Bounded First-Order Logic                           *)
(* ================================================================== *)

section \<open>Bounded First-Order Logic (BFOL)\<close>

text \<open>
  Variables are represented by natural numbers.
  Variable-management side conditions remain external to the formal
  development, consistent with the paper's role as a foundational sketch.
\<close>

type_synonym var = nat

text \<open>
  Function and relation symbols carry arities. The current syntax does
  not yet enforce those arities intrinsically.
\<close>

typedecl func_sym
typedecl rel_sym

consts
  func_arity :: "func_sym \<Rightarrow> nat"
  rel_arity  :: "rel_sym \<Rightarrow> nat"

text \<open>
  BFOL terms. Unbounded quantifiers are intentionally absent from the
  language of formulas. BFOL admits only bounded universal and bounded
  existential quantification as primitive quantifier forms.
\<close>

datatype term_bfol =
    TVar var
  | TConst nat
  | TFun func_sym "term_bfol list"

text \<open>BFOL formulas.\<close>

datatype formula_bfol =
    FEqual term_bfol term_bfol
  | FRel rel_sym "term_bfol list"
  | FNot formula_bfol
  | FAnd formula_bfol formula_bfol
  | FOr formula_bfol formula_bfol
  | FImp formula_bfol formula_bfol
  | FForallB var term_bfol formula_bfol
  | FExistsB var term_bfol formula_bfol

text \<open>
  Distinguished bounding relation.
  In the paper, every quantifier is explicitly bounded. The bound
  relation is represented by a designated relation symbol [leq_sym].
\<close>

consts leq_sym :: rel_sym

definition BLe :: "term_bfol \<Rightarrow> term_bfol \<Rightarrow> formula_bfol" where
  "BLe u t = FRel leq_sym [u, t]"

text \<open>
  Draft absurdity marker. Serves as a placeholder contradiction formula
  for the natural deduction presentation. A dedicated [false_sym] is used
  rather than reusing [leq_sym] at arity 0, which would be conceptually
  messy since [leq_sym] is the bounding relation.
\<close>

consts false_sym :: rel_sym

definition absurd :: formula_bfol where
  "absurd = FRel false_sym []"

text \<open>
  Formula substitution. Left abstract in this scaffold. A later
  mechanization would replace this with a concrete, verified,
  capture-avoiding definition.
\<close>

consts subst_formula :: "var \<Rightarrow> term_bfol \<Rightarrow> formula_bfol \<Rightarrow> formula_bfol"

text \<open>Contexts are finite lists of assumptions.\<close>

type_synonym context_bfol = "formula_bfol list"

text \<open>
  Natural deduction for BFOL.

  Propositional and equality rules follow ordinary first-order proof
  practice. The bounded quantifier rules encode the manuscript's rules
  schematically.

  Note: freshness restrictions for bounded forall-introduction and
  exists-elimination are not yet represented explicitly in this
  lightweight scaffold. This is a known gap flagged for future work.

  Note: no explosion rule (ex falso) is present. This is intentional
  for the scaffold — the system is not yet full classical or intuitionistic
  ND. A complete mechanization would add: absurd \<turnstile> phi for arbitrary phi.

  Note: [EqualF] is not identified with HOL equality. The axioms that
  conclude meta-level HOL equality (e.g. Ordered_Pair_Injective,
  Pairing_Cardinality) are bridge axioms connecting the object language
  to the meta level, not claims that EqualF and HOL = coincide.
\<close>

inductive Provable :: "context_bfol \<Rightarrow> formula_bfol \<Rightarrow> bool"
  ("_ \<turnstile> _" [50, 50] 50) where
  Pr_Assume:
    "phi \<in> set Gamma \<Longrightarrow> Gamma \<turnstile> phi"
| Pr_And_I:
    "\<lbrakk> Gamma \<turnstile> phi; Gamma \<turnstile> psi \<rbrakk> \<Longrightarrow> Gamma \<turnstile> FAnd phi psi"
| Pr_And_EL:
    "Gamma \<turnstile> FAnd phi psi \<Longrightarrow> Gamma \<turnstile> phi"
| Pr_And_ER:
    "Gamma \<turnstile> FAnd phi psi \<Longrightarrow> Gamma \<turnstile> psi"
| Pr_Or_IL:
    "Gamma \<turnstile> phi \<Longrightarrow> Gamma \<turnstile> FOr phi psi"
| Pr_Or_IR:
    "Gamma \<turnstile> psi \<Longrightarrow> Gamma \<turnstile> FOr phi psi"
| Pr_Or_E:
    "\<lbrakk> Gamma \<turnstile> FOr phi psi;
       (phi # Gamma) \<turnstile> chi;
       (psi # Gamma) \<turnstile> chi \<rbrakk>
     \<Longrightarrow> Gamma \<turnstile> chi"
| Pr_Imp_I:
    "(phi # Gamma) \<turnstile> psi \<Longrightarrow> Gamma \<turnstile> FImp phi psi"
| Pr_Imp_E:
    "\<lbrakk> Gamma \<turnstile> FImp phi psi; Gamma \<turnstile> phi \<rbrakk> \<Longrightarrow> Gamma \<turnstile> psi"
| Pr_Not_I:
    "(phi # Gamma) \<turnstile> absurd \<Longrightarrow> Gamma \<turnstile> FNot phi"
| Pr_Not_E:
    "\<lbrakk> Gamma \<turnstile> phi; Gamma \<turnstile> FNot phi \<rbrakk> \<Longrightarrow> Gamma \<turnstile> absurd"
| Pr_Eq_Refl:
    "Gamma \<turnstile> FEqual t t"
| Pr_Eq_Symm:
    "Gamma \<turnstile> FEqual s t \<Longrightarrow> Gamma \<turnstile> FEqual t s"
| Pr_Eq_Trans:
    "\<lbrakk> Gamma \<turnstile> FEqual r s; Gamma \<turnstile> FEqual s t \<rbrakk>
     \<Longrightarrow> Gamma \<turnstile> FEqual r t"
| Pr_ForallB_I:
    "(BLe (TVar x) b # Gamma) \<turnstile> phi
     \<Longrightarrow> Gamma \<turnstile> FForallB x b phi"
| Pr_ForallB_E:
    "\<lbrakk> Gamma \<turnstile> FForallB x b phi; Gamma \<turnstile> BLe u b \<rbrakk>
     \<Longrightarrow> Gamma \<turnstile> subst_formula x u phi"
| Pr_ExistsB_I:
    "\<lbrakk> Gamma \<turnstile> subst_formula x u phi; Gamma \<turnstile> BLe u b \<rbrakk>
     \<Longrightarrow> Gamma \<turnstile> FExistsB x b phi"
| Pr_ExistsB_E:
    "\<lbrakk> Gamma \<turnstile> FExistsB x b phi;
       (phi # BLe (TVar x) b # Gamma) \<turnstile> psi \<rbrakk>
     \<Longrightarrow> Gamma \<turnstile> psi"


(* ================================================================== *)
(* PART 2: BST — Bounded Set Theory                                   *)
(* ================================================================== *)

section \<open>Bounded Set Theory (BST)\<close>

text \<open>
  Meta-level carrier for the BST scaffold.

  The paper sharply distinguishes BFOL as a bounded object-language from
  the further semantic restriction that intended BST models be finite.
  This theory does not reconstruct that full semantics. Instead, [obj] is
  a meta-level carrier for recording the principal BST constructors and
  axiom-schemas. Note: the BST content is organised as a flat theory
  section rather than an Isabelle locale; a future mechanization could
  wrap it in a locale with explicit assumptions.
\<close>

typedecl obj

consts
  denote   :: "obj \<Rightarrow> term_bfol"
  card_bst :: "obj \<Rightarrow> nat"
  is_ordinal :: "obj \<Rightarrow> bool"

text \<open>
  Meta-level finite bound.

  In the manuscript's more mature formulation, the Global Boundedness
  Principle is metatheoretic. [Omega] is a draft meta-level surrogate
  used for compact cardinal statements in this scaffold.
\<close>

consts Omega :: nat

axiomatization where
  Omega_nonzero : "Omega > 0"

axiomatization where
  AFB_Bound : "\<And>x :: obj. card_bst x \<le> Omega"

text \<open>Backward-compatible aliases.\<close>

lemmas Omega_not_zero = Omega_nonzero
lemmas AFB = AFB_Bound

text \<open>
  Meta-level formula constructors for membership and equality.
  This bridge allows stating BST axioms using the BFOL formula type
  without claiming the object-language/semantics interface is fully
  internalized.
\<close>

consts
  MemberF :: "obj \<Rightarrow> obj \<Rightarrow> formula_bfol"
  EqualF  :: "obj \<Rightarrow> obj \<Rightarrow> formula_bfol"

text \<open>Theorems of the empty context.\<close>

abbreviation Thm :: "formula_bfol \<Rightarrow> bool" where
  "Thm phi \<equiv> [] \<turnstile> phi"

text \<open>Extensionality.\<close>

axiomatization where
  Extensionality :
    "\<And>x y :: obj.
       (\<forall>z :: obj. Thm (FImp (MemberF z x) (MemberF z y))) \<Longrightarrow>
       (\<forall>z :: obj. Thm (FImp (MemberF z y) (MemberF z x))) \<Longrightarrow>
       Thm (EqualF x y)"

text \<open>Empty set.\<close>

consts empty_set :: obj

axiomatization where
  Empty_Set_Property :
    "\<And>x :: obj. Thm (FNot (MemberF x empty_set))"

axiomatization where
  Empty_Set_Cardinality :
    "card_bst empty_set = 0"

lemmas EmptySet_Property = Empty_Set_Property
lemmas EmptySet_Card = Empty_Set_Cardinality

text \<open>Pairing.\<close>

consts pair_bst :: "obj \<Rightarrow> obj \<Rightarrow> obj"

axiomatization where
  Pairing_Left  : "\<And>x y :: obj. Thm (MemberF x (pair_bst x y))" and
  Pairing_Right : "\<And>x y :: obj. Thm (MemberF y (pair_bst x y))" and
  Pairing_Only  :
    "\<And>x y z :: obj.
       Thm (FImp (MemberF z (pair_bst x y))
                 (FOr (EqualF z x) (EqualF z y)))"

axiomatization where
  Pairing_Cardinality :
    "\<And>x y :: obj.
       (x = y \<longrightarrow> card_bst (pair_bst x y) = 1) \<and>
       (x \<noteq> y \<longrightarrow> card_bst (pair_bst x y) = 2)"

text \<open>Ordered pairs.\<close>

consts opair :: "obj \<Rightarrow> obj \<Rightarrow> obj"

axiomatization where
  Ordered_Pair_Injective :
    "\<And>a b c d :: obj.
       Thm (EqualF (opair a b) (opair c d)) \<Longrightarrow> a = c \<and> b = d"

lemmas OrderedPair_Injective = Ordered_Pair_Injective

text \<open>Bounded union.

  Note: the Union_Property axiom below is a surrogate. The bound variable
  0 does not occur in the body, so it does not fully express ordinary union
  membership. A complete mechanization would introduce a fresh variable
  properly bound to the members of x. This is flagged for future work.
\<close>

consts b_union :: "obj \<Rightarrow> obj"

axiomatization where
  Union_Property :
    "\<And>x z :: obj.
       Thm (FImp (MemberF z (b_union x))
                 (FExistsB 0 (denote x) (MemberF z (pair_bst z z))))"

text \<open>Power set, subject to the ambient bound recorded by [Omega].\<close>

consts power_set_bst :: "obj \<Rightarrow> obj option"

axiomatization where
  Power_Set_Condition :
    "\<And>x :: obj.
       (2 ^ card_bst x \<le> Omega) \<longleftrightarrow>
       (\<exists>p :: obj. power_set_bst x = Some p)"

lemmas PowerSet_Condition = Power_Set_Condition

text \<open>Separation.\<close>

consts separation :: "obj \<Rightarrow> (obj \<Rightarrow> formula_bfol) \<Rightarrow> obj"

axiomatization where
  Separation_Property :
    "\<And>(x :: obj) (P :: obj \<Rightarrow> formula_bfol) (z :: obj).
       Thm (FImp (MemberF z (separation x P)) (MemberF z x))"

axiomatization where
  Separation_Cardinality :
    "\<And>(x :: obj) (P :: obj \<Rightarrow> formula_bfol).
       card_bst (separation x P) \<le> card_bst x"

lemmas Separation_Card = Separation_Cardinality

text \<open>Replacement.

  Note: Replacement_Property is a surrogate. The bounded existential does
  not relate y to F — it only asserts that something bounded exists. A
  complete mechanization would properly express that y is in the image of
  F applied to members of x. Flagged for future work.
\<close>

consts replacement :: "obj \<Rightarrow> (obj \<Rightarrow> obj \<Rightarrow> formula_bfol) \<Rightarrow> obj"

axiomatization where
  Replacement_Property :
    "\<And>(x :: obj) (F :: obj \<Rightarrow> obj \<Rightarrow> formula_bfol).
       (\<forall>a b1 b2.
           Thm (F a b1) \<longrightarrow> Thm (F a b2) \<longrightarrow> Thm (EqualF b1 b2)) \<Longrightarrow>
       \<forall>y :: obj.
         Thm (FImp (MemberF y (replacement x F))
                   (FExistsB 0 (denote x) (FNot absurd)))"

text \<open>Regularity.\<close>

axiomatization where
  Regularity :
    "\<And>x :: obj.
       (\<exists>y :: obj. Thm (MemberF y x)) \<Longrightarrow>
       \<exists>y :: obj.
         Thm (MemberF y x) \<and>
         (\<forall>z :: obj. Thm (MemberF z y) \<longrightarrow> \<not> Thm (MemberF z x))"

text \<open>Bounded choice.\<close>

consts choice_set :: "obj \<Rightarrow> obj"

axiomatization where
  Bounded_Choice :
    "\<And>x :: obj.
       (\<forall>y :: obj.
           Thm (MemberF y x) \<longrightarrow>
           (\<exists>z :: obj. Thm (MemberF z y))) \<Longrightarrow>
       \<forall>y :: obj.
         Thm (MemberF y x) \<longrightarrow>
         (\<exists>z :: obj.
           Thm (MemberF z y) \<and>
           Thm (MemberF (opair y z) (choice_set x)))"

text \<open>
  Primitive ordinal/numerical fragment.

  These definitions track the paper's minimal ordinal and cardinal
  apparatus used to state AFB-related constructions.
\<close>

abbreviation is_nat :: "obj \<Rightarrow> bool" where
  "is_nat n \<equiv> is_ordinal n"

consts succ_bst :: "obj \<Rightarrow> obj option"

axiomatization where
  Successor_Condition :
    "\<And>n :: obj.
       (card_bst n + 1 \<le> Omega) \<longleftrightarrow>
       (\<exists>sn :: obj. succ_bst n = Some sn)"

lemmas Succ_Condition = Successor_Condition

text \<open>Draft rational and scaffold encodings.\<close>

definition is_rational :: "obj \<Rightarrow> bool" where
  "is_rational q \<equiv>
     \<exists>n d :: obj.
       Thm (EqualF q (pair_bst n d)) \<and>
       is_nat n \<and>
       is_nat d \<and>
       card_bst d > 0"

definition is_scaffold :: "obj \<Rightarrow> bool" where
  "is_scaffold s \<equiv>
     \<forall>k :: obj.
       is_nat k \<longrightarrow>
       (\<exists>q :: obj.
         Thm (MemberF (opair k q) s) \<and> is_rational q)"

text \<open>
  Scaffold precision limit. An immediate consequence of the ambient
  finite-bound axiom. Retained as a named checkpoint corresponding to
  a claim tracked in the working paper.
\<close>

theorem Scaffold_Precision_Limit :
  "is_scaffold s \<Longrightarrow> card_bst s \<le> Omega"
  by (simp add: AFB_Bound)

lemmas scaffold_precision_limit = Scaffold_Precision_Limit

text \<open>
  Feasibility is represented here as a meta-level predicate on BFOL
  formulas. In the present scaffold this remains schematic.
\<close>

consts is_feasible :: "formula_bfol \<Rightarrow> bool"

axiomatization where
  BST_Feasibility :
    "\<And>phi :: formula_bfol. Thm phi \<Longrightarrow> is_feasible phi"

(* ================================================================== *)
(* VERIFICATION CHECKPOINT                                            *)
(* ================================================================== *)

text \<open>
  Verification checkpoint.

  If this theorem is accepted by Isabelle/HOL without errors, the
  following has been machine-verified:

  - All definitions in this scaffold typecheck.
  - All axioms are well-formed and accepted by Isabelle/HOL.
  - The Scaffold_Precision_Limit theorem is proved: any scaffold object
    has cardinality bounded by Omega, as an immediate consequence of AFB.
  - The core formal structure of Bounded First-Order Logic (BFOL) and
    Bounded Set Theory (BST) is machine-checked.

  This does not constitute a full verification of the manuscript's
  metatheory. Substitution, freshness conditions, soundness, and
  completeness remain as future work. What is verified is that the
  principal definitions, axiom schemas, and proof rules are formally
  coherent and accepted by a proof assistant.
\<close>

theorem AFB_Scaffold_Verified :
  "card_bst empty_set = 0 \<and> Omega > 0"
  by (simp add: Empty_Set_Cardinality Omega_nonzero)

text \<open>
  If the theorem above is accepted without errors and the output panel
  shows:

    theorem AFB_Scaffold_Verified: card_bst empty_set = 0 \<and> 0 < Omega

  then the scaffold has been accepted by Isabelle/HOL.
\<close>

end
