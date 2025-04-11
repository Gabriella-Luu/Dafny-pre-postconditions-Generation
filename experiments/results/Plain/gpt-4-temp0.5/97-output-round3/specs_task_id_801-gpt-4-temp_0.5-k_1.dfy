```dafny
method isThreeEqual(a:int, b:int, c:int) returns (res:int)
    requires true // no specific preconditions for this method
    ensures (
        (a == b && b == c && res == 3) ||
        (a == b && b != c && res == 2) ||
        (a != b && b == c && res == 2) ||
        (a == c && b != c && res == 2) ||
        (a != b && b != c && a != c && res == 0)
    ) // postcondition ensures that the result is correct based on the input values
```