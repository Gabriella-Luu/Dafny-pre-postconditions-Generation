```dafny
method checkMonthNumber(monthnum:int) returns (res:bool)
    requires monthnum >= 1 && monthnum <= 12
    ensures ((monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11) ==> res) && 
    (!(monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11) ==> !res)
```