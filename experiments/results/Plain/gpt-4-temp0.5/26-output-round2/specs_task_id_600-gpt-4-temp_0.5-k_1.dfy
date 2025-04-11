```dafny
method IsEven(n: int) returns (result: bool)
  requires true // No specific precondition is required as all integers are valid inputs
  ensures (result == true <==> n % 2 == 0) && (result == false <==> n % 2 != 0) // The result should be true if and only if the number is even, and false if and only if the number is not even
```