import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure ComputationModel where
  modelType : String
  computationalPower : Prop
  learningCapability : Prop
  reasoningCapacity : Prop

structure ComputationModelEvidence (C : ComputationModel) where
  computationalPowerClosed : C.computationalPower
  learningCapabilityClosed : C.learningCapability
  reasoningCapacityClosed : C.reasoningCapacity

def ComputationModelClosed (C : ComputationModel) : Prop :=
  C.computationalPower ∧ C.learningCapability ∧ C.reasoningCapacity

theorem computation_model_closed_from_evidence (C : ComputationModel) (E : ComputationModelEvidence C) :
    ComputationModelClosed C := by
  exact And.intro E.computationalPowerClosed (And.intro E.learningCapabilityClosed E.reasoningCapacityClosed)

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse