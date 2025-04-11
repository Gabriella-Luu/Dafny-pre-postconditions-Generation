```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result == (exists i: int :: 0 <= i <= |main| - |sub| && (forall j: int :: 0 <= j < |sub| ==> main[i + j] == sub[j]))
{
  // Implementation not shown
}
```