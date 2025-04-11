```dafny
method maxLength(list1: seq<seq<int>>) returns (max: seq<int>)
  requires |list1| > 0
  ensures max in list1
  ensures forall s :: s in list1 ==> |s| <= |max|
  ensures forall s :: s in list1 && |s| == |max| ==> s == max
{
  // Implementation not provided
}
```