```dafny
method lossAmount(cost:int, sale:int) returns (res:int)
    requires cost >= 0 && sale >= 0
    ensures (cost > sale ==> res == cost - sale) && (cost <= sale ==> res == 0)
```