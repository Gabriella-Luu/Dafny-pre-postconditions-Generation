```dafny
method checkInteger (str:string) returns (res:bool)
  requires str != null; // the input string must not be null
  ensures 
    (res == true ==> forall i :: 0 <= i < str.Length ==> ('0' <= str[i] && str[i] <= '9') || (i == 0 && str[i] == '-')) && // if the result is true, then every character in the string is a digit or the first character can be a negative sign
    (res == false ==> exists i :: 0 <= i < str.Length && !(('0' <= str[i] && str[i] <= '9') || (i == 0 && str[i] == '-'))); // if the result is false, then there is at least one character in the string that is not a digit or the first character is not a negative sign
```