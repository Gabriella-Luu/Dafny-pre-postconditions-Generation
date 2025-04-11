```dafny
method twoUniqueNums(nums:array<int>) returns (res:array<int>)
   requires nums != null
   ensures res != null
   ensures forall i, j | 0 <= i < j < res.Length :: res[i] != res[j]
   ensures forall x :: x in res[..] ==> x in nums[..] && multiset(nums[..])[x] == 1
   ensures forall x :: x in nums[..] && multiset(nums[..])[x] == 1 ==> x in res[..]
{
   // Implementation not provided
}
```