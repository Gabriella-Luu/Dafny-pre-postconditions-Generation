```dafny
method filterOddNumbers(arr: array<int>) returns (odds: seq<int>)
    requires arr != null
    ensures |odds| <= arr.Length
    ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1
    ensures forall j :: 0 <= j < arr.Length && arr[j] % 2 == 1 ==> exists k :: 0 <= k < |odds| && odds[k] == arr[j]
```
### Explanation:
- **Precondition (`requires`)**:
  - `arr != null`: Ensures that the input array is not null, which is necessary to avoid null reference errors.
  
- **Postconditions (`ensures`)**:
  - `|odds| <= arr.Length`: Ensures that the length of the resulting sequence `odds` is at most the length of the input array `arr`. This is because the sequence `odds` can only contain elements from `arr`.
  - `forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1`: Ensures that every element in the sequence `odds` is an odd number.
  - `forall j :: 0 <= j < arr.Length && arr[j] % 2 == 1 ==> exists k :: 0 <= k < |odds| && odds[k] == arr[j]`: Ensures that every odd number in the input array `arr` is included in the sequence `odds`. This guarantees that no odd number is missed during the filtering process.

These preconditions and postconditions are minimal yet sufficient to verify the correctness of the `filterOddNumbers` method.