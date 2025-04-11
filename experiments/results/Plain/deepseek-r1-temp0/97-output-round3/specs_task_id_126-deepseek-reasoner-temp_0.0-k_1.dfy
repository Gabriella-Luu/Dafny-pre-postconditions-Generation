```dafny
method sumOfCommonDivisor(a:int, b:int) returns (res:int)
  requires a != 0 || b != 0
  ensures res > 0
  ensures forall d: int :: d > 0 && (a % d == 0 || a == 0) && (b % d == 0 || b == 0) ==> d <= res
  ensures forall d: int :: d > 0 && (a % d == 0 || a == 0) && (b % d == 0 || b == 0) ==> res % d == 0
{
  // Implementation would compute GCD and sum its divisors
}
```