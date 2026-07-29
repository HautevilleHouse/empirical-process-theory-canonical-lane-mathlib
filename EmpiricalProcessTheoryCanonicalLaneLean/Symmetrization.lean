import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure SymmetrizationLemmaPackage where
  functionClass : Type u
  empiricalProcess : Type v
  symmetrizedProcess : Type w
  comparisonInequality : Prop
  symmetrizationBound : Prop
  rademacherComplexity : Prop

structure SymmetrizationLemmaEvidence (S : SymmetrizationLemmaPackage) where
  comparisonInequalityClosed : S.comparisonInequality
  symmetrizationBoundClosed : S.symmetrizationBound
  rademacherComplexityClosed : S.rademacherComplexity

def SymmetrizationLemmaClosed (S : SymmetrizationLemmaPackage) : Prop :=
  S.comparisonInequality ∧ S.symmetrizationBound ∧ S.rademacherComplexity

theorem symmetrization_lemma_closed_from_evidence (S : SymmetrizationLemmaPackage) (E : SymmetrizationLemmaEvidence S) :
    SymmetrizationLemmaClosed S := by
  exact And.intro E.comparisonInequalityClosed (And.intro E.symmetrizationBoundClosed E.rademacherComplexityClosed)

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse