import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure GlivenkoCantelliClassPackage where
  functionClass : Type
  sampleSpace : Type
  probabilityMeasure : Type
  uniformEntropyCondition : Prop
  uniformLawLargeNumbers : Prop

structure GlivenkoCantelliClassEvidence (G : GlivenkoCantelliClassPackage) where
  uniformEntropyConditionClosed : G.uniformEntropyCondition
  uniformLawLargeNumbersClosed : G.uniformLawLargeNumbers

def GlivenkoCantelliClassClosed (G : GlivenkoCantelliClassPackage) : Prop :=
  G.uniformEntropyCondition ∧ G.uniformLawLargeNumbers

theorem glivenko_cantelli_class_closed_from_evidence (G : GlivenkoCantelliClassPackage) (E : GlivenkoCantelliClassEvidence G) :
    GlivenkoCantelliClassClosed G := by
  exact And.intro E.uniformEntropyConditionClosed E.uniformLawLargeNumbersClosed

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse