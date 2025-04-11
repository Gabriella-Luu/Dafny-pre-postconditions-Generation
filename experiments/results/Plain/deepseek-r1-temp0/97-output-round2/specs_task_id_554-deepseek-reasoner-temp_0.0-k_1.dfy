```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null
  ensures oddList == [x | x in arr[..] if x % 2 != 0]
{
  // Implementation would filter array elements and preserve order
}
```