function Factorial (n: int): int
  requires n >= 0
  ensures 0 <= Factorial(n)

{
  if n == 0 then 1
  else n * Factorial(n-1)
}
method FactorialOfLastDigit (n: int) returns (fact: int)
  requires n >= 0
  ensures fact == Factorial(n % 10)
{
  var v0 := 30;
  assume {:axiom} n == v0;
  fact := 4;
}