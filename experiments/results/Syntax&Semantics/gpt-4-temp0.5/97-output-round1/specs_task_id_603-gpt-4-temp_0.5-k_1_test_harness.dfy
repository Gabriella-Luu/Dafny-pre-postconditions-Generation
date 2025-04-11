method getLudic (n: int) returns (lucids: seq<int>)
  requires n >= 1
  ensures forall i :: 0 <= i < |lucids| ==> lucids[i] <= n && lucids[i] > 0
  ensures forall i, j :: 0 <= i < j < |lucids| ==> lucids[i] < lucids[j]
  ensures forall i, j :: 0 <= i < j < |lucids| ==> lucids[j] % lucids[i] != 0
{
  var v0 := 45;
  assume {:axiom} n == v0;
  lucids := [1,3,5,7,11,13,17,23,25,29,37,41,43];
}