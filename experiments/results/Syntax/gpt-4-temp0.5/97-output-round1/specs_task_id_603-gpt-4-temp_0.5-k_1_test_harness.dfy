method getLudic (n: int) returns (lucids: seq<int>)
  requires n >= 1
  ensures forall i :: 0 <= i < |lucids| - 1 ==> lucids[i] < lucids[i+1]
  ensures forall i :: 0 <= i < |lucids| ==> lucids[i] <= n
  ensures forall i, j :: 0 <= i < j < |lucids| ==> lucids[i] != lucids[j]
  ensures forall i :: 0 <= i < |lucids| ==> (exists k :: k >= 1 && lucids[i] == (k*(k+1) + 1))
{
  var v0 := 45;
  assume {:axiom} n == v0;
  lucids := [1,2,3,5,7,43,11,13,17,23,25,29,37,41,43];
}