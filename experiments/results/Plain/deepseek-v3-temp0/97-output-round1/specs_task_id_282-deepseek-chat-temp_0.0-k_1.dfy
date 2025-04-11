Here is the Dafny method with preconditions and postconditions designed based on the task description:

```dafny
method subtractList(a1: array<int>, a2: array<int>) returns (res: array<int>)
  requires a1 != null && a2 != null // Both input arrays must be non-null
  requires a1.Length == a2.Length   // Both arrays must have the same length
  ensures res != null               // The result array must be non-null
  ensures res.Length == a1.Length   // The result array must have the same length as the input arrays
  ensures forall i :: 0 <= i < res.Length ==> res[i] == a1[i] - a2[i] // Each element in the result array is the difference of corresponding elements in the input arrays
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`):**
   - `a1 != null && a2 != null`: Ensures that both input arrays are non-null.
   - `a1.Length == a2.Length`: Ensures that the two arrays have the same length, which is necessary for element-wise subtraction.

2. **Postconditions (`ensures`):**
   - `res != null`: Ensures that the result array is non-null.
   - `res.Length == a1.Length`: Ensures that the result array has the same length as the input arrays.
   - `forall i :: 0 <= i < res.Length ==> res[i] == a1[i] - a2[i]`: Ensures that each element in the result array is the difference of the corresponding elements in the input arrays.