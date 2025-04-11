```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
    requires n >= 0 // n should be non-negative
    requires |l| > 0 // sequence l should not be empty
    ensures |r| == |l| // the length of the result sequence should be equal to the length of the input sequence
    ensures forall k :: 0 <= k < |l| ==> r[(k+n)%|l|] == l[k] // each element in the result sequence is the nth next element in the input sequence
    ensures forall k :: 0 <= k < n ==> r[k] == l[|l|-n+k] // the first n elements in the result sequence are the last n elements in the input sequence
    ensures forall k :: n <= k < |l| ==> r[k] == l[k-n] // the rest of the elements in the result sequence are the same as the input sequence, shifted n positions to the right
{
    // Method implementation goes here
}
```