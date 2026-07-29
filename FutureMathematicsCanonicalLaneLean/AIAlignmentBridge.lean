import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure AlignmentProperty where
  valueAlignment : Prop
  controlAlignment : Prop
  goalAlignment : Prop

structure AlignmentEvidence (A : AlignmentProperty) where
  valueAlignmentClosed : A.valueAlignment
  controlAlignmentClosed : A.controlAlignment
  goalAlignmentClosed : A.goalAlignment

def AlignmentClosed (A : AlignmentProperty) : Prop :=
  A.valueAlignment ∧ A.controlAlignment ∧ A.goalAlignment

theorem alignment_closed_from_evidence (A : AlignmentProperty) (E : AlignmentEvidence A) :
    AlignmentClosed A := by
  exact And.intro E.valueAlignmentClosed (And.intro E.controlAlignmentClosed E.goalAlignmentClosed)

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse