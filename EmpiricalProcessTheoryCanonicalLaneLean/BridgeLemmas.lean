import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.uniformLaw

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse