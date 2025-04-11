```dafny
method twoUniqueNums(nums:array<int>) returns (res:array<int>)
    requires nums != null
    ensures res != null
    ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j]  // no duplicates in the result
    ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < nums.Length && nums[j] == res[i])  // every number in the result is in the original array
    ensures forall i :: 0 <= i < nums.Length ==> (exists j :: 0 <= j < res.Length && res[j] == nums[i])  // every number in the original array is in the result
```