import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean.LncRNAAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LncRNAWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse