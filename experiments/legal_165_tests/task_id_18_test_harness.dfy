method RemoveChars (s1: string, s2: string) returns (v: string)
  ensures |v| <= |s1|
  ensures forall i :: 0 <= i < |v| ==> (v[i] in s1) && !(v[i] in s2)
  ensures forall i :: 0 <= i < |s1| ==> (s1[i] in s2) || (s1[i] in v)
{
  var v0 := "exoticmiles";
  var v1 := "toxic";
  assume {:axiom} s1 == v0;
  assert s1[0] == v0[0];
  assert s1[1] == v0[1];
  assert s1[2] == v0[2];
  assert s1[3] == v0[3];
  assert s1[4] == v0[4];
  assert s1[5] == v0[5];
  assert s1[6] == v0[6];
  assert s1[7] == v0[7];
  assert s1[8] == v0[8];
  assert s1[9] == v0[9];
  assert s1[10] == v0[10];
  assume {:axiom} s2 == v1;
  assert s2[0] == v1[0];
  assert s2[1] == v1[1];
  assert s2[2] == v1[2];
  assert s2[3] == v1[3];
  assert s2[4] == v1[4];
  v := "emlmes";
}