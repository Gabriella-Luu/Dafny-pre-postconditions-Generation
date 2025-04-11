```dafny
method sumOfCommonDivisor(a:int,b:int) returns (res:int)
  requires a > 0
  requires b > 0
  ensures res > 0
  ensures forall d :: (d > 0 && a % d == 0 && b % d == 0) ==> (d <= res)
  ensures (a % res == 0) && (b % res == 0) || (res == 1)
{
  // Method implementation not provided
}
```