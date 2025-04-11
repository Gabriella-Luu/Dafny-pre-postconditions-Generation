```dafny
method IsEven(n: int) returns (result: bool)
  requires n >= 0; // The input number should be a non-negative integer
  ensures (result == true <==> n % 2 == 0); // The method should return true if and only if the input number is even
```