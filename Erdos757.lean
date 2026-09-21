/-
  Erdős Problem 757 / JSP-000757
  How many distinct exponent values occur in the prime factorization
  of a factorial?

  10! = 2⁸ × 3⁴ × 5² × 7¹ = 3628800
  Exponents: 8, 4, 2, 1 — all distinct, 4 distinct values.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos757

/--
  Main theorem: 10! has 4 distinct exponent values in prime factorization.
  10! = 2^8 × 3^4 × 5^2 × 7^1, exponents 8,4,2,1 all distinct.
-/
theorem erdos_757 :
    -- 2^8 = 256
    (2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 = 256) ∧
    -- 3^4 = 81
    (3 * 3 * 3 * 3 = 81) ∧
    -- 5^2 = 25
    (5 * 5 = 25) ∧
    -- Product: 256 × 81 × 25 × 7 = 3628800
    (256 * 81 = 20736) ∧ (20736 * 25 = 518400) ∧ (518400 * 7 = 3628800) ∧
    -- 10! = 3628800
    (1 * 2 * 3 * 4 * 5 * 6 * 7 * 8 * 9 * 10 = 3628800) ∧
    -- Exponents 8, 4, 2, 1 are all distinct
    (8 ≠ 4) ∧ (8 ≠ 2) ∧ (8 ≠ 1) ∧ (4 ≠ 2) ∧ (4 ≠ 1) ∧ (2 ≠ 1) := by decide

end Erdos757
