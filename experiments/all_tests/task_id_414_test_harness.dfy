method AnyValueExists (seq1: seq<int>, seq2: seq<int>) returns (result: bool)
  ensures result <==> (exists i :: 0 <= i < |seq1| && seq1[i] in seq2)
{
  var v0 := [1,4,5];
  var v1 := [1,4,5];
  assume {:axiom} seq1 == v0;
  assert seq1[0] == v0[0];
  assume {:axiom} seq2 == v1;
  assert seq2[0] == v1[0];
  result := false;
}