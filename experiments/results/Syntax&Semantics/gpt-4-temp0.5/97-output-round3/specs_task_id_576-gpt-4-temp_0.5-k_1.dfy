```dafny
method IsSublist(sub: seq<int>, main: seq<int>) returns (result: bool)
    requires forall i :: 0 <= i < |sub| ==> sub[i] in main
    ensures result <==> (forall i :: 0 <= i < |sub| ==> sub[i] in main)
```