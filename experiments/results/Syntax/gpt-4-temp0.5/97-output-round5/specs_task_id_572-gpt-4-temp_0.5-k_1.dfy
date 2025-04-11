```dafny
method twoUniqueNums(nums:array<int>) returns (res:array<int>)
    requires nums != null
    ensures res != null
    ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j] // No duplicates in the result
    ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < nums.Length && nums[j] == res[i]) // All elements in the result existed in the original array
    ensures forall i :: 0 <= i < nums.Length ==> (exists j :: 0 <= j < res.Length && res[j] == nums[i]) // All elements in the original array exist in the result
```