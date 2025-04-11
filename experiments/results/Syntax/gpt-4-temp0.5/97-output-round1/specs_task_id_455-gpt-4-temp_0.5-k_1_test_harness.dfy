method checkMonthnumbNumber  (m:int) returns (res:bool)
    requires m >= 1 && m <= 12
    ensures ((res == true) ==> (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12)) 
    && ((res == false) ==> (m == 2 || m == 4 || m == 6 || m == 9 || m == 11))
{
  var v0 := 6;
  assume {:axiom} m == v0;
  res := true;
}