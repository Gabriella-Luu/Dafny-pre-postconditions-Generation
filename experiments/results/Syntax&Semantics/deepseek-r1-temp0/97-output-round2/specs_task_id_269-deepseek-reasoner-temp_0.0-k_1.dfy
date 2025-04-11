```dafny
method asciiValue(ch:char) returns (res:int)
  requires 0 <= ch as int <= 127
  ensures res == ch as int
```