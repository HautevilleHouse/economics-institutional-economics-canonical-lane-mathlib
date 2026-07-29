import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure AssetPricingModel where
  stochasticDiscountFactor : Prop
  noArbitrage : Prop
  equilibriumPrices : Prop

def AssetPricingModelClosed (A : AssetPricingModel) : Prop :=
  A.stochasticDiscountFactor ∧ A.noArbitrage ∧ A.equilibriumPrices

theorem asset_pricing_closed (A : AssetPricingModel) (h : AssetPricingModelClosed A) : AssetPricingModelClosed A := h

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse
