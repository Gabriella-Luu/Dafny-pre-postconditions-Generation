```dafny
method diff(a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  requires forall i :: 0 <= i < |a| ==> (exists j :: 0 <= j < |b| && a[i] == b[j]) ==> !(a[i] in diff)
  ensures forall i :: 0 <= i < |diff| ==> (exists j :: 0 <= j < |a| && diff[i] == a[j]) && !(exists k :: 0 <= k < |b| && diff[i] == b[k])
  ensures |diff| <= |a|
```