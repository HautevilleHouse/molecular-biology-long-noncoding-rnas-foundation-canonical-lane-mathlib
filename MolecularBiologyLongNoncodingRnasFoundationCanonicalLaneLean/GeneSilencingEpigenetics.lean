import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure GeneSilencingEpigeneticsPackage where
  histoneModifications : Type u
  dnaMethylationPatterns : Type v
  chromatinCompaction : Prop
  transcriptionalRepression : Prop
  silencingMaintenance : Prop

structure GeneSilencingEpigeneticsEvidence (P : GeneSilencingEpigeneticsPackage) where
  chromatinCompactionClosed : P.chromatinCompaction
  transcriptionalRepressionClosed : P.transcriptionalRepression
  silencingMaintenanceClosed : P.silencingMaintenance

def GeneSilencingEpigeneticsClosed (P : GeneSilencingEpigeneticsPackage) : Prop :=
  P.chromatinCompaction ∧ P.transcriptionalRepression ∧ P.silencingMaintenance

theorem gene_silencing_epigenetics_closed_from_evidence
    (P : GeneSilencingEpigeneticsPackage) (E : GeneSilencingEpigeneticsEvidence P) :
    GeneSilencingEpigeneticsClosed P := by
  exact And.intro E.chromatinCompactionClosed
    (And.intro E.transcriptionalRepressionClosed E.silencingMaintenanceClosed)

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse