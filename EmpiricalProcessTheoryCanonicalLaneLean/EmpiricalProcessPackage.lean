import HautevilleHouse.EmpiricalProcessTheoryCanonicalLaneLean.DonskerClass
import HautevilleHouse.EmpiricalProcessTheoryCanonicalLaneLean.GlivenkoCantelliClass
import HautevilleHouse.EmpiricalProcessTheoryCanonicalLaneLean.VCDimension

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure EmpiricalProcessFoundation where
  donsker : DonskerClassPackage
  donskerEvidence : DonskerClassEvidence donsker
  glivenkoCantelli : GlivenkoCantelliClassPackage
  glivenkoCantelliEvidence : GlivenkoCantelliClassEvidence glivenkoCantelli
  vcDimension : VCDimensionPackage
  vcDimensionEvidence : VCDimensionEvidence vcDimension

def EmpiricalProcessFoundationClosed (F : EmpiricalProcessFoundation) : Prop :=
  DonskerClassClosed F.donsker ∧
  GlivenkoCantelliClassClosed F.glivenkoCantelli ∧
  VCDimensionClosed F.vcDimension

theorem empirical_process_foundation_closed_from_evidence (F : EmpiricalProcessFoundation) :
    EmpiricalProcessFoundationClosed F := by
  exact And.intro (donsker_class_closed_from_evidence F.donsker F.donskerEvidence)
    (And.intro (glivenko_cantelli_class_closed_from_evidence F.glivenkoCantelli F.glivenkoCantelliEvidence)
      (vc_dimension_closed_from_evidence F.vcDimension F.vcDimensionEvidence))

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse