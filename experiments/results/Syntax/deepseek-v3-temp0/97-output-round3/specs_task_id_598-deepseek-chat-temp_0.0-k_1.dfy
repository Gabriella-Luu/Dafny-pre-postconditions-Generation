```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res == (number == (if number == 0 then 0 else
    (var sum := 0;
     var n := number;
     while n > 0
       invariant sum >= 0 && n >= 0
       decreases n
     {
       var digit := n % 10;
       sum := sum + (digit * digit * digit);
       n := n / 10;
     }
     sum)))
{
  // Implementation not provided
}
```