```dafny
method armstrongNumber(number:int) returns (res:bool)
    requires number >= 0
    ensures (res <==> var temp = number; var sum = 0; while(temp != 0) { var remainder = temp % 10; sum = sum + Power(remainder, |number.ToString()|); temp = temp / 10; }; sum == number)
```