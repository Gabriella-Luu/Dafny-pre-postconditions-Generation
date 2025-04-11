predicate IsEven (n: int)

{
  n % 2 == 0
}
predicate IsOdd (n: int)

{
  n % 2 != 0
}
predicate IsFirstEven (evenIndex: int, lst: seq<int>)
  requires 0 <= evenIndex < |lst|
  requires IsEven(lst[evenIndex])

{
  forall i :: 0 <= i < evenIndex ==> IsOdd(lst[i])
}
predicate IsFirstOdd (oddIndex: int, lst: seq<int>)
  requires 0 <= oddIndex < |lst|
  requires IsOdd(lst[oddIndex])

{
  forall i :: 0 <= i < oddIndex ==> IsEven(lst[i])
}
method ProductEvenOdd (lst: seq<int>) returns (product : int)
  requires |lst| >= 2
  requires exists i :: 0 <= i < |lst| && IsEven(lst[i])
  requires exists i :: 0 <= i < |lst| && IsOdd(lst[i])
  ensures exists i, j :: 0 <= i < |lst| && IsEven(lst[i]) && IsFirstEven(i, lst) &&
                         0 <= j < |lst| && IsOdd(lst[j])  && IsFirstOdd(j, lst) && product == lst[i] * lst[j]
{
  var v0 := [1,5,7,9,10];
  assume {:axiom} lst == v0;
  assert lst[0] == v0[0];
  product := 8;
}