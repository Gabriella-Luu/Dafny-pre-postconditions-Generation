```dafny
method twoUniqueNums(nums:array<int>) returns (res:array<int>)
  ensures res != null
  ensures forall x :: x in res[..] ==> x in nums[..]
  ensures forall x :: x in nums[..] ==> x in res[..]
  ensures forall i, j | 0 <= i < j < res.Length :: res[i] != res[j]
{
  // Implementation not provided
}
```