Here is the Dafny method with preconditions and postconditions:

```dafny
method nthNums(list: seq<int>, n: int) returns (res: seq<int>)
  requires n >= 0 // n should be a non-negative integer
  ensures |res| == |list| // The result sequence should have the same length as the input sequence
  ensures forall i :: 0 <= i < |list| ==> res[i] == list[i] ** n // Each element in the result sequence should be the nth power of the corresponding element in the input sequence
{
  // Method implementation goes here
}
```

Explanation:
- The precondition `n >= 0` ensures that we are only calculating non-negative powers. Negative powers could result in division by zero errors for zero elements in the list.
- The postcondition `|res| == |list|` ensures that the output list is the same length as the input list.
- The postcondition `forall i :: 0 <= i < |list| ==> res[i] == list[i] ** n` ensures that each element in the output list is the nth power of the corresponding element in the input list.