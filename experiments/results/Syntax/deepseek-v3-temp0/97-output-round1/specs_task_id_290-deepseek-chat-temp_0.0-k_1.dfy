```dafny
method maxLength(list1: seq<seq<int>>) returns (max: seq<int>)
  requires |list1| > 0
  ensures (forall i :: 0 <= i < |list1| ==> |list1[i]| <= |max|)
  ensures (exists j :: 0 <= j < |list1| && |list1[j]| == |max|)
{
  // Implementation not provided
}
```