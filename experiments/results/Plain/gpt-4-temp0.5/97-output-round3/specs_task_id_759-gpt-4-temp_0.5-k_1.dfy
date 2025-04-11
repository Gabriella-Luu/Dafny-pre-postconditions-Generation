```dafny
method isDecimal(str: string) returns (res: bool)
  requires str.Length > 0  // the string should not be empty
  ensures (res == true) ==> (exists i :: 0 <= i < str.Length && str[i] == '.' && str.Length - i - 1 == 2) // if the result is true, then the string must contain a '.' and there must be exactly 2 digits after the '.'
  ensures (res == false) ==> !(exists i :: 0 <= i < str.Length && str[i] == '.' && str.Length - i - 1 == 2) // if the result is false, then the string must not contain a '.' with exactly 2 digits after it
```