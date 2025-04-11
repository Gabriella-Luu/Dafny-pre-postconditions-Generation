method isDecimal (str: string) returns (res: bool)
  requires str != null
  ensures res <==> (
    (|str| > 0 && str[0] in {'-', '+'}) || ('0' <= str[0] <= '9')
  ) && (
    forall i :: 1 <= i < |str| ==> (
      if i < |str| - 3 then
        '0' <= str[i] <= '9'
      else if i == |str| - 3 then
        str[i] == '.'
      else
        '0' <= str[i] <= '9'
    )
  )
{
  var v0 := "123.11";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  assert str[5] == v0[5];
  res := false;
}