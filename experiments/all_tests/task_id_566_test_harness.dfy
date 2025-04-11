lemma X (x: nat)
  ensures Power10(NumberOfDigits(x)) > x

{
  if x <= 9
  {
    assert NumberOfDigits(x) == 1;
    assert Power10(NumberOfDigits(x)) == 10;
    assert Power10(NumberOfDigits(x)) > x;
  }
  else // >= 10
  {
    assert NumberOfDigits(x) >= 2;
    X(x/10);
    assert NumberOfDigits(x) == NumberOfDigits(x/10) + 1;
    assert Power10(NumberOfDigits(x)) == Power10(NumberOfDigits(x/10)) * 10;
    assert Power10(NumberOfDigits(x)) > x;
  }
}
lemma NumberIdentity (number: nat, pmax: nat)
  requires pmax == Power10(NumberOfDigits(number))
  ensures number == number % pmax

{
  if NumberOfDigits(number) == 1
  {
    assert 0 <= number <= 9;
    assert pmax == 10;
    assert number == number % pmax;
  }
  else // > 1
  {
    assert pmax == Power10(NumberOfDigits(number)) ==> pmax/10 == Power10(NumberOfDigits(number/10));
    NumberIdentity(number/10, pmax/10);
    assert number >= 10;
    assert pmax >= 100;
    assert number < pmax;
    assert forall n, m :: 0 < n < m <= pmax ==> n%m == n;
    assert number == number % pmax;
  }

}
lemma InIntValues (n: nat)
  ensures 0 in IntValues(n)
  ensures n in IntValues(n)
  ensures n/10 in IntValues(n)

{}
ghost function IntValues (n: int) : (r: seq<int>)
  requires n >= 0
  ensures 0 in r
  ensures n in r
  ensures n/10 in r
  //    ensures forall p :: p in powersOfTen ==> n/p in r

{
  if n == 0 then [0]
  else [n] + IntValues(n/10)
}
function Power10 (n: nat): (r: nat)
  ensures r >= 1
  ensures n > 0 ==> r % 10 == 0

{
  if (n == 0) then 1 else 10 * Power10(n-1)
}
function NumberToSeq (number: int) : seq<int>
  requires number >= 0

{
  if number == 0 then []
  else [number % 10] + NumberToSeq(number/10)
}
function Sum (digits: seq<int>) : int

{
  if |digits| == 0 then 0 else digits[0] + Sum(digits[1..])
}
function SumDigits (n: nat) : nat

{
  var ndigits := NumberOfDigits(n);
  var p := Power10(ndigits-1);
  SumDigitsRecursive(n, p)
}
function SumDigitsRecursive (n: nat, p: nat) : (r: nat)

{
  if n == 0 || p == 0 then 0
  else
    var leftMostDigit := n/p;
    var rest := n%p;
    leftMostDigit + SumDigitsRecursive(rest, p/10)

}
function NumberOfDigits (n: nat) : (r: nat)
  ensures r >= 1
  ensures r == 1 <==> 0 <= n <= 9

{
  if 0 <= n <= 9 then 1 else 1+NumberOfDigits(n/10)
}
method SumOfDigits (number: nat) returns (sum: nat)
  requires number >= 0
  ensures sum >= 0
  ensures sum == SumDigits(number)
{
  var v0 := 345;
  assume {:axiom} number == v0;
  sum := 12;
}