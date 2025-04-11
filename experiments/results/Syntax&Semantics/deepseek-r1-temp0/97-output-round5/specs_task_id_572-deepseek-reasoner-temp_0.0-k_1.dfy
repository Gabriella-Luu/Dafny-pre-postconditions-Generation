```dafny
method twoUniqueNums(nums:array<int>) returns (res:array<int>)
    ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j]
    ensures forall x :: x in res[..] <==> (exists j :: 0 <= j < nums.Length && nums[j] == x && (forall k :: 0 <= k < j ==> nums[k] != x))
{
    // Method implementation not provided
}
```