```dafny
method sharedElements(arr1: array<int>, arr2: array<int>) returns (res: seq<int>)
  requires arr1 != null && arr2 != null
  ensures forall elem :: elem in res ==> (elem in arr1[..] && elem in arr2[..])
  ensures forall elem :: (elem in arr1[..] && elem in arr2[..]) ==> elem in res
  ensures forall i, j :: 0 <= i < j < |res| ==> res[i] != res[j]
{
  // Implementation not provided
}
```