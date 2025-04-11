```dafny
method twoUniqueNums(nums: array<int>) returns (res: array<int>)
  requires nums != null
  ensures res != null
  ensures forall x :: x in res[..] ==> x in nums[..]
  ensures forall x :: x in nums[..] ==> x in res[..]
  ensures forall i, j | 0 <= i < j < res.Length :: res[i] != res[j]
  ensures forall i, j | 0 <= i < j < res.Length :: 
    (exists ki, kj :: 0 <= ki < kj < nums.Length && 
      nums[ki] == res[i] && nums[kj] == res[j] && 
      (forall m < ki :: nums[m] != res[i]) && 
      (forall n < kj :: nums[n] != res[j]))
{
}
```