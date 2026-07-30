import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure LncRNAExpressionPackage where
  transcriptId : String
  cellType : String
  expressionLevel : Float
  isSignificant : Prop

structure LncRNAExpressionEvidence (L : LncRNAExpressionPackage) where
  expressionLevelClosed : L.expressionLevel > 0.0
  significanceClosed : L.isSignificant

def LncRNAExpressionClosed (L : LncRNAExpressionPackage) : Prop :=
  L.expressionLevel > 0.0 ∧ L.isSignificant

theorem lnc_rna_expression_closed_from_evidence (L : LncRNAExpressionPackage)
    (E : LncRNAExpressionEvidence L) : LncRNAExpressionClosed L := by
  exact And.intro E.expressionLevelClosed E.significanceClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse