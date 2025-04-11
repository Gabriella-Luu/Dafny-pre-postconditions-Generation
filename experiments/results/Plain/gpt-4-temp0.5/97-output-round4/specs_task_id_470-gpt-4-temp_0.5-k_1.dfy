```dafny
method addPairwise(a: array<int>) returns (result: array<int>)
  requires a != null && a.Length > 0 // the input array must not be null and must contain at least one element
  requires a.Length % 2 == 0 // the length of the input array must be even, so that every element has a neighbor
  ensures result != null && result.Length == a.Length / 2 // the result array must not be null and its length must be half of the input array
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[2*i] + a[2*i + 1] // each element in the result array must be the sum of two neighboring elements in the input array
{
  // method body
}
```