```dafny
method HasOppositeSign(a: int, b: int) returns (result: bool)
  requires a != 0 && b != 0 // The inputs should not be zero as zero has no sign
  ensures (result == true) <==> ((a > 0 && b < 0) || (a < 0 && b > 0)) // The result is true if and only if one number is positive and the other is negative
```