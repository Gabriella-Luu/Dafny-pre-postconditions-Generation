```dafny
method noprofitNoloss(cost: int, sale: int) returns (res:bool)
    requires cost >= 0
    requires sale >= 0
    ensures res <==> (cost == sale)
{}
```