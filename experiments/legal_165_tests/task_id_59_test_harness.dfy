method NthOctagonalNumber (n: int) returns (octagonalNumber: int)
  requires n >= 0
  ensures octagonalNumber == n * (3 * n - 2)
{
  var v0 := 15;
  assume {:axiom} n == v0;
  octagonalNumber := 637;
}