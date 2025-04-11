Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires arr != null // The array must not be null
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // The array must be sorted in non-decreasing order
  ensures 0 <= index <= arr.Length // The returned index is within valid bounds
  ensures index < arr.Length ==> arr[index] == target // If the index is within bounds, the element at that index equals the target
  ensures index == arr.Length ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target // If the index is out of bounds, the target is not in the array
  ensures forall i :: 0 <= i < index ==> arr[i] != target // All elements before the index are not equal to the target
{
  // Implementation not provided
}
```

### Explanation of Preconditions and Postconditions:
1. **Preconditions (`requires`):**
   - `arr != null`: Ensures the input array is not null.
   - `forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]`: Ensures the array is sorted in non-decreasing order.

2. **Postconditions (`ensures`):**
   - `0 <= index <= arr.Length`: Ensures the returned index is within valid bounds (inclusive of `arr.Length` to indicate the target is not found).
   - `index < arr.Length ==> arr[index] == target`: If the index is within bounds, the element at that index must equal the target.
   - `index == arr.Length ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target`: If the index is out of bounds, the target is not present in the array.
   - `forall i :: 0 <= i < index ==> arr[i] != target`: Ensures that all elements before the returned index are not equal to the target, guaranteeing it is the first occurrence.

This specification ensures the method behaves correctly for all valid inputs and outputs.