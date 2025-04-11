```dafny
method sumOfCommonDivisor(a:int, b:int) returns (res:int)
  requires a > 0 && b > 0 // both input numbers must be positive
  ensures forall d :: d >= 1 && d <= min(a, b) ==> ((a % d == 0 && b % d == 0) ==> res >= d) // the result must be greater than or equal to any common divisor
  ensures forall d :: d >= 1 && d <= min(a, b) ==> ((a % d == 0 && b % d == 0) ==> (res % d == 0)) // the result must be divisible by any common divisor
  ensures res >= 0 // the result must be non-negative
{
  // Method implementation goes here
}
```