```dafny
method ContainsZ(s: string) returns (result: bool)
  ensures result == exists i | 0 <= i < s.Length :: s[i] == 'z'
{
  // Implementation would check each character for 'z' and return appropriate boolean
}
```