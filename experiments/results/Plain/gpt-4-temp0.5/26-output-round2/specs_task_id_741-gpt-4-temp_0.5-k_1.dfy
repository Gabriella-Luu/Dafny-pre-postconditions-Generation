```dafny
method AllCharactersSame(s: string) returns (result: bool)
    requires s.Length > 0; // the string is not empty
    ensures forall i, j :: 0 <= i < s.Length && 0 <= j < s.Length ==> s[i] == s[j]; // all characters in the string are the same
    ensures (result == true) <==> (forall i, j :: 0 <= i < s.Length && 0 <= j < s.Length ==> s[i] == s[j]); // the result is true if and only if all characters in the string are the same
```