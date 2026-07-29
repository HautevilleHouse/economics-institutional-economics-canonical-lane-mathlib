import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure InstitutionalFoundations where
  propertyRights : Prop
  contractEnforcement : Prop
  transactionCosts : Prop
  governanceStructure : Prop

def InstitutionalFoundationsClosed (I : InstitutionalFoundations) : Prop :=
  I.propertyRights ∧ I.contractEnforcement ∧ I.transactionCosts ∧ I.governanceStructure

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse
