import HautevilleHouse.FutureMathematicsCanonicalLaneLean.FutureMathematicsPackage

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure QuantumSupremacyPackage (A : AdmissibleClass) where
  quantumCircuit : Type
  classicalVerification : Prop
  samplingTask : Prop
  supremacyClaim : Prop

structure QuantumSupremacyEvidence {A : AdmissibleClass} (P : QuantumSupremacyPackage A) where
  quantumCircuitClosed : P.quantumCircuit
  classicalVerificationClosed : P.classicalVerification
  samplingTaskClosed : P.samplingTask
  supremacyClaimClosed : P.supremacyClaim

def QuantumSupremacyClosed {A : AdmissibleClass} (P : QuantumSupremacyPackage A) : Prop :=
  P.quantumCircuit ∧ P.classicalVerification ∧ P.samplingTask ∧ P.supremacyClaim

theorem quantum_supremacy_closed_from_evidence
    {A : AdmissibleClass} (P : QuantumSupremacyPackage A)
    (E : QuantumSupremacyEvidence P) : QuantumSupremacyClosed P := by
  exact And.intro E.quantumCircuitClosed
    (And.intro E.classicalVerificationClosed
      (And.intro E.samplingTaskClosed E.supremacyClaimClosed))

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse