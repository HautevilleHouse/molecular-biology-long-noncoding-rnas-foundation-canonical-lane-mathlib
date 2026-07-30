import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNAdiseaseAssociationPackage where
  lncRnaId : String
  diseaseId : String
  associationStrength : Float
  isCurated : Prop

structure LncRNAdiseaseAssociationEvidence (D : LncRNAdiseaseAssociationPackage) where
  strengthClosed : D.associationStrength > 0.5
  curatedClosed : D.isCurated

def LncRNAdiseaseAssociationClosed (D : LncRNAdiseaseAssociationPackage) : Prop :=
  D.associationStrength > 0.5 ∧ D.isCurated

theorem lnc_rna_disease_association_closed_from_evidence
    (D : LncRNAdiseaseAssociationPackage)
    (E : LncRNAdiseaseAssociationEvidence D) : LncRNAdiseaseAssociationClosed D := by
  exact And.intro E.strengthClosed E.curatedClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse