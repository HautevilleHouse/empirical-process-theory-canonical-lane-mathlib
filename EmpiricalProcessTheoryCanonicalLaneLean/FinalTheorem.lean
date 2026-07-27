import EmpiricalProcessTheoryCanonicalLaneLean.GateLemmas


namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

/-!
Empirical process theory (Donsker)

Constrained admissible-class closure of the theorem.
Full formalization of the proof is future work.
-/
def constrained_theorem_closure : Prop :=
  ∀ (F : DonskerClass), G_n = √n(P_n - P) converges to GP in ℓ∞(F)

theorem constrained_theorem_closure_true : constrained_theorem_closure := by
  sorry

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse
