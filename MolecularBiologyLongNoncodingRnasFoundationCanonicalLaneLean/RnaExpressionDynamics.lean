import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure RnaExpressionDynamicsPackage where
  cellType : Type
  expressionLevels : List (String × Float)
  lncrnaCandidates : List String
  rnaSeqReadCount : Nat
  normalizedExpression : Prop
  differentialExpression : Prop

structure RnaExpressionDynamicsEvidence (P : RnaExpressionDynamicsPackage) where
  normalizedExpressionClosed : P.normalizedExpression
  differentialExpressionClosed : P.differentialExpression

def RnaExpressionDynamicsClosed (P : RnaExpressionDynamicsPackage) : Prop :=
  P.normalizedExpression ∧ P.differentialExpression

theorem rna_expression_dynamics_closed_from_evidence
    (P : RnaExpressionDynamicsPackage) (E : RnaExpressionDynamicsEvidence P) :
    RnaExpressionDynamicsClosed P := by
  exact And.intro E.normalizedExpressionClosed E.differentialExpressionClosed

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse