```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null
  ensures forall x :: x in result ==> (exists i :: 0 <= i < a.Length && a[i] == x) && (exists j :: 0 <= j < b.Length && b[j] == x)
  ensures forall i :: 0 <= i < a.Length && (exists j :: 0 <= j < b.Length && a[i] == b[j]) ==> a[i] in result
  ensures forall i,j :: 0 <= i < j < |result| ==> result[i] != result[j]
{
  // Implementation not provided
}
```