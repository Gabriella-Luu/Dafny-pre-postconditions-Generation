```dafny
method asciiValue(ch:char) returns (res:int)
    requires ch >= ' ' && ch <= '~' // ASCII printable characters
    ensures res >= 32 && res <= 126 // Corresponding ASCII values
    ensures res == ch as int // ASCII value of the character
```