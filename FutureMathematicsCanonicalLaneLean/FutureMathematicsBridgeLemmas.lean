import FutureMathematicsCanonicalLaneLean.FutureMathematicsAdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.futureStatement

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse