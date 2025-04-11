```dafny
method sumOfCommonDivisor(a:int,b:int) returns (res:int)
requires a > 0
requires b > 0
ensures res > 0 ==> (exists d :: 1 <= d <= a && 1 <= d <= b && (a % d == 0 && b % d == 0))
ensures forall d :: 1 <= d <= a && 1 <= d <= b && (a % d == 0 && b % d == 0) ==> (res >= d)
```