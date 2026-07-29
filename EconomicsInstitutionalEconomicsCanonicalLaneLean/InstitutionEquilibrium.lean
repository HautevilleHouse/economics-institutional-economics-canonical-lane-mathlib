import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure InstitutionEquilibriumPackage where
  agentPopulation : Type u
  commoditySpace : Type v
  priceSystem : Type w
  initialEndowments : agentPopulation -> commoditySpace
  preferences : agentPopulation -> commoditySpace -> Prop
  budgetSet : agentPopulation -> priceSystem -> Set commoditySpace
  demandCorrespondence : agentPopulation -> priceSystem -> Set commoditySpace
  excessDemand : priceSystem -> commoditySpace
  equilibriumPrice : priceSystem
  excessDemandZeroAtEquilibrium : excessDemand equilibriumPrice = 0
  institutionRules : Prop
  institutionRulesHolding : institutionRules

structure InstitutionEquilibriumEvidence (P : InstitutionEquilibriumPackage) where
  excessDemandZeroClosed : P.excessDemandZeroAtEquilibrium
  institutionRulesClosed : P.institutionRulesHolding

def InstitutionEquilibriumClosed (P : InstitutionEquilibriumPackage) : Prop :=
  P.excessDemandZeroAtEquilibrium ∧ P.institutionRulesHolding

theorem institution_equilibrium_closed_from_evidence (P : InstitutionEquilibriumPackage) (E : InstitutionEquilibriumEvidence P) : InstitutionEquilibriumClosed P := by
  exact And.intro E.excessDemandZeroClosed E.institutionRulesClosed

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse