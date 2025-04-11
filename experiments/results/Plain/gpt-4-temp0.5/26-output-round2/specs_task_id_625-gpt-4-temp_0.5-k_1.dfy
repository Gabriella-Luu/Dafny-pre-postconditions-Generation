```dafny
method SwapFirstAndLast(a: array<int>)
    requires a != null && a.Length > 0
    ensures a.Length == old(a.Length) && a[0] == old(a[a.Length-1]) && a[a.Length-1] == old(a[0])
    ensures forall k :: 1 <= k < a.Length-1 ==> a[k] == old(a[k])
{
    // Method implementation goes here
}
```
This method requires that the input array is not null and has at least one element. It ensures that the length of the array remains the same after the operation, the first element of the array after the operation is the last element before the operation, and the last element of the array after the operation is the first element before the operation. It also ensures that all elements other than the first and last remain unchanged.