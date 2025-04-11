```dafny
method sumOfCommonDivisor(a: int, b: int) returns (res: int)
  requires a > 0 && b > 0
  ensures res == (sum i | 1 <= i <= a && 1 <= i <= b && a % i == 0 && b % i == 0 :: i)
{
  // Implementation not provided
}
```