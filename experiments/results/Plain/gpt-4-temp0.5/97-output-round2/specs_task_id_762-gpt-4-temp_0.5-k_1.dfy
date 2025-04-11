```dafny
method checkMonthNumber(monthnum:int) returns (res:bool)
  requires monthnum >= 1 && monthnum <= 12; // precondition: monthnum must be a valid month number between 1 and 12
  ensures 
    (monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11) ==> res == true  &&  // postcondition: if the month is April, June, September, or November, the result must be true
    (monthnum != 4 && monthnum != 6 && monthnum != 9 && monthnum != 11) ==> res == false; // postcondition: if the month is not one of the above, the result must be false
```