import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure UtilityRepresentation where
  preferenceRelation : Prop
  utilityFunction : Prop
  continuity : Prop
  monotonicity : Prop

def UtilityRepresentationClosed (U : UtilityRepresentation) : Prop :=
  U.preferenceRelation ∧ U.utilityFunction ∧ U.continuity ∧ U.monotonicity

def UtilityRepresentationEvidence (U : UtilityRepresentation) (h : UtilityRepresentationClosed U) : Prop := h

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse
