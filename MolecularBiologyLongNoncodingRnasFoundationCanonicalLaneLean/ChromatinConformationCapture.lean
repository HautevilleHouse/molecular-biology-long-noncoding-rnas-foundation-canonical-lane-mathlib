import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure ChromatinConformationCapturePackage where
  genomicLoci : Type u
  contactFrequencies : Type v
  loopFormation : Prop
  enhancerPromoterCommunication : Prop
  topologicalDomainArchitecture : Prop

structure ChromatinConformationCaptureEvidence (P : ChromatinConformationCapturePackage) where
  loopFormationClosed : P.loopFormation
  enhancerPromoterCommunicationClosed : P.enhancerPromoterCommunication
  topologicalDomainArchitectureClosed : P.topologicalDomainArchitecture

def ChromatinConformationCaptureClosed (P : ChromatinConformationCapturePackage) : Prop :=
  P.loopFormation ∧ P.enhancerPromoterCommunication ∧ P.topologicalDomainArchitecture

theorem chromatin_conformation_capture_closed_from_evidence
    (P : ChromatinConformationCapturePackage) (E : ChromatinConformationCaptureEvidence P) :
    ChromatinConformationCaptureClosed P := by
  exact And.intro E.loopFormationClosed
    (And.intro E.enhancerPromoterCommunicationClosed E.topologicalDomainArchitectureClosed)

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse