```dafny
method twoUniqueNums(nums:array<int>) returns (res:array<int>)
  requires nums != null
  ensures res != null
  ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j] // no duplicates in result
  ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < nums.Length && nums[j] == res[i]) // all elements in result are from input
  ensures forall i :: 0 <= i < nums.Length ==> (exists j :: 0 <= j < res.Length && nums[i] == res[j]) // all elements from input are in result
```