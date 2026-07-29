import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure MaximalInequalityPackage where
  functionClass : Type u
  empiricalProcess : Type v
  maximalInequality : Prop
  chainingBound : Prop
  metricEntropyBound : Prop

structure MaximalInequalityEvidence (M : MaximalInequalityPackage) where
  maximalInequalityClosed : M.maximalInequality
  chainingBoundClosed : M.chainingBound
  metricEntropyBoundClosed : M.metricEntropyBound

def MaximalInequalityClosed (M : MaximalInequalityPackage) : Prop :=
  M.maximalInequality ∧ M.chainingBound ∧ M.metricEntropyBound

theorem maximal_inequality_closed_from_evidence (M : MaximalInequalityPackage) (E : MaximalInequalityEvidence M) :
    MaximalInequalityClosed M := by
  exact And.intro E.maximalInequalityClosed (And.intro E.chainingBoundClosed E.metricEntropyBoundClosed)

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse