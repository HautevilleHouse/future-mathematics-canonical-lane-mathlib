import HautevilleHouse.FutureMathematicsCanonicalLaneLean.FutureMathematicsPackage

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure HomologicalCryptographyPackage (A : AdmissibleClass) where
  encryptionScheme : Type
  securityReduction : Prop
  privacyAmplification : Prop
  quantumResistance : Prop

structure HomologicalCryptographyEvidence {A : AdmissibleClass} (P : HomologicalCryptographyPackage A) where
  encryptionSchemeClosed : P.encryptionScheme
  securityReductionClosed : P.securityReduction
  privacyAmplificationClosed : P.privacyAmplification
  quantumResistanceClosed : P.quantumResistance

def HomologicalCryptographyClosed {A : AdmissibleClass} (P : HomologicalCryptographyPackage A) : Prop :=
  P.encryptionScheme ∧ P.securityReduction ∧ P.privacyAmplification ∧ P.quantumResistance

theorem homological_cryptography_closed_from_evidence
    {A : AdmissibleClass} (P : HomologicalCryptographyPackage A)
    (E : HomologicalCryptographyEvidence P) : HomologicalCryptographyClosed P := by
  exact And.intro E.encryptionSchemeClosed
    (And.intro E.securityReductionClosed
      (And.intro E.privacyAmplificationClosed E.quantumResistanceClosed))

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse