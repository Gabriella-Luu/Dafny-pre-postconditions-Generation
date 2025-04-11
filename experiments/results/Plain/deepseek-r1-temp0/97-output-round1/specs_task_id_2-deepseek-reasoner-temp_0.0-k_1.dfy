```dafny
method sharedElements (arr1:array<int>, arr2:array<int>) returns (res: seq<int>)
   requires arr1 != null
   requires arr2 != null
   ensures forall x :: x in res ==> x in arr1[..] && x in arr2[..]
   ensures forall x :: x in arr1[..] && x in arr2[..] ==> x in res
   ensures forall i, j :: 0 <= i < j < |res| ==> res[i] != res[j]
{
   // Implementation goes here
}
```