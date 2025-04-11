```dafny
method checkMonthNumber(monthnum:int) returns (res:bool)
    requires monthnum >= 1 && monthnum <= 12; // precondition: monthnum is between 1 and 12
    ensures (res == true && (monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11)) || 
            (res == false && !(monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11)); 
    // postcondition: res is true if the monthnum represents a month with 30 days, otherwise false
```