Here is the Dafny method with preconditions and postconditions designed based on the task description:

```dafny
method interleaveLists(list1: seq<int>, list2: seq<int>, list3: seq<int>) returns (merged: seq<int>)
  // Preconditions: All input sequences must have the same length.
  requires |list1| == |list2| && |list2| == |list3|
  // Postconditions:
  // 1. The length of the merged sequence is 3 times the length of any input sequence.
  ensures |merged| == 3 * |list1|
  // 2. The merged sequence contains elements from the input sequences in an interleaved order.
  ensures forall i :: 0 <= i < |list1| ==> 
    merged[3*i] == list1[i] && merged[3*i + 1] == list2[i] && merged[3*i + 2] == list3[i]
{
  // Implementation not provided
}
```

### Explanation:
1. **Preconditions (`requires`)**:
   - The lengths of `list1`, `list2`, and `list3` must be equal. This ensures that the sequences can be interleaved properly.

2. **Postconditions (`ensures`)**:
   - The length of the `merged` sequence is exactly 3 times the length of any input sequence. This ensures that all elements from the input sequences are included in the result.
   - The elements of the `merged` sequence are interleaved in the order of `list1`, `list2`, and `list3`. Specifically, for every index `i` in the input sequences, the merged sequence contains `list1[i]`, `list2[i]`, and `list3[i]` in consecutive positions.

This design ensures the correctness of the interleaving operation.