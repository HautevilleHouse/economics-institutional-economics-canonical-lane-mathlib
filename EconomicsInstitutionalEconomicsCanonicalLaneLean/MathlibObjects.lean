import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure EconomicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconomicsAdmittedObject where
  space : EconomicsSpace
  closedEconomy : Prop
  completeMarkets : Prop
  rationalAgents : Prop
  equilibriumObject : Type
  equilibriumTopology : TopologicalSpace equilibriumObject
  equilibriumExists : Prop
  conclusion : equilibriumExists

structure EconomicsEndgameState where
  object : EconomicsAdmittedObject

def EconomicsWitnessClosed (O : EconomicsAdmittedObject) : Prop :=
  O.equilibriumExists

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse