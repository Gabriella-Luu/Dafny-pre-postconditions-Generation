```dafny
method twoUniqueNums(nums: array<int>) returns (res: array<int>)
    requires nums != null
    ensures res != null
    ensures |res| <= |nums|
    ensures forall i :: 0 <= i < |res| ==> res[i] in nums[..]
    ensures forall i, j :: 0 <= i < j < |res| ==> res[i] != res[j]
    ensures forall x :: x in nums[..] ==> exists i :: 0 <= i < |res| && res[i] == x
{
    // Implementation goes here
}
```