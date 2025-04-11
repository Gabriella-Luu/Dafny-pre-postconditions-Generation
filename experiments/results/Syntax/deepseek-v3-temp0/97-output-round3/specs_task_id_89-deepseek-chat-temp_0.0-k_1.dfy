```dafny
method closestNum(n: int) returns (res: int)
  requires n > 0
  ensures res < n
  ensures forall i :: 0 <= i < n ==> (i < n && i > res ==> i >= res)
{
  // Method implementation goes here
}
```