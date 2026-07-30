import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure DiseaseAssociationPackage where
  diseaseName : String
  lncrnaName : String
  differentialExpressionObserved : Prop
  regulatoryTargetConfirmed : Prop
  clinicalCorrelation : Prop
  expressionBound : Float
  expressionBoundPositive : expressionBound > 0.0
  endMatch : Prop

structure DiseaseAssociationEvidence (D : DiseaseAssociationPackage) where
  differentialExpressionObservedClosed : D.differentialExpressionObserved
  regulatoryTargetConfirmedClosed : D.regulatoryTargetConfirmed
  clinicalCorrelationClosed : D.clinicalCorrelation

def DiseaseAssociationClosed (D : DiseaseAssociationPackage) : Prop :=
  D.differentialExpressionObserved ∧ D.regulatoryTargetConfirmed ∧
  D.clinicalCorrelation ∧ D.endMatch

theorem disease_association_closed_from_evidence
    (D : DiseaseAssociationPackage) (E : DiseaseAssociationEvidence D) :
    DiseaseAssociationClosed D := by
  exact And.intro E.differentialExpressionObservedClosed
    (And.intro E.regulatoryTargetConfirmedClosed
      (And.intro E.clinicalCorrelationClosed D.endMatch))

theorem disease_association_supplies_endpoint
    (D : DiseaseAssociationPackage) : D.endMatch :=
  D.endMatch

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse