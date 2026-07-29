import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure EmpiricalProcessAdmittedObject where
  functionClass : Type u
  metric : Type v
  entropyNumbers : Prop
  uniformLaw : Prop
  conclusion : uniformLaw

structure AdmissibleClass where
  object : EmpiricalProcessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.uniformLaw ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse