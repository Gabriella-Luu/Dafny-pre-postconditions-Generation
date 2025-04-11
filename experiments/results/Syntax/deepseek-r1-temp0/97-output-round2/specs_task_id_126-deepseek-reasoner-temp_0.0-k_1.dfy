```dafny
method sumOfCommonDivisor(a:int,b:int) returns (res:int)
requires a >= 1
requires b >= 1
ensures res == sum d | 1 <= d <= a && 1 <= d <= b && (a % d == 0) && (b % d == 0) :: d
{
    // Implementation not provided
}
```