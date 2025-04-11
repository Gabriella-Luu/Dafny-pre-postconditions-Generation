```dafny
method twoUniqueNums(nums: array<int>) returns (res: array<int>)
    requires nums != null
    ensures res != null
    ensures forall i :: 0 <= i < res.Length ==> (res[i] in nums[..])
    ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j]
    ensures forall x :: x in nums[..] ==> exists i :: 0 <= i < res.Length && res[i] == x
{
    // Implementation goes here
}
```