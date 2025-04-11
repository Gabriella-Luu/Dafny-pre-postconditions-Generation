```dafny
method twoUniqueNums(nums:array<int>) returns (res:array<int>)
  ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j]
  ensures forall x :: (x in nums[..] <==> x in res[..])
{
  // Implementation not provided
}
```