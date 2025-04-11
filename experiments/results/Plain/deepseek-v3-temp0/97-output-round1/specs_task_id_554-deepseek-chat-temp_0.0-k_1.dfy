Here is the Dafny method with preconditions and postconditions based on the task description:

```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null // Precondition: The input array must not be null.
  ensures |oddList| <= arr.Length // Postcondition: The length of the returned sequence is at most the length of the input array.
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1 // Postcondition: All elements in the returned sequence are odd.
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 1 ==> arr[i] in oddList // Postcondition: Every odd element in the input array is included in the returned sequence.
{
  // Implementation not provided
}
```

### Explanation:
1. **Precondition (`requires`)**:
   - `arr != null`: Ensures the input array is not null to avoid null reference errors.

2. **Postconditions (`ensures`)**:
   - `|oddList| <= arr.Length`: Ensures the length of the returned sequence is at most the length of the input array, as the sequence cannot contain more elements than the array.
   - `forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1`: Ensures every element in the returned sequence is odd.
   - `forall i :: 0 <= i < arr.Length && arr[i] % 2 == 1 ==> arr[i] in oddList`: Ensures every odd element in the input array is included in the returned sequence. This guarantees no odd elements are missed.