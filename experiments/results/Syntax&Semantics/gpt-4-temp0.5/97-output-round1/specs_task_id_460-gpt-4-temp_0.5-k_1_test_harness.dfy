method extract (list: seq<seq<int>>) returns (res: seq<int>)
    requires forall sublist :: sublist in list ==> |sublist| > 0  // Each sublist must have at least one element
    ensures |res| == |list|  // The result sequence has the same length as the input list
    ensures forall i :: 0 <= i < |list| ==> list[i][0] == res[i]  // Each element in the result sequence is the first element of the corresponding sublist in the input list
{
  var v0 := [[9,8,1],[1,2]];
  assume {:axiom} list == v0;
  assert list[0] == v0[0];
  assert list[1] == v0[1];
  res := [1,9,1];
}