```dafny
method addLists(s: seq<int>, a: array<int>) returns (r: seq<int>)
  requires a != null  // Essential assumption
  ensures |r| == |s| + a.Length  // Length check
  ensures forall i :: 0 <= i < |s| ==> r[i] == s[i]  // All elements in s are in the beginning of r
  ensures forall j :: 0 <= j < a.Length ==> r[j + |s|] == a[j]  // All elements in a are in the end of r
```