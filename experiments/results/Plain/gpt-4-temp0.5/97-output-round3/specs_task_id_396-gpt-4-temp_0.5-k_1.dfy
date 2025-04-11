```dafny
method checkChar(str:string) returns (res:bool)
  requires str.Length > 0; // String should not be empty
  ensures res == (str[0] == str[str.Length - 1]); // Result is true if the first and last character of the string are the same, false otherwise
```