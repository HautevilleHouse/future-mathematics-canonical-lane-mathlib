import FutureMathematicsCanonicalLaneLean.FutureMathematicsAdmissibleClass

namespace HautevilleHouse
namespace FutureMathematicsCanonicalLaneLean

structure TrendAnalysisPackage where
  datasetSize : Nat
  extrapolationModel : Type u
  trendPrediction : Prop
  uncertaintyQuantified : Prop
  trendPredictionClosed : trendPrediction
  uncertaintyQuantifiedClosed : uncertaintyQuantified

structure TrendAnalysisEvidence (T : TrendAnalysisPackage) where
  trendPredictionClosed : T.trendPredictionClosed
  uncertaintyQuantifiedClosed : T.uncertaintyQuantifiedClosed

def TrendAnalysisClosed (T : TrendAnalysisPackage) : Prop :=
  T.trendPrediction ∧ T.uncertaintyQuantified

theorem trend_analysis_closed_from_evidence (T : TrendAnalysisPackage) (E : TrendAnalysisEvidence T) :
    TrendAnalysisClosed T := by
  exact And.intro E.trendPredictionClosed E.uncertaintyQuantifiedClosed

end FutureMathematicsCanonicalLaneLean
end HautevilleHouse