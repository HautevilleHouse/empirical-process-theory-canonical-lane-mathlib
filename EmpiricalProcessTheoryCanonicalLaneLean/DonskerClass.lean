import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure DonskerClassPackage where
  functionClass : Type
  sampleSpace : Type
  probabilityMeasure : Type
  bracketingEntropyCondition : Prop
  uniformCentralLimitTheorem : Prop

structure DonskerClassEvidence (D : DonskerClassPackage) where
  bracketingEntropyConditionClosed : D.bracketingEntropyCondition
  uniformCentralLimitTheoremClosed : D.uniformCentralLimitTheorem

def DonskerClassClosed (D : DonskerClassPackage) : Prop :=
  D.bracketingEntropyCondition ∧ D.uniformCentralLimitTheorem

theorem donsker_class_closed_from_evidence (D : DonskerClassPackage) (E : DonskerClassEvidence D) :
    DonskerClassClosed D := by
  exact And.intro E.bracketingEntropyConditionClosed E.uniformCentralLimitTheoremClosed

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse