```dafny
method replaceList(first: seq<int>, second: seq<int>) returns (result: seq<int>)
  requires |first| > 0
  ensures |result| == |first| - 1 + |second|
  ensures forall i :: 0 <= i < |first| - 1 ==> result[i] == first[i]
  ensures forall j :: 0 <= j < |second| ==> result[|first| - 1 + j] == second[j]
{
  // Implementation not provided
}
```