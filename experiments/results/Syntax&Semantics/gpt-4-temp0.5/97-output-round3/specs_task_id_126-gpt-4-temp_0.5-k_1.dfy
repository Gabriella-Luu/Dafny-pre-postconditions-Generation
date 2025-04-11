```dafny
method sumOfCommonDivisor(a:int, b:int) returns (res:int)
    requires a > 0 && b > 0 // numbers should be positive
    ensures res >= 0 // result should be non-negative
    ensures forall d :: 1 <= d <= min(a, b) && a % d == 0 && b % d == 0 ==> d <= res // any common divisor should be less than or equal to the result
    ensures forall d :: 1 <= d <= res ==> (a % d == 0 && b % d == 0) || (exists e :: 1 <= e < d && a % e == 0 && b % e == 0 && res == d + e) // the result should be a sum of common divisors
```