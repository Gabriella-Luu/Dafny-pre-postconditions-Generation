```dafny
method diff (a: seq<int>, b: seq<int>) returns (diff: seq<int>)
    requires forall i :: 0 <= i < |a| ==> a[i] in a
    requires forall i :: 0 <= i < |b| ==> b[i] in b
    ensures forall i :: 0 <= i < |diff| ==> diff[i] in a && !(diff[i] in b)
    ensures forall i :: 0 <= i < |a| ==> (a[i] in b) || (a[i] in diff)
```