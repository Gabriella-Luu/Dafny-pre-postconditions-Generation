```dafny
method asciiValue(ch:char) returns (res:int)
   // Precondition: Character must be a valid ASCII character (0-127)
   requires ch <= '\x7F'
   // Postcondition: Result matches the integer ASCII value of the input character
   ensures res == ch as int
{
   // Implementation would convert character to its ASCII integer value
}
```