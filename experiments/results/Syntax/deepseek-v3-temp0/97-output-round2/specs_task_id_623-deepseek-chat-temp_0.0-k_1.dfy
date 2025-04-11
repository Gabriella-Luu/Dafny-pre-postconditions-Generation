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
- **Precondition (`requires n >= 0`)**: Ensures that the exponent `n` is non-negative, as negative exponents would require handling fractions, which complicates the problem and is not specified in the task.
- **Postcondition (`ensures |res| == |list|`)**: Ensures that the resulting sequence `res` has the same length as the input sequence `list`.
- **Postcondition (`ensures forall i :: 0 <= i < |list| ==> res[i] == Power(list[i], n)`)**: Ensures that each element in the resulting sequence `res` is the `n`-th power of the corresponding element in the input sequence `list`. The `Power` function is assumed to be implemented elsewhere to compute the power of an integer.

This setup ensures that the method is correctly specified and adheres to the given constraints.