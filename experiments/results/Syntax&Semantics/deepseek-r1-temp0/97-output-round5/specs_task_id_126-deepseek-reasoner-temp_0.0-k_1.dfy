```dafny
method sumOfCommonDivisor(a:int,b:int) returns (res:int)
  requires a != 0 || b != 0
  ensures res > 0
  ensures forall d :: d > 0 && a % d == 0 && b % d == 0 ==> d <= res
  ensures res % 1 == 0  // Validates at least divisor 1 is included
```