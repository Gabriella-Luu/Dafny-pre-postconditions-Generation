```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  requires |sub| <= |main|
  ensures result ==> (exists i :: 0 <= i <= |main| - |sub| && (forall j :: 0 <= j < |sub| ==> main[i + j] == sub[j]))
  ensures !result ==> !(exists i :: 0 <= i <= |main| - |sub| && (forall j :: 0 <= j < |sub| ==> main[i + j] == sub[j]))
{
}
```