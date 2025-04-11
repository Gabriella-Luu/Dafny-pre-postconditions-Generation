```dafny
method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0 // number must be a non-negative integer
  ensures res == true ==> var temp = number; var sum = 0; while temp > 0 { var remainder = temp % 10; sum = sum + remainder*remainder*remainder; temp = temp / 10; }; sum == number // if res is true, then the number is an Armstrong number
  ensures res == false ==> var temp = number; var sum = 0; while temp > 0 { var remainder = temp % 10; sum = sum + remainder*remainder*remainder; temp = temp / 10; }; sum != number // if res is false, then the number is not an Armstrong number
{
  // method implementation goes here
}
```