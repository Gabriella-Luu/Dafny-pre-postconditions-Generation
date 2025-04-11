```dafny
method addTuple(l: seq<(int, int)>, t: (int, int)) returns (r: seq<(int, int)>)
  requires |l| >= 0
  ensures |r| == |l| + 1
  ensures r[|r|-1] == t
  ensures forall i :: 0 <= i < |l| ==> r[i] == l[i]
{
  // implementation goes here
}
```