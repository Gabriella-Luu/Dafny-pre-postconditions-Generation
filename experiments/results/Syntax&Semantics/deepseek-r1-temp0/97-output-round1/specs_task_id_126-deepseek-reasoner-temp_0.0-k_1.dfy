```dafny
method sumOfCommonDivisor(a:int, b:int) returns (res:int)
  requires a >= 1
  requires b >= 1
  ensures res == sum d | d > 0 && a % d == 0 && b % d == 0 :: d
{
  // Implementation not provided
}
```