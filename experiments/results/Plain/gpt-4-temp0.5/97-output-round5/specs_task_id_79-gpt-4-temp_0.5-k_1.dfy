```dafny
method wordLen(str:string) returns (res:bool)
  requires str != null  // The input string must not be null
  ensures res == (str.Length % 2 != 0)  // The result should be true if the length of the string is odd, false otherwise
```