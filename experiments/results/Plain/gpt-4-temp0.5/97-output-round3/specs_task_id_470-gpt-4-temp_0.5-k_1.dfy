Sure, here is the method signature with preconditions and postconditions in Dafny:

```dafny
method addPairwise(a: array<int>) returns (result: array<int>)
  requires a != null && a.Length > 0 && a.Length % 2 == 0
  ensures result != null && result.Length == a.Length / 2
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[2*i] + a[2*i+1]
```

Here is what each condition means:

- `requires a != null && a.Length > 0 && a.Length % 2 == 0`: This precondition ensures that the input array is not null, has at least one element, and has an even number of elements (since we're adding pairs of elements).

- `ensures result != null && result.Length == a.Length / 2`: This postcondition ensures that the output array is not null and its length is half of the input array's length (since each pair of elements in the input array results in one element in the output array).

- `ensures forall i :: 0 <= i < result.Length ==> result[i] == a[2*i] + a[2*i+1]`: This postcondition ensures that each element in the output array is the sum of a pair of elements in the input array.