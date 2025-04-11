```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
    requires a >= 0 && b >= 0 && c >= 0 // all inputs are non-negative integers
    ensures (
        (res == 3 && a == b && b == c) || // all three numbers are equal
        (res == 2 && ((a == b && a != c) || (a == c && a != b) || (b == c && b != a))) || // two numbers are equal and one is different
        (res == 0 && a != b && b != c && a != c) // all three numbers are different
    )
```