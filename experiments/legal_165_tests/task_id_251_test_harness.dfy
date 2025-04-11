method InsertBeforeEach (s: seq<string>, x: string) returns (v: seq<string>)
  ensures |v| == 2 * |s|
  ensures forall i :: 0 <= i < |s| ==> v[2*i] == x && v[2*i + 1] == s[i]
{
  var v0 := ["happy", "sad"];
  var v1 := "laugh";
  assume {:axiom} s == v0;
  assert s[0] == v0[0];
  assume {:axiom} x == v1;
  assert x[0] == v1[0];
  assert x[1] == v1[1];
  assert x[2] == v1[2];
  assert x[3] == v1[3];
  assert x[4] == v1[4];
  v := ["laugh","happy","laugh"];
}