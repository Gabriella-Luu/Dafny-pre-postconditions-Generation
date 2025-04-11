```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires arr != null && arr.Length > 0 // The array cannot be null and must have at least one element
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // The array must be sorted in non-decreasing order
  ensures 0 <= pos < arr.Length && arr[pos] == elem && (pos == arr.Length - 1 || arr[pos + 1] > elem) // The returned position is valid, contains the given element, and is the last occurrence of the element
  ensures pos == -1 <==> (forall i :: 0 <= i < arr.Length ==> arr[i] != elem) // If the element is not found, return -1
{
  // Method implementation here
}
```