import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure TranscriptClassificationPackage where
  transcriptId : String
  biotype : String
  codingPotential : Prop
  conservationScore : Float
  subcellularLocalization : String
  classificationClosed : Prop

structure TranscriptClassificationEvidence (T : TranscriptClassificationPackage) where
  codingPotentialClosed : T.codingPotential
  conservationScoreClosed : T.conservationScore > 0.0
  classificationClosed : T.classificationClosed

def TranscriptClassificationClosed (T : TranscriptClassificationPackage) : Prop :=
  T.codingPotential ∧ T.classificationClosed

theorem transcript_classification_closed_from_evidence
    (T : TranscriptClassificationPackage) (E : TranscriptClassificationEvidence T) :
    TranscriptClassificationClosed T := by
  exact And.intro E.codingPotentialClosed E.classificationClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse