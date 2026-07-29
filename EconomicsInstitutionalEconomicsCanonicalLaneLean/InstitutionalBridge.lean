import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure InstitutionalEconomicsPackage where
  propertyRights : Prop
  transactionCosts : Prop
  contractEnforcement : Prop
  collectiveAction : Prop
  institutionalChange : Prop
  pathDependence : Prop
  governanceStructures : Prop
  economicPerformance : Prop

structure InstitutionalEconomicsEvidence (I : InstitutionalEconomicsPackage) where
  propertyRightsClosed : I.propertyRights
  transactionCostsClosed : I.transactionCosts
  contractEnforcementClosed : I.contractEnforcement
  collectiveActionClosed : I.collectiveAction
  institutionalChangeClosed : I.institutionalChange
  pathDependenceClosed : I.pathDependence
  governanceStructuresClosed : I.governanceStructures
  economicPerformanceClosed : I.economicPerformance

def InstitutionalEconomicsClosed (I : InstitutionalEconomicsPackage) : Prop :=
  I.propertyRights ∧ I.transactionCosts ∧ I.contractEnforcement ∧ I.collectiveAction ∧ I.institutionalChange ∧ I.pathDependence ∧ I.governanceStructures ∧ I.economicPerformance

theorem institutional_economics_closed_from_evidence (I : InstitutionalEconomicsPackage) (E : InstitutionalEconomicsEvidence I) : InstitutionalEconomicsClosed I := by
  exact And.intro E.propertyRightsClosed (And.intro E.transactionCostsClosed (And.intro E.contractEnforcementClosed (And.intro E.collectiveActionClosed (And.intro E.institutionalChangeClosed (And.intro E.pathDependenceClosed (And.intro E.governanceStructuresClosed E.economicPerformanceClosed))))))

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse