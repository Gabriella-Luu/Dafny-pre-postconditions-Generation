```dafny
method asciiValue(ch:char) returns (res:int)
  requires '\x00' <= ch <= '\x7F'  // Precondition: character must be valid ASCII (0-127)
  ensures res == ch as int         // Postcondition: result matches ASCII value of char
{
  // Implementation would convert char to its integer ASCII value
}
```