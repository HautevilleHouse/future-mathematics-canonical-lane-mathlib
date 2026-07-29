import FutureMathematicsCanonicalLaneLean.FutureMathematicsGateLemmas

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

def ConstrainedFutureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_future_endgame (A : AdmissibleClass) :
    ConstrainedFutureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse