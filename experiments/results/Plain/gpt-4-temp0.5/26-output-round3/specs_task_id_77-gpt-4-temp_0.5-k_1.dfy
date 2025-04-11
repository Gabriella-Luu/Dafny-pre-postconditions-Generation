```dafny
method IsDivisibleBy11(n: int) returns (result: bool)
  requires n >= 0; // The number should be non-negative
  ensures result == true <==> n % 11 == 0; // The result is true if and only if the number is divisible by 11
  ensures result == false <==> n % 11 != 0; // The result is false if and only if the number is not divisible by 11
```
The preconditions require that the input number is non-negative. The postconditions ensure that the result is true if and only if the number is divisible by 11, and the result is false if and only if the number is not divisible by 11.