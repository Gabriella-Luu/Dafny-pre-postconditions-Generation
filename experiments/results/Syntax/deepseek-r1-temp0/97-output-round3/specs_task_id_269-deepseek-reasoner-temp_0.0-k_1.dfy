```dafny
method asciiValue(ch:char) returns (res:int)
    ensures res == (ch as int)
```