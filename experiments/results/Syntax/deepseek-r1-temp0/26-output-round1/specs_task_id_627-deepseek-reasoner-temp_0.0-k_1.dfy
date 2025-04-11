```dafny
method SmallestMissingNumber(s: seq<int>) returns (v: int)
  requires forall i, j :: 0 <= i < j < |s| ==> s[i] <= s[j]
  requires forall x :: x in s ==> x >= 0
  ensures v >= 0
  ensures v !in s
  ensures forall x :: 0 <= x < v ==> x in s
```