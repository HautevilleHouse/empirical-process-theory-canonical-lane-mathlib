import HautevilleHouse.EmpiricalProcessTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure VCDimensionPackage where
  functionClass : Type u
  domain : Type v
  shatterDimension : Nat
  vcDimension : Nat
  finiteVCDimension : vcDimension < ∞
  growthFunctionComputed : Prop

structure VCDimensionEvidence (V : VCDimensionPackage) where
  finiteVCDimensionClosed : V.finiteVCDimension
  growthFunctionComputedClosed : V.growthFunctionComputed

def VCDimensionClosed (V : VCDimensionPackage) : Prop :=
  V.finiteVCDimension ∧ V.growthFunctionComputed

theorem vc_dimension_closed_from_evidence (V : VCDimensionPackage) (E : VCDimensionEvidence V) :
    VCDimensionClosed V := by
  exact And.intro E.finiteVCDimensionClosed E.growthFunctionComputedClosed

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse