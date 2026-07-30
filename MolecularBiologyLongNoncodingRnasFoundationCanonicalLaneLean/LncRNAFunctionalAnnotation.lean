import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNAFunctionalAnnotationPackage where
  geneId : String
  functionCategory : String
  experimentalEvidence : Prop
  highConfidence : Prop

structure LncRNAFunctionalAnnotationEvidence (A : LncRNAFunctionalAnnotationPackage) where
  experimentalEvidenceClosed : A.experimentalEvidence
  confidenceClosed : A.highConfidence

def LncRNAFunctionalAnnotationClosed (A : LncRNAFunctionalAnnotationPackage) : Prop :=
  A.experimentalEvidence ∧ A.highConfidence

theorem lnc_rna_functional_annotation_closed_from_evidence
    (A : LncRNAFunctionalAnnotationPackage)
    (E : LncRNAFunctionalAnnotationEvidence A) : LncRNAFunctionalAnnotationClosed A := by
  exact And.intro E.experimentalEvidenceClosed E.confidenceClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse