```dafny
method sumOfCommonDivisor(a:int,b:int) returns (res:int)
  requires a != 0 || b != 0
  ensures res == sum d | d > 0 && (a % d == 0) && (b % d == 0) :: d
```