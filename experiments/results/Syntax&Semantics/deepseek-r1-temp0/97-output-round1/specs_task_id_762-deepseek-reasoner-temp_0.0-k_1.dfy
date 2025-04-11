```dafny
method checkMonthnumberNumber(monthnum:int) returns (res:bool)
  requires 1 <= monthnum <= 12
  ensures res <==> (monthnum in {4,6,9,11})
```