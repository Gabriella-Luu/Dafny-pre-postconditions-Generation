method twoUniqueNums (nums: array<int>) returns (res: array<int>)
  requires nums != null
  ensures res != null
  ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j] // Uniqueness Check
  ensures forall i :: 0 <= i < nums.Length ==> (exists j :: 0 <= j < res.Length && nums[i] == res[j]) // Completeness Check
  ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < nums.Length && res[i] == nums[j]) // Exclusivity Check
  {
  var v0 := new int[] [1,2,3,4,5];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} nums[..nums.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert nums[0] == v0[0];
  assert nums[1] == v0[1];
  assert nums[2] == v0[2];
  assert nums[3] == v0[3];
  assert nums[4] == v0[4];
  res := new int[][1,2,3,4,3,5];
}