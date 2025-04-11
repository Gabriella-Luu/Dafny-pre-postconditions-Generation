```dafny
method replaceList(first: seq<int>, second: seq<int>) returns (result: seq<int>)
  requires |first| > 0
  ensures result == first[..|first|-1] + second
```