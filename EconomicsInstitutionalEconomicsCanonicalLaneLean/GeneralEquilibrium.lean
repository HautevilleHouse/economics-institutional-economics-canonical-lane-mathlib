import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure ArrowDebreuCommoditySpace where
  commodityTypes : Type u
  priceSystem : Type v
  budgetConstraint : Prop

def ArrowDebreuCommoditySpaceClosed (C : ArrowDebreuCommoditySpace) : Prop := C.budgetConstraint

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse
