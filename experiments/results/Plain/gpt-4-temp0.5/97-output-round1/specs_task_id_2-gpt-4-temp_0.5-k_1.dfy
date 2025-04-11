```dafny
method sharedElements (arr1:array<int>, arr2:array<int>) returns (res: seq<int>)
  requires arr1 != null && arr2 != null // Preconditions: Both input arrays should not be null
  ensures forall i :: 0 <= i < |res| ==> res[i] in arr1[..] && res[i] in arr2[..] // Postconditions: All elements in the result sequence must be in both input arrays
  ensures forall i, j :: 0 <= i < |arr1| && 0 <= j < |arr2| && arr1[i] == arr2[j] ==> arr1[i] in res // Any common elements in both input arrays must be in the result sequence
{
  // Method body
}
```