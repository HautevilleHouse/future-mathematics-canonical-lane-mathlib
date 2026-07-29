import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure FutureAdmittedObject where
  problemDomain : Type u
  futureStatement : Prop
  evidenceBasis : Prop
  conclusion : futureStatement

structure AdmissibleClass where
  object : FutureAdmittedObject
  bridgeSatisfied : Prop
  gateSatisfied : Prop
  gateWitness : bridgeSatisfied ∨ gateSatisfied

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.futureStatement ∧ (A.bridgeSatisfied ∨ A.gateSatisfied)

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse