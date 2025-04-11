```dafny
method lossAmount(cost:int, sale:int) returns (res:int)
  requires cost >= 0
  requires sale >= 0
  ensures (sale < cost ==> res == cost - sale)
  ensures (sale >= cost ==> res == 0)
```