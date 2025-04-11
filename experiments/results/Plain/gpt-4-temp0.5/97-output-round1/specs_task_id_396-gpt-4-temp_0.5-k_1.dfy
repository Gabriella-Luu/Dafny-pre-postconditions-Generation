```dafny
method checkChar(str: string) returns (res: bool)
  requires str.Length > 0; // the string must not be empty
  ensures res <==> str[0] == str[str.Length - 1]; // the result is true if and only if the first and last characters of the string are the same
```