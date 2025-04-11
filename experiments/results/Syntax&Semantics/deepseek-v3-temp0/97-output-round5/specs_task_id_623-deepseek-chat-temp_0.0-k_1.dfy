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
- **Preconditions (`requires`)**:
  - `n >= 0`: The exponent `n` must be non-negative because raising a number to a negative power is not handled in this method. This is a minimal and essential assumption.

- **Postconditions (`ensures`)**:
  - `|res| == |list|`: The length of the result sequence `res` must be equal to the length of the input sequence `list`. This ensures that the method processes every element in the input sequence.
  - `forall i :: 0 <= i < |list| ==> res[i] == Power(list[i], n)`: Each element in the result sequence `res` must be equal to the corresponding element in the input sequence `list` raised to the power of `n`. This ensures the correctness of the computation.

The postconditions are concise and directly relate to the task of computing the n-th power of each element in the list. The method does not need to handle duplicates or filter elements, so no additional checks are required.