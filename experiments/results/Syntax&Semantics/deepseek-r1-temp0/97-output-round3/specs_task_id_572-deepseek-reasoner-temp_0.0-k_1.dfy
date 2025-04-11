```dafny
method twoUniqueNums(nums:array<int>) returns (res:array<int>)
  ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j]
  ensures forall elem :: elem in res[..] ==> elem in nums[..]
  ensures forall elem :: elem in nums[..] ==> elem in res[..]
{
  // Implementation not provided
}
```