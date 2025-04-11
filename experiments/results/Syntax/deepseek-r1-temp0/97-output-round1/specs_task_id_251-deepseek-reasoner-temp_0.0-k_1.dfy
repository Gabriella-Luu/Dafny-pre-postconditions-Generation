```dafny
method insertElement(list: seq<string>, element:string) returns (res: seq<string>)
    ensures |res| == 2 * |list|
    ensures forall j :: 0 <= j < |list| ==> res[2*j] == element && res[2*j + 1] == list[j]
{
    // Implementation not required for specification
}
```