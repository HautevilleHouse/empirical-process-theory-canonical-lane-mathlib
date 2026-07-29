import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EmpiricalProcessWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion A.object.uniformEntropyFinite

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse