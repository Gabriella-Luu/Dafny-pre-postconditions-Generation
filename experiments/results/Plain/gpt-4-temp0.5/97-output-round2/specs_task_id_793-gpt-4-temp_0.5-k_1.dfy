```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires arr != null && arr.Length > 0; // The array should not be null and should have at least one element
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]; // The array should be sorted in non-decreasing order
  ensures 0 <= pos < arr.Length ==> arr[pos] == elem; // If the element is found, it should be at the returned position
  ensures pos == -1 <==> (forall i :: 0 <= i < arr.Length ==> arr[i] != elem); // If the element is not found, -1 is returned
  ensures forall i :: pos < i < arr.Length ==> arr[i] != elem; // There are no elements equal to the given element after the returned position
{
  // Method implementation goes here
}
```