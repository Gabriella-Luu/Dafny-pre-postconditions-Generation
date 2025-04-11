```dafny
method checkInteger (str:string) returns (res:bool)
  requires str != null; // The input string must not be null
  ensures res == true <==> (forall i :: 0 <= i < str.Length ==> ('0' <= str[i] && str[i] <= '9')); // The result is true if and only if all characters in the string are digits
  ensures res == false <==> (exists i :: 0 <= i < str.Length && !('0' <= str[i] && str[i] <= '9')); // The result is false if there exists at least one character in the string which is not a digit
{
  // Method implementation goes here
}
```