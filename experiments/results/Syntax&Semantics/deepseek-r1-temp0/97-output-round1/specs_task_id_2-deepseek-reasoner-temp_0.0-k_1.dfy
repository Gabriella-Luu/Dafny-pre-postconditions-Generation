```dafny
method sharedElements (arr1:array<int>, arr2:array<int>) returns (res: seq<int>)
  ensures forall i, j :: 0 <= i < j < |res| ==> res[i] != res[j]
  ensures forall elem :: elem in res <==> (elem in arr1[..] && elem in arr2[..])
{
  // Implementation not provided
}
```