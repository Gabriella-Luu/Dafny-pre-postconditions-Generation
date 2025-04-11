```dafny
method insertElement(list: seq<string>, element:string) returns (res: seq<string>)
   ensures |res| == 2 * |list|; // Result length is twice the input list length
   ensures forall j :: 0 <= j < |list| ==> res[2*j] == element && res[2*j + 1] == list[j]; // Element precedes each original element
{
   // Implementation logic would go here
}
```