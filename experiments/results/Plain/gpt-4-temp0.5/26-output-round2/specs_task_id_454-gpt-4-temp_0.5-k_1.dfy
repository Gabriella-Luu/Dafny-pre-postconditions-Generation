```dafny
method ContainsZ(s: string) returns (result: bool)
  requires s != null; // The input string must not be null
  ensures result <==> exists i :: 0 <= i < |s| && s[i] == 'z'; // The result is true if and only if there is an index 'i' such that the character at index 'i' in the string is 'z'
```
This method checks if a given string contains the character 'z'. The precondition ensures that the input string is not null, and the postcondition guarantees that the method returns true if and only if there is at least one 'z' in the string.