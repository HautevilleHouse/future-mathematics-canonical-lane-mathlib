import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure AutomationProperty where
  theoremProving : Prop
  proofChecking : Prop
  counterexampleFinding : Prop

structure AutomationEvidence (A : AutomationProperty) where
  theoremProvingClosed : A.theoremProving
  proofCheckingClosed : A.proofChecking
  counterexampleFindingClosed : A.counterexampleFinding

def AutomationClosed (A : AutomationProperty) : Prop :=
  A.theoremProving ∧ A.proofChecking ∧ A.counterexampleFinding

theorem automation_closed_from_evidence (A : AutomationProperty) (E : AutomationEvidence A) :
    AutomationClosed A := by
  exact And.intro E.theoremProvingClosed (And.intro E.proofCheckingClosed E.counterexampleFindingClosed)

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse