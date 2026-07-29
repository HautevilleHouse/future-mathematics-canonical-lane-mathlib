import FutureMathematicsCanonicalLaneLean.FutureMathematicsBridgeLemmas

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.bridgeSatisfied ∨ A.gateSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse