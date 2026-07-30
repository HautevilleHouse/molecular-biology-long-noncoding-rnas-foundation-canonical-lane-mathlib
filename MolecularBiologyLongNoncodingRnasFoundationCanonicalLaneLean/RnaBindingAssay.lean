import MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure RnaBindingAssayPackage where
  lncRNASequence : String
  proteinPartner : String
  bindingAffinity : Float
  assayCondition : String
  bindingDetected : Prop

def RnaBindingAssayClosed (P : RnaBindingAssayPackage) : Prop :=
  P.bindingDetected

structure RnaBindingAssayEvidence (P : RnaBindingAssayPackage) where
  bindingDetectedClosed : P.bindingDetected

theorem rna_binding_assay_closed_from_evidence (P : RnaBindingAssayPackage)
    (E : RnaBindingAssayEvidence P) : RnaBindingAssayClosed P := by
  exact E.bindingDetectedClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse