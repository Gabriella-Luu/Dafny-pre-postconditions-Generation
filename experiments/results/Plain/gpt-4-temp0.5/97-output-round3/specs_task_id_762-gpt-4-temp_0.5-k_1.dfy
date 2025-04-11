```dafny
method checkMonthNumber(monthnum:int) returns (res:bool)
  requires monthnum >= 1 && monthnum <= 12; // the month number should be between 1 and 12
  ensures (
    (monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11) ==> res == true) && 
    (monthnum != 4 && monthnum != 6 && monthnum != 9 && monthnum != 11) ==> res == false;
    // the method should return true if the month number corresponds to a month with 30 days (April, June, September, November)
    // and false otherwise
```