```dafny
method HasOppositeSign(a: int, b: int) returns (result: bool)
    requires a != 0 && b != 0 // Both integers should not be 0
    ensures result == true <==> (a > 0 && b < 0) || (a < 0 && b > 0) // The result is true if and only if the signs of a and b are opposite
    ensures result == false <==> (a > 0 && b > 0) || (a < 0 && b < 0) // The result is false if and only if the signs of a and b are the same
```