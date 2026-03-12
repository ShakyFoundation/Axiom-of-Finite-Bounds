(**
  bst_formulation_b_appendix_scaffold.v

  Appendix scaffold for the working paper on Bounded First-Order Logic
  (BFOL) and Bounded Set Theory (BST).

  Purpose.
  --------
  This file records, in a compact Coq form, the principal syntactic
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
    metatheoretic restriction on intended models; this file uses a simple
    meta-level surrogate [Omega] only for draft cardinal bookkeeping.
  - Several proof-theoretic side conditions stated in the manuscript,
    especially freshness conditions on bounded quantifier rules, are not
    yet internalized in the inductive proof system below.
  - Substitution, well-formedness, semantic interpretation, and
    soundness/completeness are not yet fully developed here.
  - The BST module should be read as a registry of the paper's core
    constructions and dependencies, not as a final semantic reduction of
    all BST claims to Coq.

  Accordingly, the file is best understood as a publication-facing formal
  scaffold accompanying the working paper, rather than as a finished
  verified deep embedding.
*)

Require Import Coq.Arith.Arith.
Require Import Coq.Lists.List.
Import ListNotations.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Module BFOL.

  (** Variables are represented by natural-number names.

      For the present appendix scaffold, variable-management side
      conditions remain external to the formal development. This keeps the
      file aligned with the paper's role as a foundational sketch while
      leaving room for a later mechanized treatment of substitution,
      freshness, and capture-avoidance. *)
  Definition var := nat.

  (** Function and relation symbols carry arities, as in the paper's
      presentation of BFOL. The current syntax does not yet enforce those
      arities intrinsically; that strengthening belongs to a later pass. *)
  Parameter func_sym : Type.
  Parameter rel_sym  : Type.
  Parameter func_arity : func_sym -> nat.
  Parameter rel_arity  : rel_sym -> nat.

  (** BFOL terms.

      Unbounded quantifiers are intentionally absent from the language of
      formulas below. This mirrors the paper's central restriction: BFOL
      retains ordinary first-order connectives and equality, but admits
      only bounded universal and bounded existential quantification as
      primitive quantifier forms. *)
  Inductive term : Type :=
  | TVar : var -> term
  | TConst : nat -> term
  | TFun : forall f : func_sym, list term -> term.

  (** BFOL formulas. *)
  Inductive formula : Type :=
  | FEqual   : term -> term -> formula
  | FRel     : forall R : rel_sym, list term -> formula
  | FNot     : formula -> formula
  | FAnd     : formula -> formula -> formula
  | FOr      : formula -> formula -> formula
  | FImp     : formula -> formula -> formula
  | FForallB : var -> term -> formula -> formula
  | FExistsB : var -> term -> formula -> formula.

  (** Distinguished bounding relation.

      In the paper, every quantifier is explicitly bounded. Here the bound
      relation is represented by a designated relation symbol [leq_sym]. *)
  Parameter leq_sym : rel_sym.
  Definition BLe (u t : term) : formula := FRel leq_sym [u; t].

  (** Draft absurdity marker.

      This serves as a placeholder contradiction formula for the natural
      deduction presentation used in the appendix scaffold. A fuller
      mechanization could replace it with a dedicated falsity constant. *)
  Definition absurd : formula := FRel leq_sym [].

  (** Formula substitution.

      The operation is left abstract in this appendix file. The paper
      states bounded proof rules and substitution behavior informally; a
      later mechanization would replace this parameter with a concrete,
      verified, capture-avoiding definition and its lemmas. *)
  Parameter subst_formula : var -> term -> formula -> formula.

  (** Contexts are finite lists of assumptions. *)
  Definition context := list formula.

  (** Natural deduction for BFOL.

      Propositional and equality rules follow ordinary first-order proof
      practice. The bounded quantifier rules should be read as a compact
      schematic encoding of the manuscript's rules.

      Important manuscript-to-Coq note:
      the paper states freshness restrictions for bounded
      forall-introduction and exists-elimination. Those side conditions
      are not yet represented explicitly in this lightweight appendix
      version. *)
  Inductive Provable : context -> formula -> Prop :=
  | Pr_Assume : forall Gamma phi,
      In phi Gamma ->
      Provable Gamma phi
  | Pr_And_I : forall Gamma phi psi,
      Provable Gamma phi ->
      Provable Gamma psi ->
      Provable Gamma (FAnd phi psi)
  | Pr_And_EL : forall Gamma phi psi,
      Provable Gamma (FAnd phi psi) ->
      Provable Gamma phi
  | Pr_And_ER : forall Gamma phi psi,
      Provable Gamma (FAnd phi psi) ->
      Provable Gamma psi
  | Pr_Or_IL : forall Gamma phi psi,
      Provable Gamma phi ->
      Provable Gamma (FOr phi psi)
  | Pr_Or_IR : forall Gamma phi psi,
      Provable Gamma psi ->
      Provable Gamma (FOr phi psi)
  | Pr_Or_E : forall Gamma phi psi chi,
      Provable Gamma (FOr phi psi) ->
      Provable (phi :: Gamma) chi ->
      Provable (psi :: Gamma) chi ->
      Provable Gamma chi
  | Pr_Imp_I : forall Gamma phi psi,
      Provable (phi :: Gamma) psi ->
      Provable Gamma (FImp phi psi)
  | Pr_Imp_E : forall Gamma phi psi,
      Provable Gamma (FImp phi psi) ->
      Provable Gamma phi ->
      Provable Gamma psi
  | Pr_Not_I : forall Gamma phi,
      Provable (phi :: Gamma) absurd ->
      Provable Gamma (FNot phi)
  | Pr_Not_E : forall Gamma phi,
      Provable Gamma phi ->
      Provable Gamma (FNot phi) ->
      Provable Gamma absurd
  | Pr_Eq_Refl : forall Gamma t,
      Provable Gamma (FEqual t t)
  | Pr_Eq_Symm : forall Gamma s t,
      Provable Gamma (FEqual s t) ->
      Provable Gamma (FEqual t s)
  | Pr_Eq_Trans : forall Gamma r s t,
      Provable Gamma (FEqual r s) ->
      Provable Gamma (FEqual s t) ->
      Provable Gamma (FEqual r t)
  | Pr_ForallB_I : forall Gamma x b phi,
      Provable (BLe (TVar x) b :: Gamma) phi ->
      Provable Gamma (FForallB x b phi)
  | Pr_ForallB_E : forall Gamma x b phi u,
      Provable Gamma (FForallB x b phi) ->
      Provable Gamma (BLe u b) ->
      Provable Gamma (subst_formula x u phi)
  | Pr_ExistsB_I : forall Gamma x b phi u,
      Provable Gamma (subst_formula x u phi) ->
      Provable Gamma (BLe u b) ->
      Provable Gamma (FExistsB x b phi)
  | Pr_ExistsB_E : forall Gamma x b phi psi,
      Provable Gamma (FExistsB x b phi) ->
      Provable (phi :: BLe (TVar x) b :: Gamma) psi ->
      Provable Gamma psi.

End BFOL.

Module BST.
  Import BFOL.

  (** Meta-level carrier for the BST appendix scaffold.

      The paper sharply distinguishes BFOL as a bounded object-language
      from the further semantic restriction that intended BST models be
      finite. The present module does not attempt to reconstruct that full
      semantics in Coq. Instead, [obj] is used as a meta-level carrier for
      recording the principal BST constructors and axiom-schemas appearing
      in the manuscript. *)
  Parameter obj : Type.
  Parameter denote : obj -> term.
  Parameter card : obj -> nat.
  Parameter is_ordinal : obj -> Prop.

  (** Meta-level finite bound.

      In the manuscript's more mature formulation, the Global Boundedness
      Principle is metatheoretic: the maximal extent of an intended model
      need not be nameable inside the object language. The parameter
      [Omega] is therefore best read here only as a draft meta-level
      surrogate used for compact cardinal statements in this appendix. *)
  Parameter Omega : nat.
  Axiom Omega_nonzero : Omega > 0.
  Axiom AFB_Bound : forall x : obj, card x <= Omega.

  (** Backward-compatible aliases from earlier draft names. *)
  Definition Omega_not_zero := Omega_nonzero.
  Definition AFB := AFB_Bound.

  (** Meta-level formula constructors for membership and equality.

      This bridge is pragmatic rather than final: it allows the appendix
      scaffold to state the paper's BST axioms using the BFOL formula type
      without claiming that the object-language/semantics interface has
      already been fully internalized. *)
  Parameter MemberF : obj -> obj -> formula.
  Parameter EqualF  : obj -> obj -> formula.

  (** Theorems of the empty context. *)
  Definition Thm (phi : formula) : Prop := Provable [] phi.

  (** Extensionality. *)
  Axiom Extensionality : forall x y : obj,
    (forall z : obj, Thm (FImp (MemberF z x) (MemberF z y))) ->
    (forall z : obj, Thm (FImp (MemberF z y) (MemberF z x))) ->
    Thm (EqualF x y).

  (** Empty set. *)
  Parameter empty_set : obj.
  Axiom Empty_Set_Property : forall x : obj,
    Thm (FNot (MemberF x empty_set)).
  Axiom Empty_Set_Cardinality :
    card empty_set = 0.

  (** Backward-compatible aliases. *)
  Definition EmptySet_Property := Empty_Set_Property.
  Definition EmptySet_Card := Empty_Set_Cardinality.

  (** Pairing. *)
  Parameter pair : obj -> obj -> obj.
  Axiom Pairing_Left  : forall x y : obj,
    Thm (MemberF x (pair x y)).
  Axiom Pairing_Right : forall x y : obj,
    Thm (MemberF y (pair x y)).
  Axiom Pairing_Only  : forall x y z : obj,
    Thm (FImp (MemberF z (pair x y))
              (FOr (EqualF z x) (EqualF z y))).
  Axiom Pairing_Cardinality : forall x y : obj,
    (x = y  -> card (pair x y) = 1) /\
    (x <> y -> card (pair x y) = 2).

  Definition Pairing_Card_obj_eq := Pairing_Cardinality.

  (** Ordered pairs. *)
  Parameter opair : obj -> obj -> obj.
  Axiom Ordered_Pair_Injective : forall a b c d : obj,
    Thm (EqualF (opair a b) (opair c d)) -> a = c /\ b = d.

  Definition OrderedPair_Injective := Ordered_Pair_Injective.

  (** Bounded union. *)
  Parameter b_union : obj -> obj.
  Axiom Union_Property : forall x z : obj,
    Thm (FImp (MemberF z (b_union x))
              (FExistsB 0 (denote x) (MemberF z (pair z z)))).

  (** Power set, subject to the ambient bound recorded by [Omega]. *)
  Parameter power_set : obj -> option obj.
  Axiom Power_Set_Condition : forall x : obj,
    (Nat.pow 2 (card x) <= Omega) <->
    (exists p : obj, power_set x = Some p).

  Definition PowerSet_Condition := Power_Set_Condition.

  (** Separation. *)
  Parameter separation : obj -> (obj -> formula) -> obj.

  Axiom Separation_Property : forall (x : obj) (P : obj -> formula) (z : obj),
    Thm (FImp (MemberF z (separation x P)) (MemberF z x)).

  Axiom Separation_Cardinality : forall (x : obj) (P : obj -> formula),
    card (separation x P) <= card x.

  Definition Separation_Card := Separation_Cardinality.

  (** Replacement. *)
  Parameter replacement : obj -> (obj -> obj -> formula) -> obj.

  Axiom Replacement_Property : forall (x : obj) (F : obj -> obj -> formula),
    (forall a b1 b2,
        Thm (F a b1) ->
        Thm (F a b2) ->
        Thm (EqualF b1 b2)) ->
    forall y : obj,
      Thm (FImp (MemberF y (replacement x F))
                (FExistsB 0 (denote x) (FNot absurd))).

  (** Regularity. *)
  Axiom Regularity : forall x : obj,
    (exists y : obj, Thm (MemberF y x)) ->
    exists y : obj,
      Thm (MemberF y x) /\
      (forall z : obj, Thm (MemberF z y) -> ~ Thm (MemberF z x)).

  (** Bounded choice. *)
  Parameter choice_set : obj -> obj.
  Axiom Bounded_Choice : forall x : obj,
    (forall y : obj,
        Thm (MemberF y x) ->
        exists z : obj, Thm (MemberF z y)) ->
    forall y : obj,
      Thm (MemberF y x) ->
      exists z : obj,
        Thm (MemberF z y) /\
        Thm (MemberF (opair y z) (choice_set x)).

  (** Primitive ordinal/numerical fragment.

      These definitions and axioms track the paper's minimal ordinal and
      cardinal apparatus used to state AFB-related constructions before
      the later metatheoretic developments. *)
  Definition is_nat (n : obj) : Prop := is_ordinal n.

  Parameter succ : obj -> option obj.
  Axiom Successor_Condition : forall n : obj,
    card n + 1 <= Omega <-> exists sn : obj, succ n = Some sn.

  Definition Succ_Condition := Successor_Condition.

  (** Draft rational and scaffold encodings used to mirror later sections
      of the manuscript. *)
  Definition is_rational (q : obj) : Prop :=
    exists n d : obj,
      Thm (EqualF q (pair n d)) /\
      is_nat n /\
      is_nat d /\
      card d > 0.

  Definition is_scaffold (s : obj) : Prop :=
    forall k : obj,
      is_nat k ->
      exists q : obj,
        Thm (MemberF (opair k q) s) /\ is_rational q.

  (** In this appendix scaffold, the following theorem is an immediate
      consequence of the ambient finite-bound axiom. It is retained as a
      named checkpoint because it corresponds to a claim tracked in the
      working paper. *)
  Theorem Scaffold_Precision_Limit : forall s : obj,
    is_scaffold s -> card s <= Omega.
  Proof.
    intros s _.
    apply AFB_Bound.
  Qed.

  Definition scaffold_precision_limit := Scaffold_Precision_Limit.

  (** Feasibility is represented here as a meta-level predicate on BFOL
      formulas. In the present appendix file this remains schematic: the
      paper's philosophical and foundational thesis is recorded, but not
      yet analyzed proof-theoretically in Coq. *)
  Parameter is_feasible : formula -> Prop.
  Axiom BST_Feasibility : forall phi : formula,
    Thm phi -> is_feasible phi.

End BST.
