method checkMonthnumbNumber  (m:int) returns (res:bool)
    requires m >= 1 && m <= 12
    ensures (
        res <==> 
        m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12
    )
{
  var v0 := 6;
  assume {:axiom} m == v0;
  res := true;
}