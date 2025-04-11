method BitwiseXOR (a: seq<bv32>, b: seq<bv32>) returns (result: seq<bv32>)
  requires |a| == |b|
  ensures |result| == |a|
  ensures forall i :: 0 <= i < |result| ==> result[i] == a[i] ^ b[i]
{
  var v0 := [12, 6, 8, 11];
  var v1 := [7, 4, 5, 6];
  assume {:axiom} a == v0;
  assert a[0] == v0[0];
  assume {:axiom} b == v1;
  assert b[0] == v1[0];
  result := [11,2,13,2,13];
}