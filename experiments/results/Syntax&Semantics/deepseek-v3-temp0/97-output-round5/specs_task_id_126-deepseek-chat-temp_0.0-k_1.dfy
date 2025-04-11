```dafny
method sumOfCommonDivisor(a: int, b: int) returns (res: int)
  requires a > 0 && b > 0
  ensures res == (sum d | 1 <= d <= a && 1 <= d <= b && a % d == 0 && b % d == 0 :: d)
  ensures forall d :: 1 <= d <= a && 1 <= d <= b && a % d == 0 && b % d == 0 ==> d <= res
  ensures forall d :: 1 <= d <= a && 1 <= d <= b && (a % d != 0 || b % d != 0) ==> d > res
{
  // Implementation goes here
}
```