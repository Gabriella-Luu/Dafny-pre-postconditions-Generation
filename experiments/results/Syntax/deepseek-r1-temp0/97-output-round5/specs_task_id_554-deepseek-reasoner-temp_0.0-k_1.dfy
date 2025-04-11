```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
    ensures oddList == [x | x in arr[..] if x % 2 != 0]
{
    // Implementation not provided
}
```