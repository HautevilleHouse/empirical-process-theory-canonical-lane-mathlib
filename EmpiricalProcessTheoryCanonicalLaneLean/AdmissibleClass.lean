import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure EmpiricalAdmittedObject where
  functionClass : Type u
  domain : Type v
  probabilitySpace : Type w
  measurableFunctions : Prop
  finiteDimension : Nat
  vcDimension : Nat
  vcDimensionBound : vcDimension ≤ finiteDimension

structure AdmissibleClass where
  object : EmpiricalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EmpiricalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse