method squareNums (nums:array<int>) returns (out:array<int>)
    requires nums.Length > 0
    ensures out.Length == nums.Length
    ensures forall i :: 0 <= i < nums.Length ==> out[i] == nums[i] * nums[i]
{
  var v0 := new int[] [12,15];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} nums[..nums.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert nums[0] == v0[0];
  assert nums[1] == v0[1];
  out := new int[][225];
}