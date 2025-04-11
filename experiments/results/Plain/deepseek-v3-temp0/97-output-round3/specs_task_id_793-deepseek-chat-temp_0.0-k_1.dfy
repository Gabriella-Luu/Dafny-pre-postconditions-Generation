Here is the Dafny method with preconditions and postconditions designed based on the task description:

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

### Explanation of Preconditions and Postconditions:
1. **Preconditions (`requires`):**
   - `arr != null`: Ensures the input array is not null.
   - `forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]`: Ensures the array is sorted in non-decreasing order.

2. **Postconditions (`ensures`):**
   - `0 <= pos < arr.Length ==> arr[pos] == elem`: If the returned position is valid (i.e., within the array bounds), the element at that position must be the given element.
   - `forall i :: pos < i < arr.Length ==> arr[i] != elem`: Ensures that all elements after the returned position are not equal to the given element, confirming that `pos` is indeed the last occurrence.
   - `pos == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != elem`: If the returned position is `-1`, it means the element does not exist in the array, and this condition ensures that no element in the array matches the given element.

This design ensures the correctness of the method in finding the last position of the given element in a sorted array.