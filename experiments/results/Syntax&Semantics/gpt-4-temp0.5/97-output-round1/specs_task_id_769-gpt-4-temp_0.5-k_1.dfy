```dafny
method diff (a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  requires forall i :: 0 <= i < |a| ==> a[i] in a // all elements of a are in a
  requires forall j :: 0 <= j < |b| ==> b[j] in b // all elements of b are in b
  ensures forall i :: 0 <= i < |a| && !(a[i] in b) ==> a[i] in diff // all elements in a not in b are in diff
  ensures forall i :: 0 <= i < |diff| ==> diff[i] in a && !(diff[i] in b) // all elements in diff are in a and not in b
  ensures forall i,j :: 0 <= i < j < |diff| ==> diff[i] != diff[j] // there are no duplicates in diff
```