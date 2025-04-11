```dafny
method ContainsZ(s: string) returns (result: bool)
  ensures result == (exists j | 0 <= j < |s| :: s[j] == 'z')
{
  // Implementation not shown
}
```