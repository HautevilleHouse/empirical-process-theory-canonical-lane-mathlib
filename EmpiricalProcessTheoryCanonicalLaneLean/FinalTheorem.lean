import canonicalLaneMathlib.AdmissibleClass
import EmpiricalProcessTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

def ConstrainedEmpiricalProcessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_empirical_process_endgame (A : AdmissibleClass) :
    ConstrainedEmpiricalProcessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse