```dafny
method noprofitNoloss(cost: int, sale: int) returns (res:bool)
   // Preconditions: cost and sale prices must be non-negative
   requires cost >= 0
   requires sale >= 0
   // Postcondition: Result is true if and only if sale price equals cost price
   ensures res == (cost == sale)
{
   // Implementation not shown
}
```