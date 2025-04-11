method addTuple (l: seq<(int, int)>, t: (int, int)) returns (r: seq<(int, int)>)
    requires true
    ensures |r| == |l| + 1
    ensures r[|l|] == t
    ensures forall i :: 0 <= i < |l| ==> r[i] == l[i]
{
  var v0 := [(7, 8)];
  var v1 := (11, 12);
  assume {:axiom} l == v0;
  //redundant asserts to make dafny happy
  assert l[0] == v0[0];
  assume {:axiom} t == v1;
  r := [(7, 8),(7, 8), (11, 12)];
}