```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  ensures multiset(result) == multiset(a[..]) * multiset(b[..])
{
  // Implementation not shown
}
```