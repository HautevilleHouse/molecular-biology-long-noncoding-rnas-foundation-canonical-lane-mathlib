import MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean.RnaBindingAssay

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure TranscriptionalRegulationPackage (B : RnaBindingAssayPackage) where
  targetGene : String
  regulatoryEffect : Prop
  chromatinState : Prop
  upregulation : Prop
  downregulation : Prop

def TranscriptionalRegulationClosed (T : TranscriptionalRegulationPackage) : Prop :=
  T.regulatoryEffect ∧ (T.upregulation ∨ T.downregulation)

structure TranscriptionalRegulationEvidence (T : TranscriptionalRegulationPackage) where
  regulatoryEffectClosed : T.regulatoryEffect
  regulationDirectionClosed : T.upregulation ∨ T.downregulation

theorem transcriptional_regulation_closed_from_evidence
    (T : TranscriptionalRegulationPackage)
    (E : TranscriptionalRegulationEvidence T) :
    TranscriptionalRegulationClosed T := by
  exact And.intro E.regulatoryEffectClosed E.regulationDirectionClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse