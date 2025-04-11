```dafny
method sumOfCommonDivisor(a:int, b:int) returns (res:int)
  requires a != 0 || b != 0
  ensures res > 0
  ensures (a != 0 && b != 0) ==> (res % (if a < 0 then -a else a) == 0 && res % (if b < 0 then -b else b) == 0)
  ensures forall d: int :: (d > 0 && a % d == 0 && b % d == 0) ==> d <= res
  ensures forall d: int :: (d > 0 && d <= res && a % d == 0 && b % d == 0) ==> (res % d == 0)
{
  // Implementation not provided
}
```