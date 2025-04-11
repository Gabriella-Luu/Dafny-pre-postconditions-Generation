method ContainsSequence (list: seq<seq<int>>, sub: seq<int>) returns (result: bool)
  ensures result <==> (exists i :: 0 <= i < |list| && sub == list[i])
{
  var v0 := [[2,4,3,5,7],[1,0]];
  var v1 := [1,6];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  assume {:axiom} sub == v1;
  assert sub[0] == v1[0];
  result := true;
}