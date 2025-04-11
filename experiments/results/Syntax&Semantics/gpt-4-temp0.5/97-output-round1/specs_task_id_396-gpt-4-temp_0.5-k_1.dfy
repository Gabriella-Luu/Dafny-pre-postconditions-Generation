```dafny
method checkChar(str:string) returns (res:bool)
  requires |str| > 0  // The string should not be empty
  ensures res <==> str[0] == str[|str|-1]  // The result is true if and only if the first and last characters of the string are the same
```