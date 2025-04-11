```dafny
method addPairwise(a: array<int>) returns (result: array<int>)
  requires a.Length >= 1
  ensures result.Length == a.Length - 1
  ensures (forall i :: 0 <= i < result.Length ==> result[i] == a[i] + a[i+1])
  ensures (forall j :: 0 <= j < a.Length ==> a[j] == old(a[j]))
{
  // Implementation not provided
}
```