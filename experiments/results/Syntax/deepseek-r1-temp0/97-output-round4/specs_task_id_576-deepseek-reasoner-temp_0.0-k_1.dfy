```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  ensures result <==> (
    (|sub| == 0) || 
    (exists k :: 0 <= k <= |main| - |sub| && 
      (forall i :: 0 <= i < |sub| ==> main[k + i] == sub[i]))
  )
{
  // Implementation not provided
}
```