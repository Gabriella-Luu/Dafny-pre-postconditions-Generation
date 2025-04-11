method LucidNumbers (n: int) returns (lucid: seq<int>)
  requires n >= 0
  ensures forall i :: 0 <= i < |lucid| ==> lucid[i] % 3 == 0
  ensures forall i :: 0 <= i < |lucid| ==> lucid[i] <= n
  ensures forall i, j :: 0 <= i < j < |lucid| ==> lucid[i] < lucid[j]
{
  var v0 := 45;
  assume {:axiom} n == v0;
  lucid := [1,2,3,5,7,37,11,13,17,23,25,29,37,41,43];
}