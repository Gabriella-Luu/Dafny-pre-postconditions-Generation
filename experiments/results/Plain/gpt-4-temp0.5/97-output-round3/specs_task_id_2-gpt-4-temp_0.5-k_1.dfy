```dafny
method sharedElements(arr1: array<int>, arr2: array<int>) returns (res: seq<int>)
  requires arr1 != null && arr2 != null  // Ensure the input arrays are not null
  ensures forall i :: 0 <= i < |res| ==> res[i] in arr1[..] && res[i] in arr2[..] // Every element in the result is in both input arrays
  ensures forall i, j :: 0 <= i < |arr1| && 0 <= j < |arr2| && arr1[i] == arr2[j] ==> arr1[i] in res // If an element is in both input arrays, it is in the result
{
  // Method implementation goes here
}
```