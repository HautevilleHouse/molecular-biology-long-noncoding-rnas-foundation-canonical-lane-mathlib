import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNASubcellularLocalizationPackage where
  lncRnaId : String
  compartment : String
  localizationScore : Float
  isLocalized : Prop

structure LncRNASubcellularLocalizationEvidence (L : LncRNASubcellularLocalizationPackage) where
  localizationScoreClosed : L.localizationScore > 0.7
  localizedClosed : L.isLocalized

def LncRNASubcellularLocalizationClosed (L : LncRNASubcellularLocalizationPackage) : Prop :=
  L.localizationScore > 0.7 ∧ L.isLocalized

theorem lnc_rna_subcellular_localization_closed_from_evidence
    (L : LncRNASubcellularLocalizationPackage)
    (E : LncRNASubcellularLocalizationEvidence L) : LncRNASubcellularLocalizationClosed L := by
  exact And.intro E.localizationScoreClosed E.localizedClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse