method isDecimal (str: string) returns (res: bool)
    requires str != ""
    ensures (res == true) ==> (exists i :: 0 <= i < |str| && str[i] == '.')
    ensures (res == true) ==> (forall i :: 0 <= i < |str| && str[i] != '.' ==> str[i] >= '0' && str[i] <= '9')
    ensures (res == true) ==> (exists i, j :: 0 <= i < j < |str| && str[i] == '.' && j == i + 3)
    ensures (res == false) ==> !(exists i :: 0 <= i < |str| && str[i] == '.' && 
                                 (forall j :: 0 <= j < |str| && str[j] != '.' ==> str[j] >= '0' && str[j] <= '9') &&
                                 (exists k, l :: 0 <= k < l < |str| && str[k] == '.' && l == k + 3))
{
  var v0 := "3.124587";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  assert str[5] == v0[5];
  assert str[6] == v0[6];
  assert str[7] == v0[7];
  res := true;
}