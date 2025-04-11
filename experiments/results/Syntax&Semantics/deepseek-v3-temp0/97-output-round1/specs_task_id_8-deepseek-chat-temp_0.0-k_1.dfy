```dafny
method squareNums(nums: array<int>) returns (out: array<int>)
  requires nums != null
  ensures out != null
  ensures out.Length == nums.Length
  ensures forall i :: 0 <= i < nums.Length ==> out[i] == nums[i] * nums[i]
{
  // Implementation not provided
}
```