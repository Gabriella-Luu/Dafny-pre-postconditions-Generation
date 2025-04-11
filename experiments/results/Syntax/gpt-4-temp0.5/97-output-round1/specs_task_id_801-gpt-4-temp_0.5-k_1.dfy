```dafny
method isThreeEqual (a:int, b:int, c:int) returns (res:int)
    requires a >= 0
    requires b >= 0
    requires c >= 0
    ensures (a == b && b == c) ==> res == 3
    ensures (a == b && b != c) ==> res == 2
    ensures (a != b && b == c) ==> res == 2
    ensures (a == c && b != c) ==> res == 2
    ensures (a != b && b != c && a != c) ==> res == 0
{
    // Method implementation goes here
}
```