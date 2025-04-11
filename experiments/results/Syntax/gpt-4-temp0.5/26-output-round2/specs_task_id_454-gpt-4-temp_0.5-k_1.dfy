```dafny
// Dafny method without implementation
method ContainsZ(s: string) returns (result: bool)
  ensures (exists i :: 0 <= i < |s| && s[i] == 'z') <==> result
{
}
```