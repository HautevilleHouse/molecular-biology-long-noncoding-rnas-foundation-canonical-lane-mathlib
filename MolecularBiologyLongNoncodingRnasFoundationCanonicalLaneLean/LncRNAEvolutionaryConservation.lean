import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNAEvolutionaryConservationPackage where
  sequenceId : String
  speciesList : List String
  conservationScore : Float
  isHighlyConserved : Prop

structure LncRNAEvolutionaryConservationEvidence (C : LncRNAEvolutionaryConservationPackage) where
  conservationScoreClosed : C.conservationScore > 0.8
  highlyConservedClosed : C.isHighlyConserved

def LncRNAEvolutionaryConservationClosed (C : LncRNAEvolutionaryConservationPackage) : Prop :=
  C.conservationScore > 0.8 ∧ C.isHighlyConserved

theorem lnc_rna_evolutionary_conservation_closed_from_evidence
    (C : LncRNAEvolutionaryConservationPackage)
    (E : LncRNAEvolutionaryConservationEvidence C) : LncRNAEvolutionaryConservationClosed C := by
  exact And.intro E.conservationScoreClosed E.highlyConservedClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse