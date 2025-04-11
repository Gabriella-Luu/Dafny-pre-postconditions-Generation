```dafny
method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0  // The number should be non-negative
  ensures 
    res == true ==> var sum = 0;
      var temp = number;
      while(temp != 0) {
        var digit = temp % 10;
        sum = sum + digit * digit * digit;
        temp = temp / 10;
      }
      sum == number;  // If the result is true, the number is an Armstrong number
    res == false ==> var sum = 0;
      var temp = number;
      while(temp != 0) {
        var digit = temp % 10;
        sum = sum + digit * digit * digit;
        temp = temp / 10;
      }
      sum != number;  // If the result is false, the number is not an Armstrong number
```
This method checks if a number is an Armstrong number. An Armstrong number of three digits is an integer such that the sum of the cubes of its digits is equal to the number itself. The precondition requires that the input number is non-negative. The postcondition ensures that if the result is true, the number is an Armstrong number, and if the result is false, the number is not an Armstrong number.