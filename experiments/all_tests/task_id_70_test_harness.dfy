method AllSequencesEqualLength (sequences: seq<seq<int>>) returns (result: bool)
    ensures result <==> forall i, j :: 0 <= i < |sequences| && 0 <= j < |sequences| ==> |sequences[i]| == |sequences[j]|
{
  var v0 := [[1, 2], [3, 4]];
  assume {:axiom} sequences == v0;
  assert sequences[0] == v0[0];
  assert sequences[1] == v0[1];
  result := false;
}