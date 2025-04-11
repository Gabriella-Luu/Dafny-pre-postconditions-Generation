```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null
  ensures |result| <= a.Length && |result| <= b.Length
  ensures forall x :: x in result ==> (exists i :: 0 <= i < a.Length && a[i] == x) && (exists j :: 0 <= j < b.Length && b[j] == x)
  ensures forall x :: (exists i :: 0 <= i < a.Length && a[i] == x) && (exists j :: 0 <= j < b.Length && b[j] == x) ==> x in result
{
  // Implementation not provided
}
```