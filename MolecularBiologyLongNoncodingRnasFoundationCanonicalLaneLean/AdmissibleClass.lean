import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNAAdmittedObject where
  lncRNASequence : String
  cellType : String
  functionalAssay : Prop
  bindingPartner : String
  expressionLevel : Float
  functionalAssayTerm : functionalAssay

structure AdmissibleClass where
  object : LncRNAAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.endpointSatisfied ∧ A.object.functionalAssay) ∨ A.remainderRecorded

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse