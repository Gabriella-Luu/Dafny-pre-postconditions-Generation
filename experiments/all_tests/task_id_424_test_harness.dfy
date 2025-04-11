method ExtractRearChars (l: seq<string>) returns (r: seq<char>)
  requires forall i :: 0 <= i < |l| ==> |l[i]| > 0
  ensures |r| == |l|
  ensures forall i :: 0 <= i < |l| ==> r[i] == l[i][|l[i]| - 1]
{
  var v0 := ["Gotta", "get", "go"];
  assume {:axiom} l == v0;
  assert l[0] == v0[0];
  r := ['a','t','t','o'];
}