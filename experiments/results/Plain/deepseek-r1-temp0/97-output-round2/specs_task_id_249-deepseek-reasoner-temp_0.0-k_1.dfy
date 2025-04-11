```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null
  requires b != null
  ensures multiset(result) == multiset(a[..]) * multiset(b[..])
{
  // Implementation not shown
}
```