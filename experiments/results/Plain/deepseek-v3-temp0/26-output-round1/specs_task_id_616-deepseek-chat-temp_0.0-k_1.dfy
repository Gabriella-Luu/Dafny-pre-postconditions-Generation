Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method ElementWiseModulo(a: array<int>, b: array<int>) returns (result: array<int>)
  requires a != null && b != null // Both input arrays must be non-null
  requires a.Length == b.Length   // Both arrays must have the same length
  requires forall i :: 0 <= i < b.Length ==> b[i] != 0 // No element in b can be zero (to avoid division by zero)
  ensures result != null          // The result array must be non-null
  ensures result.Length == a.Length // The result array must have the same length as the input arrays
  ensures forall i :: 0 <= i < a.Length ==> result[i] == a[i] % b[i] // Each element in result is the modulo of corresponding elements in a and b
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `a != null && b != null`: Ensures that both input arrays are non-null.
   - `a.Length == b.Length`: Ensures that the two arrays have the same length.
   - `forall i :: 0 <= i < b.Length ==> b[i] != 0`: Ensures that no element in `b` is zero to avoid division by zero errors.

2. **Postconditions (`ensures`):**
   - `result != null`: Ensures that the returned array is non-null.
   - `result.Length == a.Length`: Ensures that the result array has the same length as the input arrays.
   - `forall i :: 0 <= i < a.Length ==> result[i] == a[i] % b[i]`: Ensures that each element in the result array is the modulo of the corresponding elements in `a` and `b`.