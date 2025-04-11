```dafny
method maxLength(list1: seq<seq<int>>) returns (max: seq<int>)
  requires |list1| > 0
  ensures max in list1
  ensures forall s | s in list1 :: |s| <= |max|
  ensures exists i | 0 <= i < |list1| :: list1[i] == max && (forall j | 0 <= j < i :: |list1[j]| < |max|)
{
  // Implementation not provided
}
```