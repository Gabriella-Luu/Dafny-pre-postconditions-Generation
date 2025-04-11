```dafny
method asciiValue(ch:char) returns (res:int)
   // Precondition: The character must be a valid ASCII character (0-127)
   requires ch <= '\x7F'
   // Postcondition: The result matches the ASCII value of the input character
   ensures res == ch as int
{
   // Implementation would convert character to ASCII value
}
```