import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean.LncRNAAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure BindingAffinityPackage where
  rnaSpecies : LncRNASpecies
  proteinTarget : String
  bindingConstant : Float
  affinityMeasured : Prop

structure BindingAffinityEvidence (B : BindingAffinityPackage) where
  bindingConstantClosed : B.bindingConstant > 0
  affinityMeasuredClosed : B.affinityMeasured

def BindingAffinityClosed (B : BindingAffinityPackage) : Prop :=
  B.bindingConstant > 0 ∧ B.affinityMeasured

theorem binding_affinity_closed_from_evidence (B : BindingAffinityPackage)
    (E : BindingAffinityEvidence B) : BindingAffinityClosed B := by
  exact And.intro E.bindingConstantClosed E.affinityMeasuredClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse