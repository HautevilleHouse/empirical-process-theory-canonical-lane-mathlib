import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure GlivenkoCantelliClassPackage where
  functionClass : Type u
  domain : Type v
  probabilityMeasure : Type w
  uniformGlivenkoCantelliProperty : Prop
  entropyCondition : Prop
  measurableSeparability : Prop

structure GlivenkoCantelliClassEvidence (G : GlivenkoCantelliClassPackage) where
  uniformGlivenkoCantelliPropertyClosed : G.uniformGlivenkoCantelliProperty
  entropyConditionClosed : G.entropyCondition
  measurableSeparabilityClosed : G.measurableSeparability

def GlivenkoCantelliClassClosed (G : GlivenkoCantelliClassPackage) : Prop :=
  G.uniformGlivenkoCantelliProperty ∧ G.entropyCondition ∧ G.measurableSeparability

theorem glivenko_cantelli_class_closed_from_evidence (G : GlivenkoCantelliClassPackage) (E : GlivenkoCantelliClassEvidence G) :
    GlivenkoCantelliClassClosed G := by
  exact And.intro E.uniformGlivenkoCantelliPropertyClosed (And.intro E.entropyConditionClosed E.measurableSeparabilityClosed)

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse