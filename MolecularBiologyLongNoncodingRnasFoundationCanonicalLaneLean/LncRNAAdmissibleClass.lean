import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNASpecies where
  name : String
  sequence : String
  expressionLevel : Float

structure LncRNAAdmittedObject where
  species : LncRNASpecies
  regulatoryFunctionDefined : Prop
  bindingPartnersIdentified : Prop
  conclusion : regulatoryFunctionDefined

def LncRNAWitnessClosed (O : LncRNAAdmittedObject) : Prop :=
  O.regulatoryFunctionDefined

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse