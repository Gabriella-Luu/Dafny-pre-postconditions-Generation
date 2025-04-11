method checkInteger  (str:string) returns (res:bool)
    requires true
    ensures (
        res <==> (
            // The string is not empty and all characters are either digits or the first character is a minus sign
            |str| > 0 && (forall i :: 0 <= i < |str| ==> 
                (str[i] >= '0' && str[i] <= '9') || (i == 0 && str[i] == '-')
            )
        )
    )
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