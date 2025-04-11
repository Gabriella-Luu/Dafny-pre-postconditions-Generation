```dafny
method sumOfCommonDivisor(a:int, b:int) returns (res:int)
    requires a > 0 && b > 0 // a and b should be positive integers
    ensures res >= 0 // the result should be non-negative
    ensures forall i :: 1 <= i <= a && a % i == 0 && b % i == 0 ==> i <= res // every common divisor should be less than or equal to the result
    ensures forall i :: 1 <= i <= res ==> (a % i == 0 && b % i == 0) || (res % i != 0) // the result should be the sum of common divisors
```