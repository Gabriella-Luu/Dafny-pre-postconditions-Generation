```dafny
method sumOfCommonDivisor(a:int,b:int) returns (res:int)
    requires a > 0 && b > 0  // The input numbers should be positive.
    ensures forall i :: 1 <= i <= min(a, b) ==> (i divides a && i divides b) ==> (res >= i) // All common divisors are less than or equal to the result.
    ensures forall i :: 1 <= i <= res ==> (i divides a && i divides b) // The result is a sum of common divisors.
```