```dafny
method AllCharactersSame(s: string) returns (result: bool)
  ensures result == (if |s| == 0 then true else (forall i :: 0 <= i < |s| ==> s[i] == s[0]))
{
  // Implementation not provided
}
```