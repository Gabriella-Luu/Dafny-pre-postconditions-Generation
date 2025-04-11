```dafny
method checkMonthnumbNumber (m:int) returns (res:bool)
  requires 1 <= m <= 12
  ensures res <==> m in {1,3,5,7,8,10,12}
```