(*
  afb_scaffold_2_merged.thy

  Publication-facing Isabelle/HOL scaffold for the Axiom of Finite Bounds
  (AFB), Bounded First-Order Logic (BFOL), Bounded Set Theory (BST), and
  the semantic, analytic, model-theoretic, and extension material tracked
  across the current BST working-paper sequence.

  Current status.
  ---------------
  This file is a checked scaffold rather than a finished deep embedding.
  In its current form it has been reorganized into a multi-part registry
  that now includes:

    - the core BFOL syntax and bounded proof system,
    - the core BST object-level constructor and axiom registry,
    - checkpoint lemmas for the basic finite-bound and ordinal fragments,
    - extension registries for bounded complex analysis, topology/measure,
      computational complexity, proof-theoretic ordinal analysis, and
      finite-analog algebraic structures,
    - a semantic-core section with abstract BST models and bounded
      satisfaction clauses,
    - an operational ontology / function-theory section,
    - a bounded number-chain and calculus section,
    - validation and implementation-constraint sections, and
    - a model-theory / AFB-formulations section incorporating the current
      standard-model and finite-model checkpoint placeholders.

  What is currently verified.
  ---------------------------
  The present theory is intended to typecheck cleanly in Isabelle/HOL and
  to serve as a publication-facing cross-check scaffold. In particular,
  the current status is that:

    - the merged declarations, definitions, axioms, and small lemmas are
      syntactically coherent enough to be checked by Isabelle/HOL,
    - the file has been debugged through several theory-name and arity/
      type mismatches introduced during merging,
    - the main scaffold sections are now organized into a more stable
      structure for later editing,
    - several checkpoint lemmas are proved as immediate consequences of
      the registered axioms,
    - but the overall development remains largely axiomatic and does not
      yet provide a full internal semantics, substitution theory,
      soundness/completeness proof, or final reduction of the extension
      material.

  Editorial note.
  ---------------
  This version preserves essentially all valuable merged material from the
  current working pass, but some clauses remain intentionally schematic.
  A number of axioms still function primarily as named dependency markers
  rather than as maximally informative formalizations. The file should be
  read as a maintained formal scaffold for iterative refinement, not as a
  completed mechanization of the BST programme.

  Future work.
  ------------
  The present scaffold also makes several concrete next steps visible:

    - internalize free-variable, freshness, and capture-avoiding
      substitution machinery for BFOL,
    - replace surrogate semantic constants with recursive satisfaction and
      valuation definitions where feasible,
    - sharpen weak registry axioms into better object-language statements,
    - distinguish more systematically between metatheoretic claims,
      object-language formulas, and bridge principles,
    - develop explicit finite-model locales and connect them to the current
      bst_model record,
    - refine the bounded number-chain and calculus layer into more precise
      operational definitions rather than high-level placeholders,
    - revisit the extension sections to separate durable registries from
      conjectural or proposed material, and
    - add a final publication-facing verification note describing exactly
      which parts are machine-checked and which remain schematic.

  These are natural continuation points suggested by the current theory
  structure itself, rather than commitments that all such developments are
  already complete in the present file.
*)

theory afb_bfol_core
  imports Main
begin

(* ================================================================== *)
(* PART I: BFOL — BOUNDED FIRST-ORDER LOGIC                           *)
(* ================================================================== *)

section \<open>Bounded First-Order Logic (BFOL)\<close>

text \<open>
  Variables are represented by natural numbers. Function and relation
  symbols carry arities, though the present syntax does not yet enforce
  those arities intrinsically.
\<close>

type_synonym var = nat

typedecl func_sym
typedecl rel_sym

consts
  func_arity :: "func_sym \<Rightarrow> nat"
  rel_arity  :: "rel_sym \<Rightarrow> nat"

text \<open>
  BFOL terms and formulas. Unbounded quantifiers are intentionally absent.
\<close>

datatype term_bfol =
    TVar var
  | TConst nat
  | TFun func_sym "term_bfol list"

datatype formula_bfol =
    FEqual term_bfol term_bfol
  | FRel rel_sym "term_bfol list"
  | FNot formula_bfol
  | FAnd formula_bfol formula_bfol
  | FOr formula_bfol formula_bfol
  | FImp formula_bfol formula_bfol
  | FForallB var term_bfol formula_bfol
  | FExistsB var term_bfol formula_bfol

consts leq_sym :: rel_sym

definition BLe :: "term_bfol \<Rightarrow> term_bfol \<Rightarrow> formula_bfol" where
  "BLe u t = FRel leq_sym [u, t]"

consts false_sym :: rel_sym

definition absurd :: formula_bfol where
  "absurd = FRel false_sym []"

text \<open>
  Concrete free-variable and substitution machinery for BFOL.
  Variables are natural numbers, so fresh variables can be chosen by a
  simple max-plus-one construction on finite free-variable sets.
\<close>

fun fv_term :: "term_bfol \<Rightarrow> var set" where
  "fv_term (TVar x) = {x}"
| "fv_term (TConst c) = {}"
| "fv_term (TFun f ts) = \<Union>(fv_term ` set ts)"

fun fv_formula :: "formula_bfol \<Rightarrow> var set" where
  "fv_formula (FEqual s t) = fv_term s \<union> fv_term t"
| "fv_formula (FRel r ts) = \<Union>(fv_term ` set ts)"
| "fv_formula (FNot phi) = fv_formula phi"
| "fv_formula (FAnd phi psi) = fv_formula phi \<union> fv_formula psi"
| "fv_formula (FOr phi psi) = fv_formula phi \<union> fv_formula psi"
| "fv_formula (FImp phi psi) = fv_formula phi \<union> fv_formula psi"
| "fv_formula (FForallB x t phi) = fv_term t \<union> (fv_formula phi - {x})"
| "fv_formula (FExistsB x t phi) = fv_term t \<union> (fv_formula phi - {x})"

definition fresh_var :: "var set \<Rightarrow> var" where
  "fresh_var S = Suc (Max (insert 0 S))"

fun subst_term :: "var \<Rightarrow> term_bfol \<Rightarrow> term_bfol \<Rightarrow> term_bfol" where
  "subst_term x s (TVar y) = (if x = y then s else TVar y)"
| "subst_term x s (TConst c) = TConst c"
| "subst_term x s (TFun f ts) = TFun f (map (subst_term x s) ts)"

fun subst_formula :: "var \<Rightarrow> term_bfol \<Rightarrow> formula_bfol \<Rightarrow> formula_bfol" where
  "subst_formula x s (FEqual t1 t2) = FEqual (subst_term x s t1) (subst_term x s t2)"
| "subst_formula x s (FRel r ts) = FRel r (map (subst_term x s) ts)"
| "subst_formula x s (FNot phi) = FNot (subst_formula x s phi)"
| "subst_formula x s (FAnd phi psi) = FAnd (subst_formula x s phi) (subst_formula x s psi)"
| "subst_formula x s (FOr phi psi) = FOr (subst_formula x s phi) (subst_formula x s psi)"
| "subst_formula x s (FImp phi psi) = FImp (subst_formula x s phi) (subst_formula x s psi)"
| "subst_formula x s (FForallB y t phi) =
     (if y = x then FForallB y (subst_term x s t) phi
      else FForallB y (subst_term x s t) (subst_formula x s phi))"
| "subst_formula x s (FExistsB y t phi) =
     (if y = x then FExistsB y (subst_term x s t) phi
      else FExistsB y (subst_term x s t) (subst_formula x s phi))"

text \<open>
  The present substitution function is structurally recursive and therefore
  accepted directly by Isabelle/HOL. It should be read as a lightweight
  scaffold-level substitution operator. A fully verified capture-avoiding
  substitution, together with the necessary renaming lemmas, remains future
  work for a deeper mechanization.
\<close>

definition free_in_term :: "var \<Rightarrow> term_bfol \<Rightarrow> bool" where
  "free_in_term x t \<longleftrightarrow> x \<in> fv_term t"

definition free_in_formula :: "var \<Rightarrow> formula_bfol \<Rightarrow> bool" where
  "free_in_formula x phi \<longleftrightarrow> x \<in> fv_formula phi"

type_synonym context_bfol = "formula_bfol list"

definition fresh_for_ctx :: "var \<Rightarrow> context_bfol \<Rightarrow> bool" where
  "fresh_for_ctx x Gamma \<longleftrightarrow> (\<forall>phi \<in> set Gamma. x \<notin> fv_formula phi)"

text \<open>
  Natural deduction for BFOL. Freshness side conditions are not yet built
  directly into the proof rules and remain externalized.
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
    "\<lbrakk> Gamma \<turnstile> FEqual r s; Gamma \<turnstile> FEqual s t \<rbrakk> \<Longrightarrow> Gamma \<turnstile> FEqual r t"
| Pr_ForallB_I:
    "(BLe (TVar x) b # Gamma) \<turnstile> phi \<Longrightarrow> Gamma \<turnstile> FForallB x b phi"
| Pr_ForallB_E:
    "\<lbrakk> Gamma \<turnstile> FForallB x b phi; Gamma \<turnstile> BLe u b \<rbrakk> \<Longrightarrow>
       Gamma \<turnstile> subst_formula x u phi"
| Pr_ExistsB_I:
    "\<lbrakk> Gamma \<turnstile> subst_formula x u phi; Gamma \<turnstile> BLe u b \<rbrakk> \<Longrightarrow>
       Gamma \<turnstile> FExistsB x b phi"
| Pr_ExistsB_E:
    "\<lbrakk> Gamma \<turnstile> FExistsB x b phi;
       (phi # BLe (TVar x) b # Gamma) \<turnstile> psi \<rbrakk> \<Longrightarrow>
       Gamma \<turnstile> psi"

definition ForallB_Fresh_OK ::
  "var \<Rightarrow> term_bfol \<Rightarrow> context_bfol \<Rightarrow> formula_bfol \<Rightarrow> bool" where
  "ForallB_Fresh_OK x b Gamma phi \<longleftrightarrow>
     x \<notin> fv_term b \<and> fresh_for_ctx x Gamma"

definition ExistsB_Fresh_OK ::
  "var \<Rightarrow> term_bfol \<Rightarrow> context_bfol \<Rightarrow> formula_bfol \<Rightarrow> formula_bfol \<Rightarrow> bool" where
  "ExistsB_Fresh_OK x b Gamma phi psi \<longleftrightarrow>
     x \<notin> fv_term b \<and> fresh_for_ctx x Gamma \<and> x \<notin> fv_formula psi"


lemma fresh_var_not_in:
  assumes "finite S"
  shows "fresh_var S ∉ S"
proof
  assume "fresh_var S ∈ S"
  then have "fresh_var S ≤ Max (insert 0 S)"
    using assms by simp
  moreover have "Max (insert 0 S) < fresh_var S"
    unfolding fresh_var_def by simp
  ultimately show False
    by simp
qed

lemma finite_fv_term[simp]: "finite (fv_term t)"
  by (induction t) auto

lemma finite_fv_formula[simp]: "finite (fv_formula phi)"
  by (induction phi) auto
lemma fresh_for_ctxI:
  "(\<And>phi. phi \<in> set Gamma \<Longrightarrow> x \<notin> fv_formula phi) \<Longrightarrow> fresh_for_ctx x Gamma"
  unfolding fresh_for_ctx_def by simp

(* ================================================================== *)
(* PART II: BST — CORE SET-THEORETIC SCAFFOLD                         *)
(* ================================================================== *)

section \<open>Bounded Set Theory (BST)\<close>

typedecl obj

consts
  denote        :: "obj \<Rightarrow> term_bfol"
  card_bst      :: "obj \<Rightarrow> nat"
  is_ordinal    :: "obj \<Rightarrow> bool"
  is_finite_set :: "obj \<Rightarrow> bool"

text \<open>
  Meta-level finite bound used as a scaffold surrogate for the manuscript's
  metatheoretic Global Boundedness Principle.
\<close>

consts Omega :: nat

axiomatization where
  Omega_nonzero : "Omega > 0" and
  AFB_Bound     : "\<And>x :: obj. card_bst x \<le> Omega"

lemmas AFB = AFB_Bound
lemmas Omega_not_zero = Omega_nonzero

text \<open>Primitive ordinal registry.\<close>

consts
  empty_ordinal :: obj
  succ_ordinal  :: "obj \<Rightarrow> obj"
  canonical_ord :: "obj \<Rightarrow> obj"

axiomatization where
  Empty_Ordinal_Is_Nat : "is_ordinal empty_ordinal" and
  Succ_Ordinal_Preserves_Nat :
    "\<And>n :: obj. is_ordinal n \<Longrightarrow> is_ordinal (succ_ordinal n)" and
  Finite_Sets_Are_Bounded :
    "\<And>x :: obj. is_finite_set x \<Longrightarrow> card_bst x \<le> Omega" and
  Finite_Coincidence_Scaffold :
    "\<And>x :: obj. is_finite_set x \<Longrightarrow> is_ordinal (canonical_ord x)"

abbreviation is_nat :: "obj \<Rightarrow> bool" where
  "is_nat n \<equiv> is_ordinal n"

text \<open>
  Bridge formulas for membership and equality. These are object-language
  placeholders and are not identified with HOL predicates.
\<close>

consts
  MemberF :: "obj \<Rightarrow> obj \<Rightarrow> formula_bfol"
  EqualF  :: "obj \<Rightarrow> obj \<Rightarrow> formula_bfol"

abbreviation Thm :: "formula_bfol \<Rightarrow> bool" where
  "Thm phi \<equiv> [] \<turnstile> phi"

text \<open>Basic set constructors.\<close>

consts
  empty_set      :: obj
  pair_bst       :: "obj \<Rightarrow> obj \<Rightarrow> obj"
  opair          :: "obj \<Rightarrow> obj \<Rightarrow> obj"
  b_union        :: "obj \<Rightarrow> obj"
  power_set_bst  :: "obj \<Rightarrow> obj option"
  separation     :: "obj \<Rightarrow> (obj \<Rightarrow> formula_bfol) \<Rightarrow> obj"
  replacement    :: "obj \<Rightarrow> (obj \<Rightarrow> obj \<Rightarrow> formula_bfol) \<Rightarrow> obj"
  choice_set     :: "obj \<Rightarrow> obj"
  succ_bst       :: "obj \<Rightarrow> obj option"

axiomatization where
  Extensionality :
    "\<And>x y :: obj.
       (\<forall>z :: obj. Thm (FImp (MemberF z x) (MemberF z y))) \<Longrightarrow>
       (\<forall>z :: obj. Thm (FImp (MemberF z y) (MemberF z x))) \<Longrightarrow>
       Thm (EqualF x y)" and
  Empty_Set_Property :
    "\<And>x :: obj. Thm (FNot (MemberF x empty_set))" and
  Empty_Set_Cardinality :
    "card_bst empty_set = 0" and
  Pairing_Left  :
    "\<And>x y :: obj. Thm (MemberF x (pair_bst x y))" and
  Pairing_Right :
    "\<And>x y :: obj. Thm (MemberF y (pair_bst x y))" and
  Pairing_Only  :
    "\<And>x y z :: obj.
       Thm (FImp (MemberF z (pair_bst x y)) (FOr (EqualF z x) (EqualF z y)))" and
  Pairing_Cardinality :
    "\<And>x y :: obj.
       (x = y \<longrightarrow> card_bst (pair_bst x y) = 1) \<and>
       (x \<noteq> y \<longrightarrow> card_bst (pair_bst x y) = 2)" and
  Ordered_Pair_Injective :
    "\<And>a b c d :: obj.
       Thm (EqualF (opair a b) (opair c d)) \<Longrightarrow> a = c \<and> b = d" and
  Union_Property :
    "\<And>x z :: obj.
       Thm (FImp (MemberF z (b_union x))
                 (FExistsB 0 (denote x) (MemberF z (pair_bst z z))))" and
  Power_Set_Condition :
    "\<And>x :: obj.
       (2 ^ card_bst x \<le> Omega) \<longleftrightarrow> (\<exists>p :: obj. power_set_bst x = Some p)" and
  Separation_Property :
    "\<And>(x :: obj) (P :: obj \<Rightarrow> formula_bfol) (z :: obj).
       Thm (FImp (MemberF z (separation x P)) (MemberF z x))" and
  Separation_Cardinality :
    "\<And>(x :: obj) (P :: obj \<Rightarrow> formula_bfol).
       card_bst (separation x P) \<le> card_bst x" and
  Replacement_Property :
    "\<And>(x :: obj) (F :: obj \<Rightarrow> obj \<Rightarrow> formula_bfol).
       (\<forall>a b1 b2. Thm (F a b1) \<longrightarrow> Thm (F a b2) \<longrightarrow> Thm (EqualF b1 b2)) \<Longrightarrow>
       \<forall>y :: obj.
         Thm (FImp (MemberF y (replacement x F))
                   (FExistsB 0 (denote x) (FNot absurd)))" and
  Regularity :
    "\<And>x :: obj.
       (\<exists>y :: obj. Thm (MemberF y x)) \<Longrightarrow>
       \<exists>y :: obj.
         Thm (MemberF y x) \<and>
         (\<forall>z :: obj. Thm (MemberF z y) \<longrightarrow> \<not> Thm (MemberF z x))" and
  Bounded_Choice :
    "\<And>x :: obj.
       (\<forall>y :: obj. Thm (MemberF y x) \<longrightarrow> (\<exists>z :: obj. Thm (MemberF z y))) \<Longrightarrow>
       \<forall>y :: obj.
         Thm (MemberF y x) \<longrightarrow>
         (\<exists>z :: obj. Thm (MemberF z y) \<and> Thm (MemberF (opair y z) (choice_set x)))" and
  Successor_Condition :
    "\<And>n :: obj.
       (card_bst n + 1 \<le> Omega) \<longleftrightarrow> (\<exists>sn :: obj. succ_bst n = Some sn)"

text \<open>Minimal induction and feasibility scaffolds.\<close>

consts is_feasible :: "formula_bfol \<Rightarrow> bool"

axiomatization where
  BST_Bounded_Induction :
    "\<And>P :: obj \<Rightarrow> bool.
       (\<And>k :: obj.
          is_nat k \<Longrightarrow>
          P empty_ordinal \<Longrightarrow>
          (\<forall>n :: obj. is_nat n \<longrightarrow> card_bst n < card_bst k \<longrightarrow> P n \<longrightarrow> P (succ_ordinal n)) \<Longrightarrow>
          (\<forall>n :: obj. is_nat n \<longrightarrow> card_bst n \<le> card_bst k \<longrightarrow> P n))" and
  BST_Feasibility :
    "\<And>phi :: formula_bfol. Thm phi \<Longrightarrow> is_feasible phi"

text \<open>Rational/scaffold registry.\<close>

definition is_rational :: "obj \<Rightarrow> bool" where
  "is_rational q \<equiv>
     \<exists>n d :: obj.
       Thm (EqualF q (pair_bst n d)) \<and>
       is_nat n \<and> is_nat d \<and> card_bst d > 0"

definition is_scaffold :: "obj \<Rightarrow> bool" where
  "is_scaffold s \<equiv>
     \<forall>k :: obj.
       is_nat k \<longrightarrow> (\<exists>q :: obj. Thm (MemberF (opair k q) s) \<and> is_rational q)"

(* ================================================================== *)
(* PART III: CORE CHECKPOINT LEMMAS                                   *)
(* ================================================================== *)

section \<open>Core checkpoint lemmas\<close>

theorem Scaffold_Precision_Limit :
  "is_scaffold s \<Longrightarrow> card_bst s \<le> Omega"
  by (simp add: AFB_Bound)

theorem Finite_Set_Bound :
  "is_finite_set x \<Longrightarrow> card_bst x \<le> Omega"
  by (simp add: Finite_Sets_Are_Bounded)

theorem Empty_Ordinal_Is_Natural :
  "is_nat empty_ordinal"
  by (simp add: Empty_Ordinal_Is_Nat)

theorem Successor_Ordinal_Is_Natural :
  "is_nat n \<Longrightarrow> is_nat (succ_ordinal n)"
  by (simp add: Succ_Ordinal_Preserves_Nat)

theorem Canonical_Ordinal_Is_Natural_For_Finite_Sets :
  "is_finite_set x \<Longrightarrow> is_nat (canonical_ord x)"
  by (simp add: Finite_Coincidence_Scaffold)

(* ================================================================== *)
(* PART IV: BOUNDED COMPLEX ANALYSIS                                  *)
(* ================================================================== *)

section \<open>Bounded Complex Analysis\<close>

text \<open>
  Abstract registry for bounded complex domains, bounded holomorphicity,
  bounded contour integration, and bounded Hodge-style placeholders.
\<close>

consts
  complex_space            :: "obj \<Rightarrow> bool"
  bounded_complex_domain   :: "obj \<Rightarrow> bool"
  bounded_complex_fun      :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  in_complex_domain        :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  complex_norm             :: "obj \<Rightarrow> nat"
  complex_zero             :: obj
  complex_add              :: "obj \<Rightarrow> obj \<Rightarrow> obj"
  complex_sub              :: "obj \<Rightarrow> obj \<Rightarrow> obj"
  complex_mul              :: "obj \<Rightarrow> obj \<Rightarrow> obj"
  complex_div              :: "obj \<Rightarrow> obj \<Rightarrow> obj"
  bounded_precision        :: "obj \<Rightarrow> nat \<Rightarrow> bool"
  bounded_power_series     :: "nat \<Rightarrow> obj list \<Rightarrow> obj \<Rightarrow> bool"
  complex_derivative_at    :: "nat \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj"
  k_holomorphic_at         :: "nat \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_path             :: "obj \<Rightarrow> bool"
  path_in_domain           :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  closed_path              :: "obj \<Rightarrow> bool"
  simply_connected_bst     :: "obj \<Rightarrow> bool"
  contour_integral_bst     :: "nat \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj"
  bounded_complex_manifold :: "obj \<Rightarrow> bool"
  kahler_bst               :: "obj \<Rightarrow> bool"
  bounded_dolbeault_class  :: "obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_hodge_cycle      :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_algebraic_cycle  :: "obj \<Rightarrow> obj \<Rightarrow> bool"

axiomatization where
  Bounded_Power_Series_Holomorphic :
    "\<And>k coeffs z0 D f.
       bounded_power_series k coeffs D \<Longrightarrow>
       bounded_complex_fun f D \<Longrightarrow>
       in_complex_domain z0 D \<Longrightarrow>
       k_holomorphic_at k f z0 D (complex_derivative_at k f z0 D)" and
  Bounded_Cauchy_Theorem :
    "\<And>k f gamma D.
       bounded_complex_fun f D \<Longrightarrow>
       bounded_path gamma \<Longrightarrow>
       path_in_domain gamma D \<Longrightarrow>
       closed_path gamma \<Longrightarrow>
       simply_connected_bst D \<Longrightarrow>
       Thm (EqualF (contour_integral_bst k f gamma) complex_zero)" and
  Bounded_Hodge_Conjecture_Schema :
    "\<And>X c.
       bounded_complex_manifold X \<Longrightarrow>
       kahler_bst X \<Longrightarrow>
       bounded_hodge_cycle X c \<Longrightarrow>
       bounded_algebraic_cycle X c"

(* ================================================================== *)
(* PART V: BST-BASED TOPOLOGY AND MEASURE THEORY                      *)
(* ================================================================== *)

section \<open>BST-Based Topology and Measure Theory\<close>

consts
  bounded_metric_space     :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  metric_distance          :: "obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj"
  open_ball_bst            :: "obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj"
  finite_event_algebra     :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_measure          :: "obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_probability_space :: "obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  measurable_in_bst        :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_integral         :: "obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj"

axiomatization where
  Finite_Event_Algebra_Closure :
    "\<And>OmegaA A E F.
       finite_event_algebra OmegaA A \<Longrightarrow>
       Thm (MemberF E A) \<Longrightarrow>
       Thm (MemberF F A) \<Longrightarrow>
       card_bst A \<le> Omega" and
  Bounded_Measure_Finite_Additivity :
    "\<And>OmegaA A mu E F.
       finite_event_algebra OmegaA A \<Longrightarrow>
       bounded_measure OmegaA A mu \<Longrightarrow>
       measurable_in_bst E A \<Longrightarrow>
       measurable_in_bst F A \<Longrightarrow>
       card_bst (pair_bst E F) \<le> Omega" and
  No_Nonmeasurable_Sets_BST :
    "\<And>OmegaA A E.
       finite_event_algebra OmegaA A \<Longrightarrow>
       Thm (MemberF E A) \<Longrightarrow>
       measurable_in_bst E A"

(* ================================================================== *)
(* PART VI: COMPUTATIONAL COMPLEXITY AND BST                          *)
(* ================================================================== *)

section \<open>Computational Complexity and BST\<close>

consts
  bounded_string_set :: "nat \<Rightarrow> obj"
  bst_provable_fun   :: "obj \<Rightarrow> bool"
  polytime_bst       :: "obj \<Rightarrow> bool"
  np_bst             :: "obj \<Rightarrow> bool"
  ph_bst             :: "nat \<Rightarrow> obj \<Rightarrow> bool"
  proof_system_bst   :: "obj \<Rightarrow> bool"
  crypto_hard_bst    :: "obj \<Rightarrow> bool"

axiomatization where
  Bounded_Strings_Exist :
    "\<And>k. card_bst (bounded_string_set k) \<le> Omega" and
  BST_P_Registry :
    "\<And>L. polytime_bst L \<Longrightarrow> bst_provable_fun L" and
  BST_NP_Registry :
    "\<And>L. np_bst L \<Longrightarrow> card_bst (bounded_string_set Omega) \<le> Omega" and
  BST_PH_Registry :
    "\<And>i L. ph_bst i L \<Longrightarrow> i \<le> Omega"

(* ================================================================== *)
(* PART VII: PROOF-THEORETIC ORDINAL ANALYSIS                         *)
(* ================================================================== *)

section \<open>Proof-theoretic Ordinal Analysis of BST\<close>

typedecl ordinal_notation

consts
  bst_pto                    :: ordinal_notation
  omega_ord                  :: ordinal_notation
  ord_exp                    :: "ordinal_notation \<Rightarrow> ordinal_notation \<Rightarrow> ordinal_notation"
  iSigma1_equiv_bst          :: bool
  primitive_recursive_total_bst :: bool
  ackermann_total_bst        :: bool

axiomatization where
  BST_Proof_Theoretic_Ordinal :
    "bst_pto = ord_exp omega_ord omega_ord" and
  BST_IΣ1_Equivalence_Scaffold :
    "iSigma1_equiv_bst" and
  BST_PR_Totality_Scaffold :
    "primitive_recursive_total_bst" and
  BST_Ackermann_Limit_Scaffold :
    "\<not> ackermann_total_bst"

(* ================================================================== *)
(* PART VIII: FINITE ANALOG PROGRAMME — ALGEBRAIC STRUCTURES          *)
(* ================================================================== *)

section \<open>Finite Analog Programme: Advanced Algebraic Structures\<close>

consts
  bounded_group      :: "obj \<Rightarrow> bool"
  bounded_ring       :: "obj \<Rightarrow> bool"
  bounded_field      :: "obj \<Rightarrow> bool"
  bounded_module     :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_algebra    :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_ideal      :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_noetherian :: "obj \<Rightarrow> bool"

axiomatization where
  Bounded_Noetherian_Schema :
    "\<And>R. bounded_ring R \<Longrightarrow> bounded_noetherian R"

(* ================================================================== *)
(* PART IX: SEMANTIC CORE — MODELS AND SATISFACTION                   *)
(* ================================================================== *)

section \<open>Semantic Core: Models and Satisfaction\<close>

text \<open>
  This section records a simple model record and abstract truth predicate
  suitable for later semantic development.
\<close>

record bst_model =
  M_dom  :: "obj set"
  M_mem  :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  M_leq  :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  M_zero :: obj
  M_succ :: "obj \<Rightarrow> obj"

consts
  eval_term_bst   :: "bst_model \<Rightarrow> (var \<Rightarrow> obj) \<Rightarrow> term_bfol \<Rightarrow> obj"
  satisfies_bst   :: "bst_model \<Rightarrow> (var \<Rightarrow> obj) \<Rightarrow> formula_bfol \<Rightarrow> bool"
  bst_model_ok    :: "bst_model \<Rightarrow> bool"
  finite_model_sz :: "bst_model \<Rightarrow> nat"
  bst_sentence_valid :: "formula_bfol \<Rightarrow> bool"

axiomatization where
  BST_Model_Finite_Domain :
    "\<And>M. bst_model_ok M \<Longrightarrow> finite (M_dom M)" and
  BST_Model_Size_Def :
    "\<And>M. bst_model_ok M \<Longrightarrow> finite_model_sz M = card (M_dom M)" and
  BST_Model_Bounds_Elements :
    "\<And>M x. bst_model_ok M \<Longrightarrow> x \<in> M_dom M \<Longrightarrow> card_bst x \<le> finite_model_sz M" and
  Sat_ForallB :
    "\<And>M env x t phi.
       bst_model_ok M \<Longrightarrow>
       satisfies_bst M env (FForallB x t phi) \<longleftrightarrow>
       (\<forall>a \<in> M_dom M. M_leq M a (eval_term_bst M env t) \<longrightarrow> satisfies_bst M (env(x := a)) phi)" and
  Sat_ExistsB :
    "\<And>M env x t phi.
       bst_model_ok M \<Longrightarrow>
       satisfies_bst M env (FExistsB x t phi) \<longleftrightarrow>
       (\<exists>a \<in> M_dom M. M_leq M a (eval_term_bst M env t) \<and> satisfies_bst M (env(x := a)) phi)" and
  BST_Bounded_Reflection_Principle :
    "\<And>phi.
       bst_sentence_valid phi \<longleftrightarrow> (\<forall>M env. bst_model_ok M \<longrightarrow> satisfies_bst M env phi)"

(* ================================================================== *)
(* PART X: OPERATIONAL ONTOLOGY AND FUNCTION THEORY                   *)
(* ================================================================== *)

section \<open>Operational Ontology and Function Theory\<close>

consts
  meta_global_bound        :: nat
  bounded_formula          :: "formula_bfol \<Rightarrow> bool"
  bounded_separation_set   :: "obj \<Rightarrow> (obj \<Rightarrow> formula_bfol) \<Rightarrow> obj"
  bounded_replacement_set  :: "obj \<Rightarrow> (obj \<Rightarrow> obj) \<Rightarrow> obj"
  syntactic_functional     :: "(obj \<Rightarrow> obj \<Rightarrow> formula_bfol) \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  axiomatic_function_graph :: "obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"

axiomatization where
  AFB_Meta_Global_Bound :
    "\<And>x :: obj. card_bst x \<le> meta_global_bound" and
  Bounded_Separation_Spec :
    "\<And>A P z.
       bounded_formula (P z) \<Longrightarrow>
       Thm (FImp (MemberF z (bounded_separation_set A P)) (MemberF z A))" and
  Bounded_Separation_Card :
    "\<And>A P. card_bst (bounded_separation_set A P) \<le> card_bst A" and
  Bounded_Replacement_Card :
    "\<And>A F. card_bst (bounded_replacement_set A F) \<le> card_bst A" and
  Syntactic_Function_Schema :
    "\<And>phi A B. syntactic_functional phi A B \<Longrightarrow> True" and
  Axiomatic_Function_Graph_Condition :
    "\<And>G A B.
       axiomatic_function_graph G A B \<Longrightarrow> card_bst (pair_bst A B) \<le> meta_global_bound"

(* ================================================================== *)
(* PART XI: BOUNDED NUMBER CHAIN AND CALCULUS                         *)
(* ================================================================== *)

section \<open>Bounded Number Chain and Calculus\<close>

consts
  nat_bounded           :: "nat \<Rightarrow> obj"
  int_bounded           :: "nat \<Rightarrow> obj"
  rat_bounded           :: "nat \<Rightarrow> obj"
  real_bounded          :: "nat \<Rightarrow> obj"
  complex_bounded       :: "nat \<Rightarrow> obj"
  approx_eq_k           :: "nat \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_abs           :: "obj \<Rightarrow> obj"
  bounded_gap           :: "nat \<Rightarrow> obj"
  bounded_precision_q   :: "nat \<Rightarrow> obj \<Rightarrow> bool"
  bounded_continuous_at :: "nat \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_derivative    :: "nat \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  bounded_integral_op   :: "nat \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj"
  partition_bounded     :: "nat \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  partition_size        :: "obj \<Rightarrow> nat"
  mesh_lower_bound_k    :: "nat \<Rightarrow> obj \<Rightarrow> bool"
  error_O_inv_k         :: "nat \<Rightarrow> obj \<Rightarrow> bool"

axiomatization where
  Nat_Bounded_Cardinality :
    "\<And>k. card_bst (nat_bounded k) = k + 1" and
  Int_Bounded_Cardinality :
    "\<And>k. card_bst (int_bounded k) = 2 * k + 1" and
  Rat_Bounded_Density_Gap :
    "\<And>k. card_bst (rat_bounded k) \<le> Omega \<and> card_bst (bounded_gap k) \<le> 1" and
  Real_Bounded_Cardinality :
    "\<And>k. card_bst (real_bounded k) \<le> k * k" and
  Complex_Bounded_Cardinality :
    "\<And>k. card_bst (complex_bounded (k ^ 4)) \<le> k ^ 4" and
  Bounded_Continuity_Schema :
    "\<And>k f x0.
       bounded_continuous_at k f x0 \<longleftrightarrow>
       (\<forall>eps. bounded_precision_q k eps \<longrightarrow> (\<exists>del. bounded_precision_q k del))" and
  Bounded_Derivative_Schema :
    "\<And>k f x0 y.
       bounded_derivative k f x0 y (real_bounded k)" and
  Bounded_Integral_Schema :
    "\<And>k f a b p.
       partition_bounded k a b p \<Longrightarrow>
       partition_size p \<le> k * k \<Longrightarrow>
       mesh_lower_bound_k k p \<Longrightarrow>
       error_O_inv_k k (bounded_integral_op k f a b p)"

(* ================================================================== *)
(* PART XII: PHYSICS-STYLE FINITE STRUCTURES                          *)
(* ================================================================== *)

section \<open>Physics-style Finite Structures\<close>

consts
  bst_causal_set      :: "obj \<Rightarrow> bool"
  causal_precedes     :: "obj \<Rightarrow> obj \<Rightarrow> obj \<Rightarrow> bool"
  region_volume       :: "obj \<Rightarrow> obj \<Rightarrow> obj"
  planck_scale_four   :: obj
  lattice_gauge_field :: "obj \<Rightarrow> obj \<Rightarrow> bool"
  su_bounded          :: "nat \<Rightarrow> nat \<Rightarrow> obj"
  plaquette_action    :: "obj \<Rightarrow> obj"
  bst_p               :: "obj \<Rightarrow> bool"
  bst_p_steps         :: "obj \<Rightarrow> nat"

axiomatization where
  BST_Causal_Set_Finite :
    "\<And>C. bst_causal_set C \<Longrightarrow> card_bst C \<le> Omega" and
  Region_Volume_Schema :
    "\<And>R C.
       bst_causal_set C \<Longrightarrow>
       Thm (EqualF (region_volume R C) (pair_bst planck_scale_four R))" and
  Lattice_Gauge_Field_Finite_Action :
    "\<And>E U. lattice_gauge_field E U \<Longrightarrow> card_bst (plaquette_action U) \<le> Omega" and
  BST_P_Extensional_Registry :
    "\<And>L. bst_p L \<Longrightarrow> bst_p_steps L \<le> Omega"

(* ================================================================== *)
(* PART XIII: VALIDATION AND CATEGORY ACCOUNTING                      *)
(* ================================================================== *)

section \<open>Validation and Category Accounting\<close>

datatype validation_category = CatA | CatB | CatC | CatD

consts
  all_quantifiers_bounded    :: "formula_bfol \<Rightarrow> bool"
  refers_infinite_ontology   :: "formula_bfol \<Rightarrow> bool"
  requires_unbounded_induction :: "formula_bfol \<Rightarrow> bool"
  finite_model_check         :: "nat \<Rightarrow> formula_bfol \<Rightarrow> bool"
  validation_class           :: "formula_bfol \<Rightarrow> validation_category"
  recovered_statement        :: "formula_bfol \<Rightarrow> bool"
  direct_statement           :: "formula_bfol \<Rightarrow> bool"
  absent_statement           :: "formula_bfol \<Rightarrow> bool"
  gap_statement              :: "formula_bfol \<Rightarrow> bool"

axiomatization where
  Validation_Category_A :
    "\<And>phi. recovered_statement phi \<Longrightarrow> validation_class phi = CatA" and
  Validation_Category_B :
    "\<And>phi. direct_statement phi \<Longrightarrow> validation_class phi = CatB" and
  Validation_Category_C :
    "\<And>phi. absent_statement phi \<Longrightarrow> validation_class phi = CatC" and
  Validation_Category_D :
    "\<And>phi. gap_statement phi \<Longrightarrow> validation_class phi = CatD"

definition validation_algorithm :: "formula_bfol \<Rightarrow> validation_category" where
  "validation_algorithm phi =
     (if \<not> all_quantifiers_bounded phi then CatC
      else if refers_infinite_ontology phi then CatC
      else if requires_unbounded_induction phi then CatD
      else validation_class phi)"

(* ================================================================== *)
(* PART XIV: IMPLEMENTATION CONSTRAINTS                               *)
(* ================================================================== *)

section \<open>Implementation Constraints\<close>

consts
  bound_widening_ok     :: "obj \<Rightarrow> bool"
  precision_loss_ok     :: "obj \<Rightarrow> bool"
  finite_termination_ok :: "obj \<Rightarrow> bool"
  no_powerset_overflow  :: "obj \<Rightarrow> bool"
  meta_bound_hidden     :: bool

axiomatization where
  Implementation_Bound_Widening :
    "\<And>x. bound_widening_ok x" and
  Implementation_Precision_Loss :
    "\<And>x. precision_loss_ok x" and
  Implementation_Finite_Termination :
    "\<And>x. finite_termination_ok x" and
  Implementation_No_Powerset_Overflow :
    "\<And>x. no_powerset_overflow x" and
  Implementation_Meta_Bound_Hidden :
    "meta_bound_hidden"

(* ================================================================== *)
(* PART XV: MODEL THEORY AND AFB FORMULATIONS                         *)
(* ================================================================== *)

section \<open>Model Theory and AFB Formulations\<close>

text \<open>
  This section records the proposed model-theoretic extension concerning
  BST-structures, standard finite models, the relationship between the two
  AFB formulations, explicit independence witnesses, and a sharpened bounded
  reflection principle. The treatment remains a scaffold: these items are
  registered as metatheoretic checkpoints rather than as a completed internal
  development.
\<close>

consts
  bst_structure_ok      :: "bst_model \<Rightarrow> bool"
  bst_model_A           :: "nat \<Rightarrow> bst_model \<Rightarrow> bool"
  bst_model_B           :: "bst_model \<Rightarrow> bool"
  standard_model_V      :: "nat \<Rightarrow> bst_model"
  bst_theory_A          :: "nat \<Rightarrow> formula_bfol \<Rightarrow> bool"
  bst_theory_B          :: "formula_bfol \<Rightarrow> bool"
  embeds_into_V         :: "bst_model \<Rightarrow> nat \<Rightarrow> bool"
  independence_witness  :: "formula_bfol \<Rightarrow> bst_model"
  axiom_A2              :: formula_bfol
  axiom_A3              :: formula_bfol
  axiom_A4              :: formula_bfol
  axiom_A5              :: formula_bfol
  axiom_A6              :: formula_bfol
  axiom_A7              :: formula_bfol

axiomatization where
  BST_Structure_Finite_Nonempty :
    "\<And>M. bst_structure_ok M \<Longrightarrow> finite (M_dom M) \<and> M_dom M \<noteq> {}" and
  BST_Model_Extends_Structure :
    "\<And>M. bst_model_ok M \<Longrightarrow> bst_structure_ok M" and
  Standard_Model_Exists :
    "\<And>n. bst_model_ok (standard_model_V n)" and
  Standard_Model_Finite :
    "\<And>n. finite_model_sz (standard_model_V n) = card (M_dom (standard_model_V n))" and
  BST_A_Model_Def :
    "\<And>n M. bst_model_A n M \<longleftrightarrow> (bst_model_ok M \<and> finite_model_sz M \<le> n)" and
  BST_B_Model_Def :
    "\<And>M. bst_model_B M \<longleftrightarrow> bst_model_ok M" and
  BST_B_Intersection_Semantics :
    "\<And>phi. bst_theory_B phi \<longleftrightarrow> (\<forall>n. bst_theory_A n phi)" and
  Finite_Model_Embeds_Into_Standard_Model :
    "\<And>M. bst_model_ok M \<Longrightarrow> \<exists>n. embeds_into_V M n" and
  Independence_Witness_A2 :
    "bst_structure_ok (independence_witness axiom_A2)" and
  Independence_Witness_A3 :
    "bst_structure_ok (independence_witness axiom_A3)" and
  Independence_Witness_A4 :
    "bst_structure_ok (independence_witness axiom_A4)" and
  Independence_Witness_A5 :
    "bst_structure_ok (independence_witness axiom_A5)" and
  Independence_Witness_A6 :
    "bst_structure_ok (independence_witness axiom_A6)" and
  Independence_Witness_A7 :
    "bst_structure_ok (independence_witness axiom_A7)" and
  Bounded_Reflection_Standard_Models :
    "\<And>phi. bst_theory_B phi \<longleftrightarrow> (\<forall>n. satisfies_bst (standard_model_V n) (\<lambda>_. empty_set) phi)" and
  Ordinal_Analysis_Model_Checkpoint :
    "bst_pto = ord_exp omega_ord omega_ord"

(* ================================================================== *)
(* PART XVI: GLOBAL CHECKPOINTS                                       *)
(* ================================================================== *)

section \<open>Global checkpoint lemmas\<close>

theorem Bounded_String_Set_Bound :
  "card_bst (bounded_string_set k) \<le> Omega"
  by (simp add: Bounded_Strings_Exist)

theorem BST_Proof_Ordinal_Registered :
  "bst_pto = ord_exp omega_ord omega_ord"
  by (simp add: BST_Proof_Theoretic_Ordinal)

theorem BST_Model_Is_Finite :
  "bst_model_ok M \<Longrightarrow> finite (M_dom M)"
  by (simp add: BST_Model_Finite_Domain)

axiomatization where
  Recovered_Statements_Well_Formed :
    "\<And>phi.
       recovered_statement phi \<Longrightarrow>
       all_quantifiers_bounded phi \<and>
       \<not> refers_infinite_ontology phi \<and>
       \<not> requires_unbounded_induction phi"

theorem Validation_A_Implies_Category_A :
  "recovered_statement phi \<Longrightarrow> validation_algorithm phi = CatA"
  by (simp add: validation_algorithm_def
                Validation_Category_A
                Recovered_Statements_Well_Formed)

theorem Validation_C_For_Infinite_Ontology :
  "all_quantifiers_bounded phi \<Longrightarrow> refers_infinite_ontology phi \<Longrightarrow>
   validation_algorithm phi = CatC"
  by (simp add: validation_algorithm_def)

theorem Validation_D_For_Unbounded_Induction :
  "all_quantifiers_bounded phi \<Longrightarrow> \<not> refers_infinite_ontology phi \<Longrightarrow>
   requires_unbounded_induction phi \<Longrightarrow>
   validation_algorithm phi = CatD"
  by (simp add: validation_algorithm_def)

theorem Empty_Set_And_Omega_Check :
  "card_bst empty_set = 0 \<and> Omega > 0"
  by (simp add: Empty_Set_Cardinality Omega_nonzero)

text \<open>
  Acceptance of this theory by Isabelle/HOL confirms that the present
  scaffold is syntactically coherent and type-correct as a publication-
  facing registry. It does not yet amount to a complete semantic or
  proof-theoretic verification of the BST programme.
\<close>

end
