```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  ensures forall x | x in oddList :: x % 2 != 0
  ensures forall x | x in arr[..] && x % 2 != 0 :: x in oddList
  ensures forall i: int, j: int :: 0 <= i < j < |oddList| ==> (
    exists a: int, b: int :: 
      0 <= a < b < arr.Length && arr[a] == oddList[i] && arr[b] == oddList[j]
  )
{
  // Method implementation not provided
}
```