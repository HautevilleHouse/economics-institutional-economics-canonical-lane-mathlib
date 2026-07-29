import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure GrowthModelPackage where
  capitalStock : Type u
  laborSupply : Prop
  technology : Prop
  savingRate : Prop
  depreciation : Prop
  steadyState : Prop
  convergence : Prop
  optimalGrowth : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  laborSupplyClosed : G.laborSupply
  technologyClosed : G.technology
  savingRateClosed : G.savingRate
  depreciationClosed : G.depreciation
  steadyStateClosed : G.steadyState
  convergenceClosed : G.convergence
  optimalGrowthClosed : G.optimalGrowth

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.laborSupply ∧ G.technology ∧ G.savingRate ∧ G.depreciation ∧ G.steadyState ∧ G.convergence ∧ G.optimalGrowth

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.laborSupplyClosed (And.intro E.technologyClosed (And.intro E.savingRateClosed (And.intro E.depreciationClosed (And.intro E.steadyStateClosed (And.intro E.convergenceClosed E.optimalGrowthClosed)))))

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse