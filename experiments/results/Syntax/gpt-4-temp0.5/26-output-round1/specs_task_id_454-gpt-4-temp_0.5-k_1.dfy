```dafny
method ContainsZ(s: string) returns (result: bool)
  requires |s| > 0
  ensures result <==> (exists i :: 0 <= i < |s| && s[i] == 'z')
```