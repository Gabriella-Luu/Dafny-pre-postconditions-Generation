Here is the Dafny method with preconditions and postconditions for the task of interchanging the first and last elements in a given integer array:

```dafny
method SwapFirstAndLast(a: array<int>)
  requires a != null // The array must be non-null
  requires a.Length > 0 // The array must have at least one element
  modifies a // The method modifies the array
  ensures a[0] == old(a[a.Length - 1]) // The first element is now the last element of the original array
  ensures a[a.Length - 1] == old(a[0]) // The last element is now the first element of the original array
  ensures forall i :: 0 <= i < a.Length && i != 0 && i != a.Length - 1 ==> a[i] == old(a[i]) // All other elements remain unchanged
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - `a != null`: Ensures the array is not null.
   - `a.Length > 0`: Ensures the array has at least one element to swap.

2. **Postconditions (`ensures`)**:
   - `a[0] == old(a[a.Length - 1])`: Ensures the first element is now the last element of the original array.
   - `a[a.Length - 1] == old(a[0])`: Ensures the last element is now the first element of the original array.
   - `forall i :: 0 <= i < a.Length && i != 0 && i != a.Length - 1 ==> a[i] == old(a[i])`: Ensures all other elements remain unchanged.

This specification ensures the method behaves correctly according to the task description.