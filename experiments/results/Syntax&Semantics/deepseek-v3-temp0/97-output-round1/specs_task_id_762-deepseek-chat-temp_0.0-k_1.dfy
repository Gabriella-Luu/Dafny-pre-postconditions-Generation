```dafny
method checkMonthnumberNumber(monthnum:int) returns (res:bool)
  requires 1 <= monthnum <= 12
  ensures res == (monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11)
```
### Explanation:
- **Precondition (`requires`):** The method requires that `monthnum` is an integer between 1 and 12, inclusive. This ensures that the input is a valid month number.
- **Postcondition (`ensures`):** The method ensures that `res` is `true` if and only if `monthnum` corresponds to a month with 30 days (April, June, September, or November). This is expressed concisely using a logical OR condition.