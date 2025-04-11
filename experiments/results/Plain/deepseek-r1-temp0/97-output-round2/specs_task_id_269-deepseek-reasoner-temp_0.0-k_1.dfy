```dafny
method asciiValue(ch:char) returns (res:int)
   // Precondition: The input character must be a valid ASCII character (0-127)
   requires ch <= '\x7f'
   // Postcondition: The result equals the integer ASCII value of the input character
   ensures res == ch as int
```