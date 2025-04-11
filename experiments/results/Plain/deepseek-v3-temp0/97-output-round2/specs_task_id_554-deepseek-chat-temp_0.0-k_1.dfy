Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null // Precondition: The input array must not be null.
  ensures |oddList| <= |arr| // Postcondition: The length of the oddList is less than or equal to the length of the input array.
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1 // Postcondition: Every element in oddList is odd.
  ensures forall j :: 0 <= j < |arr| && arr[j] % 2 == 1 ==> exists k :: 0 <= k < |oddList| && oddList[k] == arr[j] // Postcondition: Every odd element in the input array is included in oddList.
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `arr != null`: Ensures the input array is not null to avoid null reference errors.

2. **Postconditions (`ensures`)**:
   - `|oddList| <= |arr|`: Ensures the length of the resulting `oddList` is at most the length of the input array.
   - `forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1`: Ensures every element in `oddList` is odd.
   - `forall j :: 0 <= j < |arr| && arr[j] % 2 == 1 ==> exists k :: 0 <= k < |oddList| && oddList[k] == arr[j]`: Ensures every odd element in the input array is included in `oddList`.

These conditions collectively ensure the correctness of the method.