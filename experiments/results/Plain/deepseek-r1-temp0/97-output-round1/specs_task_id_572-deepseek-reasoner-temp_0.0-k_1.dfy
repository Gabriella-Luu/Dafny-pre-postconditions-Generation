```dafny
method twoUniqueNums(nums: array<int>) returns (res: array<int>)
   requires nums != null
   ensures res != null
   ensures forall i, j | 0 <= i < j < res.Length :: res[i] != res[j]
   ensures set res[..] == set nums[..]
{
   // Implementation not provided
}
```