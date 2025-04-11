```dafny
method ContainsZ(s: string) returns (result: bool)
   requires s != null  // Precondition: Input string must be valid (non-null)
   ensures result == exists i | 0 <= i < |s| :: s[i] == 'z'  // Postcondition: Result is true iff string contains 'z'
```