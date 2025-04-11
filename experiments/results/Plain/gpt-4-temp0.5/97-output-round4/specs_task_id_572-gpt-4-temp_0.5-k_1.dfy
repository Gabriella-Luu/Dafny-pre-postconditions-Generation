```dafny
method twoUniqueNums(nums: array<int>) returns (res: array<int>)
  requires nums != null  // Preconditions
  requires nums.Length > 0
  ensures res != null  // Postconditions
  ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j] // No duplicates in the result
  ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < nums.Length && res[i] == nums[j]) // Every number in the result exists in the input
  ensures forall i :: 0 <= i < nums.Length ==> (exists j :: 0 <= j < res.Length && nums[i] == res[j]) // Every number in the input exists in the result
{
  // Method implementation goes here
}
```