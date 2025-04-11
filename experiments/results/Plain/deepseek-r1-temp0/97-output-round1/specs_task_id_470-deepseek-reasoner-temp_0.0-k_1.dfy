```dafny
method addPairwise(a: array<int>) returns (result: array<int>)
  requires a != null
  ensures result != null
  ensures result.Length == (if a.Length < 2 then 0 else a.Length - 1)
  ensures forall i | 0 <= i < result.Length :: result[i] == a[i] + a[i+1]
{
  // Implementation goes here
}
```