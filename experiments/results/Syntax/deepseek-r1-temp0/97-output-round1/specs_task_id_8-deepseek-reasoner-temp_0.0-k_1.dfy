```dafny
method squareNums(nums:array<int>) returns (out:array<int>)
  ensures out.Length == nums.Length
  ensures forall i :: 0 <= i < nums.Length ==> out[i] == nums[i] * nums[i]
{
  // Implementation not shown
}
```