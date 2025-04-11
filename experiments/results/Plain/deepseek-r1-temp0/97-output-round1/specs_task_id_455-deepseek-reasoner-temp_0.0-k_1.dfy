```dafny
method checkMonthnumbNumber (m:int) returns (res:bool)
   requires 1 <= m <= 12  // Valid month numbers precondition
   ensures res <==> (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12)  // 31-day month check postcondition
```