```dafny
method diff(a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  requires forall i :: 0 <= i < |a| ==> a[i] in a
  requires forall j :: 0 <= j < |b| ==> b[j] in b
  ensures forall i :: 0 <= i < |diff| ==> (diff[i] in a && !(diff[i] in b))
  ensures forall i :: 0 <= i < |a| ==> (a[i] in diff || a[i] in b)
```