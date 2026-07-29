import HautevilleHouse.EmpiricalProcessTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure GlivenkoCantelliClassPackage where
  functionClass : Type u
  domain : Type v
  probabilitySpace : Type w
  uniformConvergenceCondition : Prop
  consistencyOfRisk : Prop

structure GlivenkoCantelliClassEvidence (G : GlivenkoCantelliClassPackage) where
  uniformConvergenceConditionClosed : G.uniformConvergenceCondition
  consistencyOfRiskClosed : G.consistencyOfRisk

def GlivenkoCantelliClassClosed (G : GlivenkoCantelliClassPackage) : Prop :=
  G.uniformConvergenceCondition ∧ G.consistencyOfRisk

theorem glivenko_cantelli_class_closed_from_evidence (G : GlivenkoCantelliClassPackage) (E : GlivenkoCantelliClassEvidence G) :
    GlivenkoCantelliClassClosed G := by
  exact And.intro E.uniformConvergenceConditionClosed E.consistencyOfRiskClosed

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse