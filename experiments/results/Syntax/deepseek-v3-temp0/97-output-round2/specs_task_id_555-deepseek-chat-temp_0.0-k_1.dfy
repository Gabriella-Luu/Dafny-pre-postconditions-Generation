```dafny
method difference(n: int) returns (diff: int)
  requires n >= 0
  ensures diff == (sumOfCubes(n) - sumOfNumbers(n))
  ensures diff >= 0
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires n >= 0`)**: The method requires that `n` is a non-negative integer since we are dealing with the first `n` natural numbers.
- **Postcondition (`ensures diff == (sumOfCubes(n) - sumOfNumbers(n))`)**: The method ensures that the returned `diff` is equal to the difference between the sum of cubes of the first `n` natural numbers and the sum of the first `n` natural numbers.
- **Postcondition (`ensures diff >= 0`)**: The method ensures that the difference is non-negative, which is a logical consequence of the sum of cubes being greater than or equal to the sum of numbers for natural numbers.

Note: The functions `sumOfCubes` and `sumOfNumbers` are assumed to be defined elsewhere in the program to compute the sum of cubes and the sum of the first `n` natural numbers, respectively.