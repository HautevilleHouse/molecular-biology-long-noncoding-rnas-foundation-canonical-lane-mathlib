import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure EpigeneticRegulationPackage where
  histoneModification : String
  dnaMethylation : String
  chromatinRemodeling : Prop
  lncrnaRecruitment : Prop
  geneSilencing : Prop
  geneActivation : Prop
  recruitmentEvidence : lncrnaRecruitment
  modificationClosed : histoneModification = "H3K4me3" ∨ histoneModification = "H3K27me3"
  methylationClosed : dnaMethylation = "CpG" ∨ dnaMethylation = "CHH"
  regulationEvidence : chromatinRemodeling

structure EpigeneticRegulationEvidence (P : EpigeneticRegulationPackage) where
  geneSilencingClosed : P.geneSilencing
  geneActivationClosed : P.geneActivation

def EpigeneticRegulationClosed (P : EpigeneticRegulationPackage) : Prop :=
  P.lncrnaRecruitment ∧ P.chromatinRemodeling ∧ P.geneSilencing ∧ P.geneActivation

theorem epigenetic_regulation_closed_from_evidence
    (P : EpigeneticRegulationPackage) (E : EpigeneticRegulationEvidence P) :
    EpigeneticRegulationClosed P := by
  exact And.intro P.recruitmentEvidence
    (And.intro P.regulationEvidence (And.intro E.geneSilencingClosed E.geneActivationClosed))

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse