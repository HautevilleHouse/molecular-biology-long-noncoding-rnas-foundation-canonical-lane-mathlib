import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean

structure RnaBindingProteinRecognitionPackage where
  rnaBindingProteins : Type u
  recognitionDomains : Type v
  sequenceSpecificBinding : Prop
  structuralMotifRecognition : Prop
  complexFormation : Prop

structure RnaBindingProteinRecognitionEvidence (P : RnaBindingProteinRecognitionPackage) where
  sequenceSpecificBindingClosed : P.sequenceSpecificBinding
  structuralMotifRecognitionClosed : P.structuralMotifRecognition
  complexFormationClosed : P.complexFormation

def RnaBindingProteinRecognitionClosed (P : RnaBindingProteinRecognitionPackage) : Prop :=
  P.sequenceSpecificBinding ∧ P.structuralMotifRecognition ∧ P.complexFormation

theorem rna_binding_protein_recognition_closed_from_evidence
    (P : RnaBindingProteinRecognitionPackage) (E : RnaBindingProteinRecognitionEvidence P) :
    RnaBindingProteinRecognitionClosed P := by
  exact And.intro E.sequenceSpecificBindingClosed
    (And.intro E.structuralMotifRecognitionClosed E.complexFormationClosed)

end MolecularBiologyLongNoncodingRnasFoundationCanonicalLaneLean
end HautevilleHouse