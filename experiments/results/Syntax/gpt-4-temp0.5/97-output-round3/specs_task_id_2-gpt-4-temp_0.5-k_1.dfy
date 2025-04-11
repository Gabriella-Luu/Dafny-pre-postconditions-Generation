```dafny
method sharedElements (arr1: array<int>, arr2: array<int>) returns (res: seq<int>)
  requires arr1 != null && arr2 != null
  ensures forall i :: 0 <= i < |res| ==> (res[i] in arr1[..]) && (res[i] in arr2[..])
  ensures forall i :: 0 <= i < arr1.Length && (arr1[i] in arr2[..]) ==> (arr1[i] in res)
  ensures forall i :: 0 <= i < arr2.Length && (arr2[i] in arr1[..]) ==> (arr2[i] in res)
```