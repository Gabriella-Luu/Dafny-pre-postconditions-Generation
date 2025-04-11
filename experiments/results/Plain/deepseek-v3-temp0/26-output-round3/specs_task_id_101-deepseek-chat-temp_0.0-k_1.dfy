Here is the Dafny method with preconditions and postconditions designed based on the task description:

```dafny
method KthElement(arr: array<int>, k: int) returns (result: int)
  requires arr != null // The array must not be null
  requires 1 <= k <= arr.Length // k must be a valid 1-based index within the array bounds
  ensures result == arr[k-1] // The result must be the k-th element in the array (1-based indexing)
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `arr != null`: Ensures the array is not null to avoid null reference errors.
   - `1 <= k <= arr.Length`: Ensures `k` is a valid 1-based index within the bounds of the array.

2. **Postcondition (`ensures`):**
   - `result == arr[k-1]`: Ensures the returned value is the k-th element in the array, using 1-based indexing. Since Dafny uses 0-based indexing for arrays, `k-1` is used to access the correct element.