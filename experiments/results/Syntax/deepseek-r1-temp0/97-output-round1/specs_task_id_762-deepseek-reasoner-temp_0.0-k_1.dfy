```dafny
method checkMonthnumberNumber(monthnum:int) returns (res:bool)
  requires monthnum >= 1 && monthnum <= 12
  ensures res <==> (monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11)
{
  // Method implementation not provided
}
```