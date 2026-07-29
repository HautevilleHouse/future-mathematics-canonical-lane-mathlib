import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure FutureAdmittedObject where
  statement : Type u
  evidence : Prop
  conclusion : evidence

def FutureWitnessClosed (O : FutureAdmittedObject) : Prop :=
  O.evidence

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse