Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method noprofitNoloss(cost: int, sale: int) returns (res: bool)
  // Preconditions: cost and sale must be non-negative integers
  requires cost >= 0
  requires sale >= 0
  // Postcondition: res is true if and only if cost equals sale (no profit, no loss)
  ensures res == (cost == sale)
{
  // Implementation is omitted
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - `cost >= 0`: Ensures the cost is a non-negative integer.
   - `sale >= 0`: Ensures the sale amount is a non-negative integer.

2. **Postcondition (`ensures`)**:
   - `res == (cost == sale)`: Ensures the result `res` is `true` if and only if the cost equals the sale amount, indicating no profit and no loss. Otherwise, `res` is `false`.

This design ensures the method is verified for correctness based on the given requirements.