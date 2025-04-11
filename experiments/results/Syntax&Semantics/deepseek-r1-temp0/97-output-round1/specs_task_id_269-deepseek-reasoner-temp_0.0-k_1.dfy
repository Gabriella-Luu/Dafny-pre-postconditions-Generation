```dafny
method asciiValue(ch:char) returns (res:int)
  requires ch <= 127
  ensures res == ch as int
```