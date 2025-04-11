```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  requires n >= 0 && n < |l| // The number of rotations should be non-negative and less than the length of the list
  ensures |r| == |l| // The length of the output list should be the same as the input list
  ensures forall i :: 0 <= i < |l| ==> r[i] == l[(i+n)%|l|] // Each element in the output list should be the element at (i+n)%|l| position in the input list
{}
```