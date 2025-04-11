```dafny
method sharedElements(arr1: array<int>, arr2: array<int>) returns (res: seq<int>)
  ensures forall x :: x in res ==> x in arr1[..] && x in arr2[..]
  ensures forall x :: x in arr1[..] && x in arr2[..] ==> x in res
{
  // Implementation not provided
}
```