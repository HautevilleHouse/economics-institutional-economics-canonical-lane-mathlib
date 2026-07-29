import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconomicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse