```dafny
method HasOppositeSign(a: int, b: int) returns (result: bool)
   requires a != 0 && b != 0 // both a and b should not be zero
   ensures result <==> (a > 0 && b < 0) || (a < 0 && b > 0) // result is true if a and b have opposite signs
```