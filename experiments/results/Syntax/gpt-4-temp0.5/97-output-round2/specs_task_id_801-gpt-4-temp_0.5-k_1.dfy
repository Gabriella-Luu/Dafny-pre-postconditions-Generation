```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
    requires a >= 0 && b >= 0 && c >= 0 // Preconditions
    ensures ((res == 3) ==> (a == b && b == c)) && ((res == 2) ==> ((a == b) || (b == c) || (a == c))) && ((res == 1) ==> ((a != b) && (b != c) && (a != c))) // Postconditions
```