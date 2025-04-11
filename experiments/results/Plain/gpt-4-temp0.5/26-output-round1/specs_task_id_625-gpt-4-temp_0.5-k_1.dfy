```dafny
method SwapFirstAndLast(a: array<int>)
    requires a != null && a.Length > 1
    modifies a
    ensures a.Length == old(a.Length) && a[0] == old(a[a.Length-1]) && a[a.Length-1] == old(a[0])
    ensures forall i :: 1 <= i < a.Length-1 ==> a[i] == old(a[i])
{
   // Method implementation goes here
}
```

This method has the following preconditions and postconditions:

- The precondition requires that the input array is not null and has more than one element. This is necessary because the task involves swapping the first and last elements of the array.

- The postcondition ensures that the length of the array remains the same after the method is called. It also ensures that the first element of the array after the method call is equal to the last element of the array before the method call, and vice versa. This verifies that the first and last elements have been swapped.

- The second part of the postcondition ensures that all other elements in the array (i.e., those at indices 1 through a.Length-2) remain the same after the method call. This verifies that only the first and last elements have been swapped, and no other elements have been modified.