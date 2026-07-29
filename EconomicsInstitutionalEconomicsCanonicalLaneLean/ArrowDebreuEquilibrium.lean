import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : Type v
  agentEndowments : Prop
  preferences : Prop
  excessDemand : Prop
  equilibriumPrices : Prop
  existenceProof : Prop
  welfareProperties : Prop

structure ArrowDebreuEquilibriumEvidence (P : ArrowDebreuEquilibriumPackage) where
  preferencesClosed : P.preferences
  excessDemandClosed : P.excessDemand
  equilibriumPricesClosed : P.equilibriumPrices
  existenceProofClosed : P.existenceProof
  welfarePropertiesClosed : P.welfareProperties

def ArrowDebreuEquilibriumClosed (P : ArrowDebreuEquilibriumPackage) : Prop :=
  P.preferences ∧ P.excessDemand ∧ P.equilibriumPrices ∧ P.existenceProof ∧ P.welfareProperties

theorem arrow_debreu_equilibrium_closed_from_evidence (P : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence P) : ArrowDebreuEquilibriumClosed P := by
  exact And.intro E.preferencesClosed (And.intro E.excessDemandClosed (And.intro E.equilibriumPricesClosed (And.intro E.existenceProofClosed E.welfarePropertiesClosed)))

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse