```dafny
method armstrongNumber(number:int) returns (res:bool)
    requires number >= 0  // The input number should be non-negative
    ensures res == (number == (number.ToString().ToList().Map(x => (x - '0').Pow(number.ToString().Length)).Sum())) // The output is true if and only if the number is an armstrong number
```