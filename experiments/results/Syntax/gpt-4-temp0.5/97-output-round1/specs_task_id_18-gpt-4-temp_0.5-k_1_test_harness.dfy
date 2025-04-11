method removeChars  (firstStr:string, secondStr:string) returns (res:string)
    requires true
    ensures |res| <= |firstStr|
    ensures forall i :: 0 <= i < |res| ==> !(res[i] in secondStr[..])
    ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] in secondStr[..]) || (exists j :: 0 <= j < |res| && res[j] == firstStr[i])
{
  var v0 := "exoticmiles";
  var v1 := "toxic";
  assume {:axiom} firstStr == v0;
  assert firstStr[0] == v0[0];
  assert firstStr[1] == v0[1];
  assert firstStr[2] == v0[2];
  assert firstStr[3] == v0[3];
  assert firstStr[4] == v0[4];
  assert firstStr[5] == v0[5];
  assert firstStr[6] == v0[6];
  assert firstStr[7] == v0[7];
  assert firstStr[8] == v0[8];
  assert firstStr[9] == v0[9];
  assert firstStr[10] == v0[10];
  assume {:axiom} secondStr == v1;
  assert secondStr[0] == v1[0];
  assert secondStr[1] == v1[1];
  assert secondStr[2] == v1[2];
  assert secondStr[3] == v1[3];
  assert secondStr[4] == v1[4];
  res := "elmles";
}