import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmpiricalProcessTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "empirical-process-theory-canonical-lane",
  theoremName := "empirical-process-theory-canonical-lane",
  theoremObject := "EmpiricalProcessAdmittedObject",
  classicalBoundary := "uniform law of large numbers for function classes",
  constrainedStatement := "constrained empirical process closure through admissible class",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical asymptotic distribution theory"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "empirical-process-theory-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "manifold_constrained" := by
  rfl

end EmpiricalProcessTheoryCanonicalLaneLean
end HautevilleHouse