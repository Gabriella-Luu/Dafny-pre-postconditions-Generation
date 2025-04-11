```dafny
method diff (a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  ensures forall x :: x in diff ==> x in a && x !in b
  ensures forall x :: x in a && x !in b ==> x in diff
  ensures forall i: int, j: int :: 0 <= i < j < |diff| ==> (
    exists k: int, l: int :: 0 <= k < l < |a| && a[k] == diff[i] && a[l] == diff[j]
  )
{
  // Implementation not shown
}
```