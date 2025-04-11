```dafny
method checkMonthnumberNumber(monthnum: int) returns (res: bool)
  requires 1 <= monthnum && monthnum <= 12
  ensures res == (monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11)
```
This method checks whether the given month number contains 30 days. The precondition ensures that the input `monthnum` is a valid month number (between 1 and 12). The postcondition ensures that the result `res` is `true` if the month is April (4), June (6), September (9), or November (11), which are the months with 30 days. Otherwise, `res` is `false`.