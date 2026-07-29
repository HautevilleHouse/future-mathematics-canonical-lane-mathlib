import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FutureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse