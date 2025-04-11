```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
  requires |sub| <= |main|
  ensures result <==> (forall i :: 0 <= i < |sub| ==> (exists j :: i <= j < |main| && sub[i] == main[j]))
```