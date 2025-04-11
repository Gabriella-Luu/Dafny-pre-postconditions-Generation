```dafny
method replaceList(first: seq<int>, second: seq<int>) returns (result: seq<int>)
  requires first != [] && second != []
  ensures |result| == |first| - 1 + |second|
  ensures result[..|first|-1] == first[..|first|-1]
  ensures result[|first|-1..] == second
```