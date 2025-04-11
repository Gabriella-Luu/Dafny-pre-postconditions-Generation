```dafny
method lossAmount(cost:int, sale:int) returns (res:int)
  requires cost >= 0 && sale >= 0 // The cost and sale amount must be non-negative
  ensures (cost > sale ==> res == cost - sale) && (cost <= sale ==> res == 0) // If there is a loss (cost > sale), the result should be the difference. If there is no loss (cost <= sale), the result should be 0
{
  // Method implementation goes here
}
```