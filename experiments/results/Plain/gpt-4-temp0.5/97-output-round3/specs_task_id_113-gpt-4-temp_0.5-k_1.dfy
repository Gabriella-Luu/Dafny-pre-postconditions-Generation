```dafny
method checkInteger (str:string) returns (res:bool)
  requires str != null; // The string should not be null
  ensures (
    res == true ==> (forall i :: 0 <= i < str.Length ==> ('0' <= str[i] <='9')) // If the result is true, then all characters in the string are digits
    && (res == false ==> (exists j :: 0 <= j < str.Length && ('0' > str[j] || str[j] > '9')))); // If the result is false, then at least one character in the string is not a digit
```