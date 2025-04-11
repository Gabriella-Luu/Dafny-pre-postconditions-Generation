```dafny
method squareNums(nums: array<int>) returns (out: array<int>)
  requires nums != null
  ensures out != null
  ensures nums.Length == out.Length
  ensures forall i :: 0 <= i < nums.Length ==> out[i] == nums[i] * nums[i]
```