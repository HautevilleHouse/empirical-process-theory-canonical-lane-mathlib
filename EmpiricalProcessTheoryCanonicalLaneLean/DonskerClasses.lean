import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure DonskerClassPackage where
  functionClass : Type u
  domain : Type v
  probabilityMeasure : Type w
  uniformDonskerProperty : Prop
  entropyCondition : Prop
  bracketingCondition : Prop

structure DonskerClassEvidence (D : DonskerClassPackage) where
  uniformDonskerPropertyClosed : D.uniformDonskerProperty
  entropyConditionClosed : D.entropyCondition
  bracketingConditionClosed : D.bracketingCondition

def DonskerClassClosed (D : DonskerClassPackage) : Prop :=
  D.uniformDonskerProperty ∧ D.entropyCondition ∧ D.bracketingCondition

theorem donsker_class_closed_from_evidence (D : DonskerClassPackage) (E : DonskerClassEvidence D) :
    DonskerClassClosed D := by
  exact And.intro E.uniformDonskerPropertyClosed (And.intro E.entropyConditionClosed E.bracketingConditionClosed)

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse