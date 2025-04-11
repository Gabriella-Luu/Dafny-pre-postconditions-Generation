```dafny
method checkMonthnumbNumber(m: int) returns (res: bool)
  requires 1 <= m <= 12
  ensures res == (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12)
```
This method checks whether the given month number `m` contains 31 days. The precondition ensures that `m` is a valid month number (between 1 and 12). The postcondition ensures that `res` is `true` if and only if `m` is one of the months that have 31 days (January, March, May, July, August, October, or December).