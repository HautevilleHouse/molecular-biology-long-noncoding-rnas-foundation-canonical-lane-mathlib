import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean.LncRNABridgeLemmas
import MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean.LncRNAGateLemmas

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

def ConstrainedLncRNAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lncrna_endgame (A : AdmissibleClass) :
    ConstrainedLncRNAClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse