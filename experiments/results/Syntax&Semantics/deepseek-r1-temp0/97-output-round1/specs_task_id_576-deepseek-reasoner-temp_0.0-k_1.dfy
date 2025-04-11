```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result <==> (|sub| == 0 || (exists i :: 0 <= i <= |main| - |sub| && (forall k :: 0 <= k < |sub| ==> main[i + k] == sub[k])))
{
  // Implementation not required for this task
}
```