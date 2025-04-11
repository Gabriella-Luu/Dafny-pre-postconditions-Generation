```dafny
method checkMonthNumber(monthnum:int) returns (res:bool)
   requires monthnum >= 1 && monthnum <= 12; // The month number must be between 1 and 12
   ensures (
       res == true && (monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11) || // The month number is one of the months with 30 days
       res == false && !(monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11) // The month number is not one of the months with 30 days
   );
```