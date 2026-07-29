import HautevilleHouse.EmpiricalProcessTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EmpiricalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse