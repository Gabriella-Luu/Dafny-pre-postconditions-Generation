```dafny
method HasOppositeSign(a: int, b: int) returns (result: bool)
    requires a != 0 && b != 0
    ensures (a > 0 && b < 0) ==> result == true
    ensures (a < 0 && b > 0) ==> result == true
    ensures (a > 0 && b > 0) ==> result == false
    ensures (a < 0 && b < 0) ==> result == false
```