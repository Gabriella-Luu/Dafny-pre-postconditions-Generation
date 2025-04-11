Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires arr != null // The array must not be null
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // The array must be sorted in non-decreasing order
  ensures 0 <= pos < arr.Length ==> arr[pos] == elem // If the position is valid, the element at that position must be `elem`
  ensures forall i :: pos < i < arr.Length ==> arr[i] != elem // All elements after `pos` must not be `elem`
  ensures pos == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != elem // If `pos` is -1, `elem` does not exist in the array
{
  // Implementation not provided
}
```

### Explanation of Preconditions and Postconditions:
1. **Preconditions (`requires`):**
   - `arr != null`: Ensures the input array is not null.
   - `forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]`: Ensures the array is sorted in non-decreasing order.

2. **Postconditions (`ensures`):**
   - `0 <= pos < arr.Length ==> arr[pos] == elem`: If the returned position `pos` is valid (within the array bounds), the element at that position must be `elem`.
   - `forall i :: pos < i < arr.Length ==> arr[i] != elem`: Ensures that all elements after `pos` are not equal to `elem`, confirming that `pos` is the last occurrence.
   - `pos == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != elem`: If `pos` is `-1`, it means `elem` does not exist in the array, and this condition ensures that no element in the array equals `elem`.

This specification ensures the method behaves correctly for all valid inputs and provides guarantees about the output.