```dafny
method ContainsZ(s: string) returns (result: bool)
   requires s != null; // The input string must not be null
   ensures result <==> exists i :: 0 <= i < |s| && s[i] == 'z'; // The method should return true if and only if there is at least one 'z' in the string
```