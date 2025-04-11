```dafny
method diff(a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  ensures |diff| <= |a|
  ensures forall i :: 0 <= i < |diff| ==> diff[i] in a && !(diff[i] in b)
  ensures forall x :: x in a && !(x in b) ==> x in diff
{
  // Implementation not provided
}
```