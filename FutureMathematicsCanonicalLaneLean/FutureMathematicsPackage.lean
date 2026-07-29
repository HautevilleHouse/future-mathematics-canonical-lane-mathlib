import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure FutureMathematicsAdmittedObject where
  domain : Type
  topology : TopologicalSpace domain
  conjectureStatement : Prop
  conclusion : conjectureStatement

structure AdmissibleClass where
  object : FutureMathematicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FutureMathematicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def FutureMathematicsWitnessClosed (O : FutureMathematicsAdmittedObject) : Prop :=
  O.conjectureStatement

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse