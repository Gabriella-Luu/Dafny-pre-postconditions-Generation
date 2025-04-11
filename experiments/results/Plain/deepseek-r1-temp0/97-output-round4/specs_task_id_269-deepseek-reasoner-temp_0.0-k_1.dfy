```dafny
method asciiValue(ch:char) returns (res:int)
   // Precondition: The input character must be a valid ASCII character (0-127)
   requires ch <= 0x7F
   // Postcondition: The result matches the ASCII value of the input character
   ensures res == ch as int
{
   // Method implementation not provided
}
```