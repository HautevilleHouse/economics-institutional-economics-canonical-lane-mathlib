import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type u
  stochasticDiscountFactor : Prop
  assetPayoffs : Prop
  priceSystem : Prop
  noArbitrage : Prop
  riskNeutralMeasure : Prop
  equilibriumPrices : Prop
  assetPricingFormula : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  stochasticDiscountFactorClosed : A.stochasticDiscountFactor
  assetPayoffsClosed : A.assetPayoffs
  priceSystemClosed : A.priceSystem
  noArbitrageClosed : A.noArbitrage
  riskNeutralMeasureClosed : A.riskNeutralMeasure
  equilibriumPricesClosed : A.equilibriumPrices
  assetPricingFormulaClosed : A.assetPricingFormula

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.stochasticDiscountFactor ∧ A.assetPayoffs ∧ A.priceSystem ∧ A.noArbitrage ∧ A.riskNeutralMeasure ∧ A.equilibriumPrices ∧ A.assetPricingFormula

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.stochasticDiscountFactorClosed (And.intro E.assetPayoffsClosed (And.intro E.priceSystemClosed (And.intro E.noArbitrageClosed (And.intro E.riskNeutralMeasureClosed (And.intro E.equilibriumPricesClosed E.assetPricingFormulaClosed)))))

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse