```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  requires |sub| <= |main|
  ensures result == (exists i :: 0 <= i <= |main| - |sub| && sub == main[i..i + |sub|])
{
  // Implementation not provided
}
```