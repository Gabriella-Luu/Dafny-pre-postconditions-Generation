```dafny
// Dafny method without implementation
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  requires 0 <= n // n must be non-negative
  requires n <= |l| // n must not exceed the length of the list
  ensures |r| == |l| // the length of the result must be the same as the input
  ensures forall i :: 0 <= i < |l| ==> r[(i + n) % |l|] == l[i] // each element in r is shifted right by n positions, wrapping around
{
  // Method body would go here
}
```