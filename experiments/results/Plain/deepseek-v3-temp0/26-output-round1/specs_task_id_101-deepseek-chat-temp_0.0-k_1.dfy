Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
  // Preconditions
  requires arr != null
  requires 1 <= k <= arr.Length
  // Postconditions
  ensures result == arr[k - 1]
  ensures forall i :: 0 <= i < arr.Length ==> arr[i] == old(arr[i])
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `arr != null`: Ensures the input array is not null.
   - `1 <= k <= arr.Length`: Ensures `k` is a valid 1-based index within the bounds of the array.

2. **Postconditions (`ensures`):**
   - `result == arr[k - 1]`: Ensures the returned value is the `k`-th element in the array (using 1-based indexing).
   - `forall i :: 0 <= i < arr.Length ==> arr[i] == old(arr[i])`: Ensures the array is not modified by the method (the `old` keyword refers to the state of the array before the method was called).