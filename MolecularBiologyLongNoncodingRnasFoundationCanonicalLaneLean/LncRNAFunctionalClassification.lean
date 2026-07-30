import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNAFunctionalClass where
  className : String
  associatedPathways : List String
  mechanism : Prop
  conservationScore : Float
  expressionCorrelation : Float
  functionalAssayEvidence : Prop
  mechanismClosed : mechanism
  expressionCorrelationClosed : expressionCorrelation > 0.5

structure FunctionalClassificationPackage where
  classes : List LncRNAFunctionalClass
  classificationComplete : Prop
  knownFunctions : Nat
  unknownFunctions : Nat

def FunctionalClassificationClosed (P : FunctionalClassificationPackage) : Prop :=
  P.classificationComplete ∧ (P.knownFunctions + P.unknownFunctions > 0)

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse