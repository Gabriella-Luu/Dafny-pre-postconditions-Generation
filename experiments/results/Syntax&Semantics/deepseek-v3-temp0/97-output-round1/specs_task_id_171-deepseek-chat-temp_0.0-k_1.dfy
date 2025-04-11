```dafny
method perimeterPentagon(a: int) returns (res: int)
  requires a > 0
  ensures res == 5 * a
```
### Explanation:
- **Precondition (`requires a > 0`)**: The length of a side of a pentagon must be a positive integer. This ensures that the input is valid for geometric calculations.
- **Postcondition (`ensures res == 5 * a`)**: The perimeter of a regular pentagon is calculated as 5 times the length of one side. This ensures that the result is correct based on the input.

The method is designed to be simple and efficient, with minimal yet sufficient preconditions and postconditions to verify the correctness of the program.