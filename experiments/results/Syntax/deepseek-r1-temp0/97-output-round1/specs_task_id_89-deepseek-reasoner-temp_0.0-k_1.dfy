```dafny
method closestNum(n:int) returns (res:int)
  ensures res < n
  ensures forall m :: m < n ==> m <= res
{
  // Implementation not shown
}
```