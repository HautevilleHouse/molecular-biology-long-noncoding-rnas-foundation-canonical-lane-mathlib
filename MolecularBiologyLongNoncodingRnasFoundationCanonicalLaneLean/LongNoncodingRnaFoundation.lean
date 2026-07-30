import canonicallanemathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNAAdmittedObject where
  transcriptSequence : String
  genomicLocus : String
  expressionLevels : Prop
  functionalEvidence : Prop
  conclusion : functionalEvidence

structure LncRNAAdmissibleClass where
  object : LncRNAAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : LncRNAAdmissibleClass) : Prop :=
  LncRNAWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def LncRNAWitnessClosed (O : LncRNAAdmittedObject) : Prop :=
  O.functionalEvidence

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse