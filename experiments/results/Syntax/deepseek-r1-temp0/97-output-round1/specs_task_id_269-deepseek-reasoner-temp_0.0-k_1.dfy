```dafny
method asciiValue(ch:char) returns (res:int)
  requires '\x00' <= ch <= '\x7F'
  ensures 0 <= res < 128
```