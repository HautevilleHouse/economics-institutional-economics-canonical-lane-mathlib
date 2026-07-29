import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsInstitutionalEconomicsCanonicalLaneLean

structure SolowSwanPackage where
  capitalAccumulation : Prop
  productionFunction : Prop
  savingsRate : Prop
  steadyState : Prop
  convergence : Prop

structure SolowSwanEvidence (S : SolowSwanPackage) where
  capitalAccumulationClosed : S.capitalAccumulation
  productionFunctionClosed : S.productionFunction
  savingsRateClosed : S.savingsRate
  steadyStateClosed : S.steadyState
  convergenceClosed : S.convergence

def SolowSwanClosed (S : SolowSwanPackage) : Prop :=
  S.capitalAccumulation ∧ S.productionFunction ∧ S.savingsRate ∧
  S.steadyState ∧ S.convergence

theorem solow_swan_closed_from_evidence (S : SolowSwanPackage) (ev : SolowSwanEvidence S) :
    SolowSwanClosed S := by
  exact And.intro ev.capitalAccumulationClosed
    (And.intro ev.productionFunctionClosed
      (And.intro ev.savingsRateClosed
        (And.intro ev.steadyStateClosed ev.convergenceClosed)))

structure RamseyCassKoopmansPackage where
  representativeHousehold : Prop
  socialPlanner : Prop
  eulerEquation : Prop
  phaseDiagram : Prop
  saddlePath : Prop

structure RamseyCassKoopmansEvidence (R : RamseyCassKoopmansPackage) where
  representativeHouseholdClosed : R.representativeHousehold
  socialPlannerClosed : R.socialPlanner
  eulerEquationClosed : R.eulerEquation
  phaseDiagramClosed : R.phaseDiagram
  saddlePathClosed : R.saddlePath

def RamseyCassKoopmansClosed (R : RamseyCassKoopmansPackage) : Prop :=
  R.representativeHousehold ∧ R.socialPlanner ∧ R.eulerEquation ∧
  R.phaseDiagram ∧ R.saddlePath

theorem ramsey_cass_koopmans_closed_from_evidence (R : RamseyCassKoopmansPackage) (ev : RamseyCassKoopmansEvidence R) :
    RamseyCassKoopmansClosed R := by
  exact And.intro ev.representativeHouseholdClosed
    (And.intro ev.socialPlannerClosed
      (And.intro ev.eulerEquationClosed
        (And.intro ev.phaseDiagramClosed ev.saddlePathClosed)))

end EconomicsInstitutionalEconomicsCanonicalLaneLean
end HautevilleHouse
