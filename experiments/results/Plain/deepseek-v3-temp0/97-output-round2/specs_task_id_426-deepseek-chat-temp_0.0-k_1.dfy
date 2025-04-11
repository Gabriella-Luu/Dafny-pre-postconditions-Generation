Here is the Dafny method with preconditions and postconditions for filtering odd numbers:

```dafny
method filterOddNumbers(arr: array<int>) returns (odds: seq<int>)
  requires arr != null // The input array must not be null
  ensures |odds| <= arr.Length // The length of the output sequence is at most the length of the input array
  ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1 // All elements in the output sequence are odd
  ensures forall j :: 0 <= j < arr.Length && arr[j] % 2 == 1 ==> exists k :: 0 <= k < |odds| && odds[k] == arr[j] // Every odd number in the input array is included in the output sequence
{
  // Implementation goes here
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `arr != null`: Ensures the input array is not null to avoid null reference errors.

2. **Postconditions (`ensures`)**:
   - `|odds| <= arr.Length`: The length of the output sequence `odds` is at most the length of the input array `arr`.
   - `forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1`: Every element in the output sequence `odds` is an odd number.
   - `forall j :: 0 <= j < arr.Length && arr[j] % 2 == 1 ==> exists k :: 0 <= k < |odds| && odds[k] == arr[j]`: Every odd number in the input array `arr` is included in the output sequence `odds`.

These conditions ensure the correctness of the method in filtering odd numbers.