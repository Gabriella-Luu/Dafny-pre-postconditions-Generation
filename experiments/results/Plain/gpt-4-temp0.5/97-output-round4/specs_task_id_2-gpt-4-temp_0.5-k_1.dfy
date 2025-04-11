```dafny
method sharedElements (arr1:array<int>, arr2:array<int>) returns (res: seq<int>)
  requires arr1 != null && arr2 != null // Input arrays should not be null
  requires arr1.Length > 0 && arr2.Length > 0 // Input arrays should not be empty
  ensures forall i :: 0 <= i < res.Length ==> res[i] in arr1 && res[i] in arr2 // All elements in the result sequence are present in both input arrays
  ensures forall i, j :: 0 <= i < arr1.Length && 0 <= j < arr2.Length && arr1[i] == arr2[j] ==> arr1[i] in res // If an element is present in both input arrays, it is present in the result sequence
  ensures res.Length <= arr1.Length && res.Length <= arr2.Length // The length of the result sequence is not greater than the lengths of the input arrays
{
  // Method implementation goes here
}
```