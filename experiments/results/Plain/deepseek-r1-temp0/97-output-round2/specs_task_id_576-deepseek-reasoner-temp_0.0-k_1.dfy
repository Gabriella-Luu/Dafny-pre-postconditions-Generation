```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result == (if |sub| == 0 then true else (exists i | 0 <= i <= |main| - |sub| && main[i..i+|sub|] == sub))
{
  // Implementation would check if elements of 'sub' appear consecutively in 'main'
  // while maintaining specified pre/postconditions
}
```