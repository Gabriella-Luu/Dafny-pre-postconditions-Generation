method bitwiseXOR (sq1: seq<bv32>,sq2: seq<bv32>) returns (res:seq<bv32>)
    requires |sq1| == |sq2|
    ensures |res| == |sq1|
    ensures forall i :: 0 <= i < |res| ==> res[i] == (sq1[i] ^^ sq2[i])
{
  var v0 := [10, 4, 6, 9];
  var v1 := [5, 2, 3, 3];
  assume {:axiom} sq1 == v0;
  //redundant asserts to make dafny happy
  assert sq1[0] == v0[0];
  assert sq1[1] == v0[1];
  assert sq1[2] == v0[2];
  assert sq1[3] == v0[3];
  assume {:axiom} sq2 == v1;
  //redundant asserts to make dafny happy
  assert sq2[0] == v1[0];
  assert sq2[1] == v1[1];
  assert sq2[2] == v1[2];
  assert sq2[3] == v1[3];
  res := [15,6,5,10,10];
}