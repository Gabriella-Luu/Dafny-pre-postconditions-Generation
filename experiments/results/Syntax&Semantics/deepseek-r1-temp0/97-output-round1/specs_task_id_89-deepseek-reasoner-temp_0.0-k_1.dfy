```dafny
method closestNum(n:int) returns (res:int)
  ensures res < n
  ensures forall m:int :: m < n ==> m <= res
{
  // Implementation not provided
}
```