```dafny
method armstrongNumber(number: int) returns (res: bool)
  requires number >= 0
  ensures res == (number == (if number == 0 then 0 else
    (var sum := 0;
     var n := number;
     var digits := 0;
     while n != 0
       invariant sum >= 0 && n >= 0 && digits >= 0;
       invariant sum == (if n == 0 then 0 else
         (var temp := n;
          var count := 0;
          while temp != 0
            invariant temp >= 0 && count >= 0;
            decreases temp;
          {
            temp := temp / 10;
            count := count + 1;
          }
          sum + (n % 10) * Power(n % 10, count - 1));
       decreases n;
     {
       n := n / 10;
       digits := digits + 1;
     }
     sum))
{
  // Implementation goes here
}
```