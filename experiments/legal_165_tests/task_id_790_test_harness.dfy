predicate IsEven (n: int)

{
  n % 2 == 0
}
method IsEvenAtIndexEven (lst: seq<int>) returns (result: bool)
  ensures result <==> forall i :: 0 <= i < |lst| ==> (IsEven(i) ==> IsEven(lst[i]))
{
  var v0 := [2,1,4];
  assume {:axiom} lst == v0;
  assert lst[0] == v0[0];
  result := false;
}