```dafny
method twoUniqueNums(nums: array<int>) returns (res: array<int>)
    requires nums != null
    ensures res != null
    ensures forall i :: 0 <= i < res.Length ==> res[i] in nums[..]
    ensures forall i :: 0 <= i < nums.Length ==> nums[i] in res[..]
    ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j]
{
    // Implementation goes here
}
```