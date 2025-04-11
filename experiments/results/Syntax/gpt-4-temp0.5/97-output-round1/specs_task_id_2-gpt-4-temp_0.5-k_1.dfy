```dafny
method sharedElements (arr1:array<int>, arr2:array<int>) 
    requires arr1 != null && arr2 != null
    returns (res: seq<int>)
    ensures forall i :: 0 <= i < |res| ==> (res[i] in arr1[..]) && (res[i] in arr2[..])
    ensures forall x :: (x in arr1[..]) && (x in arr2[..]) ==> x in res
```