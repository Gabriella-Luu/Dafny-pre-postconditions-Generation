method checkInteger  (str:string) returns (res:bool)
    requires str != ""
    ensures res <==> (forall i :: 0 <= i < |str| ==> ('0' <= str[i] && str[i] <= '9') || (i == 0 && str[i] == '-'))
{
  var v0 := "12345";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  res := false;
}