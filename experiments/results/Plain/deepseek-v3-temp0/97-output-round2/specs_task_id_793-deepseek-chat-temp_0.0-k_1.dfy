Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires arr != null // The array must not be null
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // The array must be sorted in non-decreasing order
  ensures 0 <= pos < arr.Length ==> arr[pos] == elem // If the position is valid, the element at that position must be the given element
  ensures forall i :: pos < i < arr.Length ==> arr[i] != elem // All elements after the returned position must not be the given element
  ensures pos == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != elem // If the position is -1, the element does not exist in the array
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `arr != null`: Ensures the array is not null.
   - `forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]`: Ensures the array is sorted in non-decreasing order.

2. **Postconditions (`ensures`):**
   - `0 <= pos < arr.Length ==> arr[pos] == elem`: If the returned position is valid (within the array bounds), the element at that position must be the given element.
   - `forall i :: pos < i < arr.Length ==> arr[i] != elem`: Ensures that all elements after the returned position are not equal to the given element, confirming it is the last occurrence.
   - `pos == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != elem`: If the position is `-1`, it means the element does not exist in the array.

This specification ensures the method behaves correctly for all valid inputs and provides guarantees about the output.