import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure AdmissibleClass where
  object : FutureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FutureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse