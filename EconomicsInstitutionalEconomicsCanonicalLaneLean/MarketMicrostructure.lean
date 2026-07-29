import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure MarketMicrostructurePackage where
  tradingRules : Prop
  orderFlow : Prop
  bidAskSpread : Prop
  marketEfficiency : Prop
  priceDiscovery : Prop
  liquidity : Prop

structure MarketMicrostructureEvidence (M : MarketMicrostructurePackage) where
  tradingRulesClosed : M.tradingRules
  orderFlowClosed : M.orderFlow
  bidAskSpreadClosed : M.bidAskSpread
  marketEfficiencyClosed : M.marketEfficiency
  priceDiscoveryClosed : M.priceDiscovery
  liquidityClosed : M.liquidity

def MarketMicrostructureClosed (M : MarketMicrostructurePackage) : Prop :=
  M.tradingRules ∧ M.orderFlow ∧ M.bidAskSpread ∧ M.marketEfficiency ∧
  M.priceDiscovery ∧ M.liquidity

theorem market_microstructure_closed_from_evidence (M : MarketMicrostructurePackage) (ev : MarketMicrostructureEvidence M) :
    MarketMicrostructureClosed M := by
  exact And.intro ev.tradingRulesClosed
    (And.intro ev.orderFlowClosed
      (And.intro ev.bidAskSpreadClosed
        (And.intro ev.marketEfficiencyClosed
          (And.intro ev.priceDiscoveryClosed ev.liquidityClosed))))

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse
