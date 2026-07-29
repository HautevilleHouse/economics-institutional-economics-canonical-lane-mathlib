import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure InstitutionalEconomicsAdmittedObject where
  object : AdmittedObject
  endowmentSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endowmentSatisfied ∨ remainderRecorded

def InstitutionalEconomicsClosure (A : AdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse
