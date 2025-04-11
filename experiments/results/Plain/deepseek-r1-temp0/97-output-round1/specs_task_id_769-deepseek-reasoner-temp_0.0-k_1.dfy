```dafny
function method Filter(a: seq<int>, b: seq<int>): seq<int> {
  if |a| == 0 then []
  else if a[0] in b then Filter(a[1..], b)
  else [a[0]] + Filter(a[1..], b)
}

method diff(a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  ensures diff == Filter(a, b)
  // Every element in the result is from 'a' and not in 'b'
  ensures forall x :: x in diff ==> x in a && x !in b
  // All elements from 'a' not in 'b' are in the result, preserving order
  ensures forall i: int :: 0 <= i < |a| && a[i] !in b ==>
    exists j: int :: 0 <= j < |diff| && diff[j] == a[i] &&
      (forall k: int :: 0 <= k < i && a[k] !in b ==> exists l: int :: l < j && diff[l] == a[k])
{
  // Dafny method without implementation
}
```