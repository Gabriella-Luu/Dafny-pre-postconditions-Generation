```dafny
method twoUniqueNums(nums: array<int>) returns (res: array<int>)
  ensures (forall x :: x in res[..] <==> x in nums[..])
  ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j]
{
  // Implementation not provided
}
```