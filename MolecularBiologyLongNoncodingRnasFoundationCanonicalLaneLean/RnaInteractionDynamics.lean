import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure RnaInteractionDynamicsPackage where
  rnaSpecies : Type u
  bindingAffinities : Type v
  competitiveBinding : Prop
  stoichiometricConstraints : Prop
  regulationComplexFormation : Prop

structure RnaInteractionDynamicsEvidence (P : RnaInteractionDynamicsPackage) where
  competitiveBindingClosed : P.competitiveBinding
  stoichiometricConstraintsClosed : P.stoichiometricConstraints
  regulationComplexFormationClosed : P.regulationComplexFormation

def RnaInteractionDynamicsClosed (P : RnaInteractionDynamicsPackage) : Prop :=
  P.competitiveBinding ∧ P.stoichiometricConstraints ∧ P.regulationComplexFormation

theorem rna_interaction_dynamics_closed_from_evidence
    (P : RnaInteractionDynamicsPackage) (E : RnaInteractionDynamicsEvidence P) :
    RnaInteractionDynamicsClosed P := by
  exact And.intro E.competitiveBindingClosed
    (And.intro E.stoichiometricConstraintsClosed E.regulationComplexFormationClosed)

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse