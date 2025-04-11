```dafny
method nthNums(list: seq<int>, n: int) returns (res: seq<int>)
  requires n >= 0
  ensures |res| == |list|
  ensures forall i :: 0 <= i < |list| ==> res[i] == Power(list[i], n)
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires n >= 0`)**: The exponent `n` must be non-negative because raising a number to a negative power is not handled in this method.
- **Postcondition (`ensures |res| == |list|`)**: The length of the result sequence `res` must be equal to the length of the input sequence `list`.
- **Postcondition (`ensures forall i :: 0 <= i < |list| ==> res[i] == Power(list[i], n)`)**: Each element in the result sequence `res` must be the `n`-th power of the corresponding element in the input sequence `list`. The `Power` function is assumed to be defined elsewhere to compute the power of an integer.

This design ensures that the method correctly computes the `n`-th power of each element in the input sequence and returns a sequence of the same length with the computed values.