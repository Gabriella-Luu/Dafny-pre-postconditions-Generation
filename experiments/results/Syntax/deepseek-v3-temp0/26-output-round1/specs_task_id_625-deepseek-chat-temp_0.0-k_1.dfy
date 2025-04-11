```dafny
method SwapFirstAndLast(a: array<int>)
    requires a.Length > 0
    ensures a.Length == old(a.Length)
    ensures a[0] == old(a[a.Length - 1])
    ensures a[a.Length - 1] == old(a[0])
    ensures forall i :: 0 < i < a.Length - 1 ==> a[i] == old(a[i])
```
This method signature includes the necessary preconditions and postconditions to ensure that the method correctly swaps the first and last elements of the array while leaving the rest of the elements unchanged. The `requires` clause ensures that the array is not empty, and the `ensures` clauses specify the expected state of the array after the method is executed.