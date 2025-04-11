```dafny
method addTuple(l: seq<(int, int)>, t: (int, int)) returns (r: seq<(int, int)>)
  ensures r == l + [t]
{
  // Implementation would append t to l and assign to r
}
```