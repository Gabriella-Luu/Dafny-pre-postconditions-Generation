```dafny
method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0 // An Armstrong number cannot be negative
  ensures (
    res == true <==> 
    var temp := number;
    var sum := 0;
    var remainder := 0;
    var digits := 0;
    while(temp != 0) {
      temp := temp / 10;
      digits := digits + 1;
    }
    temp := number;
    while(temp != 0) {
      remainder := temp % 10;
      sum := sum + (remainder ** digits);
      temp := temp / 10;
    }
    sum == number
  )
```