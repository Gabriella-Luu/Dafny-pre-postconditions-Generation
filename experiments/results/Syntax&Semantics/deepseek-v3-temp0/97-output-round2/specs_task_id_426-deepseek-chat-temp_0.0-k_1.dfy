```dafny
method filterOddNumbers(arr: array<int>) returns (odds: seq<int>)
    requires arr != null
    ensures |odds| <= arr.Length
    ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1
    ensures forall k :: 0 <= k < arr.Length && arr[k] % 2 == 1 ==> arr[k] in odds
    ensures forall i, j :: 0 <= i < j < |odds| ==> odds[i] != odds[j]
```
### Explanation:
- **Precondition (`requires arr != null`)**: Ensures that the input array is not null, which is a basic assumption for working with arrays in Dafny.
  
- **Postconditions**:
  - **`ensures |odds| <= arr.Length`**: Ensures that the length of the resulting sequence `odds` is less than or equal to the length of the input array `arr`. This is a basic sanity check.
  
  - **`ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1`**: Ensures that every element in the resulting sequence `odds` is an odd number. This is the **completeness check**.
  
  - **`ensures forall k :: 0 <= k < arr.Length && arr[k] % 2 == 1 ==> arr[k] in odds`**: Ensures that every odd number in the input array `arr` is included in the resulting sequence `odds`. This is the **exclusivity check**.
  
  - **`ensures forall i, j :: 0 <= i < j < |odds| ==> odds[i] != odds[j]`**: Ensures that the resulting sequence `odds` does not contain duplicate elements. This is the **uniqueness check**.

These preconditions and postconditions are minimal yet sufficient to verify the correctness of the `filterOddNumbers` method.