```dafny
method ContainsZ(s: string) returns (result: bool)
  // Precondition: The input string must be valid (non-null)
  requires s != null
  // Postcondition: The result is true if and only if 'z' exists in the string
  ensures result <==> (exists i | 0 <= i < |s| :: s[i] == 'z')
{
  // Method implementation would go here (not shown)
}
```