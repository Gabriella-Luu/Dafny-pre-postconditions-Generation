```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result == (|sub| == 0 || (exists i | 0 <= i <= |main| - |sub| :: main[i..i+|sub|] == sub))
{
  // Implementation would check consecutive elements matching
}
```