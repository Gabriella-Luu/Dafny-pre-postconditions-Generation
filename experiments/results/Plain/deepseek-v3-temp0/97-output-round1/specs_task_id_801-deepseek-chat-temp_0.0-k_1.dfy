Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method isThreeEqual(a: int, b: int, c: int) returns (res: int)
  // Preconditions: None, as the method works for any integer inputs.
  // Postconditions: The result `res` should correctly count the number of equal numbers among the three inputs.
  ensures res == 0 || res == 2 || res == 3
  ensures res == 0 <==> a != b && a != c && b != c
  ensures res == 2 <==> (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
  ensures res == 3 <==> a == b && b == c
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions**: There are no preconditions because the method should work for any integer inputs.
2. **Postconditions**:
   - The result `res` must be either `0`, `2`, or `3`, as these are the only possible counts of equal numbers among three integers.
   - If `res == 0`, it means all three numbers are distinct (`a != b && a != c && b != c`).
   - If `res == 2`, it means exactly two of the numbers are equal, and the third is different.
   - If `res == 3`, it means all three numbers are equal (`a == b && b == c`).
   
These postconditions ensure the correctness of the method by explicitly defining the expected behavior for all possible input combinations.