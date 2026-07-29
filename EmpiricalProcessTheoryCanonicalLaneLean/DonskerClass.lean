import HautevilleHouse.EmpiricalProcessTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure DonskerClassPackage where
  functionClass : Type u
  domain : Type v
  probabilitySpace : Type w
  entropyCondition : Prop
  bracketingNumberCondition : Prop
  asymptoticNormality : Prop

structure DonskerClassEvidence (D : DonskerClassPackage) where
  entropyConditionClosed : D.entropyCondition
  bracketingNumberConditionClosed : D.bracketingNumberCondition
  asymptoticNormalityClosed : D.asymptoticNormality

def DonskerClassClosed (D : DonskerClassPackage) : Prop :=
  D.entropyCondition ∧ D.bracketingNumberCondition ∧ D.asymptoticNormality

theorem donsker_class_closed_from_evidence (D : DonskerClassPackage) (E : DonskerClassEvidence D) :
    DonskerClassClosed D := by
  exact And.intro E.entropyConditionClosed (And.intro E.bracketingNumberConditionClosed E.asymptoticNormalityClosed)

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse