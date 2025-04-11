```dafny
method addLists(s: seq<int>, a: array<int>) returns (r: seq<int>)
  requires a != null  // Array must be valid
  ensures |r| == |s| + a.Length  // Result length matches combined input sizes
  ensures forall i :: 0 <= i < |s| ==> r[i] == s[i]  // Preserve original sequence elements
  ensures forall j :: 0 <= j < a.Length ==> r[|s| + j] == a[j]  // Append array elements
  ensures forall k :: 0 <= k < a.Length ==> a[k] == old(a[k])  // Array remains unmodified
{
  // Method implementation would go here
}
```