Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
  requires arr != null // The array must not be null
  requires 1 <= k <= arr.Length // k must be a valid 1-based index within the array bounds
  ensures result == arr[k-1] // The result is the k-th element in the array (1-based indexing)
  ensures forall i :: 0 <= i < arr.Length ==> arr[i] == old(arr[i]) // The array remains unchanged
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `arr != null`: Ensures the array is not null.
   - `1 <= k <= arr.Length`: Ensures `k` is a valid 1-based index within the bounds of the array.

2. **Postconditions (`ensures`):**
   - `result == arr[k-1]`: Ensures the result is the k-th element in the array (using 1-based indexing).
   - `forall i :: 0 <= i < arr.Length ==> arr[i] == old(arr[i])`: Ensures the array remains unchanged after the method execution. The `old` keyword refers to the state of the array before the method was called.