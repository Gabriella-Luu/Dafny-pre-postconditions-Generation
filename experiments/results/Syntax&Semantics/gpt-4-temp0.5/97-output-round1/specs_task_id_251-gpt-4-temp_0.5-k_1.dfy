```dafny
method insertElement(list: seq<string>, element:string) returns (res: seq<string>)
    requires true
    ensures |res| == 2 * |list|
    ensures forall i :: 0 <= i < |list| ==> (res[2*i] == element && res[2*i + 1] == list[i])
```