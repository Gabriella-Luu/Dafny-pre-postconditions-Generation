```dafny
method sharedElements(arr1: array<int>, arr2: array<int>) returns (res: seq<int>)
  requires arr1 != null && arr2 != null // Ensure arrays are not null
  requires arr1.Length > 0 && arr2.Length > 0 // Ensure arrays are not empty
  ensures forall elem :: elem in res ==> (elem in arr1[..] && elem in arr2[..]) // Ensure all elements in result are in both arr1 and arr2
  ensures forall i :: 0 <= i < arr1.Length && (arr1[i] in arr2[..]) ==> (arr1[i] in res) // Ensure if an element is in both arrays, it is in result
  ensures forall i :: 0 <= i < arr2.Length && (arr2[i] in arr1[..]) ==> (arr2[i] in res) // Ensure if an element is in both arrays, it is in result
  ensures |res| <= min(arr1.Length, arr2.Length) // Ensure the length of result is no greater than the smaller array
{
}
```