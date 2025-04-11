```dafny
method sumOfCommonDivisor(a: int, b: int) returns (res: int)
  requires a > 0 && b > 0 // a and b must be positive integers
  ensures forall d :: d > 0 && d <= a && d <= b && a % d == 0 && b % d == 0 ==> res >= d // res must be at least as large as every common divisor
  ensures forall d :: d > 0 && d <= res && res % d == 0 ==> (a % d == 0 && b % d == 0) // every divisor of res must be a common divisor of a and b
{
  // method implementation
}
```