import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure EmpiricalProcessAdmittedObject where
  functionClass : Type
  sampleSpace : Type
  distribution : Type
  uniformEntropyFinite : Prop
  donskerProperty : Prop
  conclusion : uniformEntropyFinite → donskerProperty

structure AdmissibleClass where
  object : EmpiricalProcessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EmpiricalProcessWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def EmpiricalProcessWitnessClosed (O : EmpiricalProcessAdmittedObject) : Prop :=
  O.donskerProperty

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse