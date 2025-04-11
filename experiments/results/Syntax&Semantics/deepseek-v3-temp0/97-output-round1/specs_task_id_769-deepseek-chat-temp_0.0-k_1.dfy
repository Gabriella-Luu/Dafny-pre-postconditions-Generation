```dafny
method diff(a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  ensures forall x :: x in diff ==> (x in a && !(x in b))
  ensures forall x :: (x in a && !(x in b)) ==> x in diff
  ensures forall i, j :: 0 <= i < j < |diff| ==> diff[i] != diff[j]
{
  // Implementation not provided
}
```