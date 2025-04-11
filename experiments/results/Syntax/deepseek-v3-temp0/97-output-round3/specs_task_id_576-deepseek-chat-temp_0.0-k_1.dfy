```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result == (exists i :: 0 <= i <= |main| - |sub| && (forall j :: 0 <= j < |sub| ==> sub[j] == main[i + j]))
{
  // Implementation not provided
}
```