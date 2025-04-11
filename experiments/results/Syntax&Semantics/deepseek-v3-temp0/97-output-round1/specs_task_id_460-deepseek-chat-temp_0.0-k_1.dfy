```dafny
method extract(list: seq<seq<int>>) returns (res: seq<int>)
  requires forall sublist :: sublist in list ==> |sublist| > 0
  ensures |res| == |list|
  ensures forall i :: 0 <= i < |list| ==> res[i] == list[i][0]
```
### Explanation:
- **Precondition**: The precondition ensures that every sublist in the input sequence `list` is non-empty. This is necessary because we are extracting the first element of each sublist, and attempting to access the first element of an empty sublist would be invalid.
  
- **Postconditions**:
  1. The length of the result sequence `res` is equal to the length of the input sequence `list`. This ensures that we have extracted exactly one element from each sublist.
  2. For every index `i` in the range of `list`, the `i`-th element of `res` is equal to the first element of the `i`-th sublist in `list`. This ensures that the elements in `res` are correctly extracted from the corresponding sublists.

These conditions are minimal yet sufficient to verify the correctness of the method.