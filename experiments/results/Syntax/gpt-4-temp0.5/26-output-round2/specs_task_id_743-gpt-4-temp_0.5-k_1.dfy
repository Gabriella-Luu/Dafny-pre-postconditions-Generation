```dafny
// Dafny method without implementation
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  requires 0 <= n < |l| + 1 // ensures that n is within the correct range
  ensures |r| == |l| // ensures that the output sequence has the same length as the input
  ensures forall i :: 0 <= i < |l| ==> r[(i + n) % |l|] == l[i] // ensures that the sequence is correctly rotated
{
  // Method implementation would go here
}
```