```dafny
method sumOfCommonDivisor(a:int,b:int) returns (res:int)
    requires a > 0 && b > 0
    ensures res >= 0
    ensures (forall i :: 1 <= i <= a && 1 <= i <= b && a % i == 0 && b % i == 0 ==> res >= i)
    ensures (forall i :: 1 <= i <= res ==> (a % i == 0 && b % i == 0) || !(exists j :: 1 <= j < i && res % j == 0))
```