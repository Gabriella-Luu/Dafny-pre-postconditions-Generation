```dafny
method armstrongNumber(number:int) returns (res:bool)
    requires number >= 0
    ensures res == (
        var sum = 0;
        var temp = number;
        var length = number.ToString().Length;
        while(temp != 0) {
            var remainder = temp % 10;
            sum = sum + Power(remainder, length);
            temp = temp / 10;
        }
        sum == number
    );
```