import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : EconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse