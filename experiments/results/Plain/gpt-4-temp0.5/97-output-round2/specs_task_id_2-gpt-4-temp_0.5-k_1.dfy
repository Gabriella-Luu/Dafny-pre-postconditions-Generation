```dafny
method sharedElements(arr1: array<int>, arr2: array<int>) returns (res: seq<int>)
  requires arr1 != null && arr2 != null // Preconditions: Both arrays must not be null
  ensures forall i :: 0 <= i < |res| ==> res[i] in arr1[..] && res[i] in arr2[..] // Postconditions: Every element in the result sequence must be in both input arrays
  ensures forall i, j :: 0 <= i < j < |res| ==> res[i] != res[j] // Postconditions: There are no duplicate elements in the result sequence
{}
```