```dafny
method sumOfCommonDivisor(a: int, b: int) returns (res: int)
  requires a > 0 && b > 0
  ensures res > 0
  ensures forall d: int :: (d > 0 && a % d == 0 && b % d == 0) ==> (d <= res)
  ensures (a % res == 0) && (b % res == 0)
```