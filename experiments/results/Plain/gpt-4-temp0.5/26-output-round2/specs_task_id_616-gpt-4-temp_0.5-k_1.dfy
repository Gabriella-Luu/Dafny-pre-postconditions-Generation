Here is the Dafny method with the required preconditions and postconditions:

```dafny
method ElementWiseModulo(a: array<int>, b: array<int>) returns (result: array<int>)
  requires a != null && b != null // Both arrays must not be null
  requires a.Length == b.Length // Both arrays must have the same length
  requires forall i :: 0 <= i < b.Length ==> b[i] != 0 // No element in b can be zero to avoid division by zero
  ensures result != null // The result array must not be null
  ensures result.Length == a.Length // The result array must have the same length as the input arrays
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[i] % b[i] // Each element in the result array must be the modulo of the corresponding elements in the input arrays
{
  // Method implementation goes here
}
```

The preconditions ensure that the input arrays are not null, have the same length, and that no element in the second array is zero (to avoid division by zero). The postconditions ensure that the result array is not null, has the same length as the input arrays, and that each element in the result array is the modulo of the corresponding elements in the input arrays.