```dafny
method noprofitNoloss(cost: int, sale: int) returns (res: bool)
  requires cost >= 0 && sale >= 0
  ensures res == (cost == sale)
{
  // Implementation not provided
}
```