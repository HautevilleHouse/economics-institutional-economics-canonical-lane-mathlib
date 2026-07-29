import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure UtilityTheoryPackage where
  consumptionSet : Type u
  preferenceRelation : Prop
  utilityFunction : Type v
  continuity : Prop
  monotonicity : Prop
  convexity : Prop
  existence : Prop
  representation : Prop

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  preferenceRelationClosed : U.preferenceRelation
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity
  convexityClosed : U.convexity
  existenceClosed : U.existence
  representationClosed : U.representation

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.preferenceRelation ∧ U.continuity ∧ U.monotonicity ∧ U.convexity ∧ U.existence ∧ U.representation

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage) (E : UtilityTheoryEvidence U) : UtilityTheoryClosed U := by
  exact And.intro E.preferenceRelationClosed (And.intro E.continuityClosed (And.intro E.monotonicityClosed (And.intro E.convexityClosed (And.intro E.existenceClosed E.representationClosed))))

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse