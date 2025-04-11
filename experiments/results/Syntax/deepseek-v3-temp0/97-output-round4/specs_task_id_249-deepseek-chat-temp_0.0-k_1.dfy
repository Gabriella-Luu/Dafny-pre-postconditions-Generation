```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null
  ensures |result| <= |a| && |result| <= |b|
  ensures forall x :: x in result ==> (x in a[..] && x in b[..])
  ensures forall x :: x in a[..] && x in b[..] ==> x in result
{
  // Implementation not provided
}
```