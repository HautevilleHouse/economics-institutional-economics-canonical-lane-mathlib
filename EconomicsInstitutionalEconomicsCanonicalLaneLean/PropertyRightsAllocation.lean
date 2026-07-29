import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure PropertyRightsAllocationPackage where
  agents : Type u
  goods : Type v
  initialRights : agents -> goods -> Prop
  allocation : agents -> goods -> Prop
  feasibilityCondition : Prop
  feasibilityConditionClosed : feasibilityCondition
  coreStability : Prop
  coreStabilityClosed : coreStability
  institutionEnforcement : Prop
  institutionEnforcementClosed : institutionEnforcement

structure PropertyRightsAllocationEvidence (P : PropertyRightsAllocationPackage) where
  feasibilityConditionClosed : P.feasibilityConditionClosed
  coreStabilityClosed : P.coreStabilityClosed
  institutionEnforcementClosed : P.institutionEnforcementClosed

def PropertyRightsAllocationClosed (P : PropertyRightsAllocationPackage) : Prop :=
  P.feasibilityConditionClosed ∧ P.coreStabilityClosed ∧ P.institutionEnforcementClosed

theorem property_rights_allocation_closed_from_evidence (P : PropertyRightsAllocationPackage) (E : PropertyRightsAllocationEvidence P) : PropertyRightsAllocationClosed P := by
  exact And.intro E.feasibilityConditionClosed (And.intro E.coreStabilityClosed E.institutionEnforcementClosed)

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse