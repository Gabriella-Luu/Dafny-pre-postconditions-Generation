```dafny
method replaceList(first: seq<int>, second: seq<int>) returns (result: seq<int>)
  requires |first| >= 1 // The first list must have at least one element to replace
  ensures result == first[..|first|-1] + second // Result is first list with last element replaced by second list's elements
{
}
```