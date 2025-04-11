```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires arr != null // The array must be non-null
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // The array must be sorted in non-decreasing order
  ensures 0 <= index <= arr.Length // The returned index is within the bounds of the array or one past the end
  ensures index < arr.Length ==> arr[index] == target // If the index is within bounds, the element at that index is the target
  ensures forall i :: 0 <= i < index ==> arr[i] != target // All elements before the index are not equal to the target
  ensures index == arr.Length ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target // If the index is one past the end, the target is not in the array
{
  // Implementation not provided
}
```

### Explanation:
- **Preconditions (`requires`):**
  - `arr != null`: Ensures that the array is not null.
  - `forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]`: Ensures that the array is sorted in non-decreasing order.

- **Postconditions (`ensures`):**
  - `0 <= index <= arr.Length`: Ensures that the returned index is within the bounds of the array or one past the end (indicating the target is not in the array).
  - `index < arr.Length ==> arr[index] == target`: If the index is within bounds, the element at that index is the target.
  - `forall i :: 0 <= i < index ==> arr[i] != target`: All elements before the index are not equal to the target.
  - `index == arr.Length ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target`: If the index is one past the end, the target is not in the array.

These preconditions and postconditions ensure that the method correctly finds the first occurrence of the target in a sorted array or determines that the target is not present.