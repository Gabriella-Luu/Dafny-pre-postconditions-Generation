```dafny
method noprofitNoloss(cost: int, sale: int) returns (res:bool)
  requires cost >= 0 && sale >= 0 // The cost and sale amount should be non-negative
  ensures res == (cost == sale) // The result should be true if the cost and sale amount are equal (no profit no loss), false otherwise
{
  // Method implementation goes here
}
```