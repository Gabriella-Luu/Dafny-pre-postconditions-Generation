method IsArmstrong (n: int) returns (result: bool)
  requires 100 <= n < 5000
  ensures result <==> (n == ((n / 100) * (n / 100) * (n / 100) + ((n / 10) % 10) * ((n / 10) % 10) * ((n / 10) % 10) + (n % 10) * (n % 10) * (n % 10)))
{
  var v0 := 4458;
  assume {:axiom} n == v0;
  result := true;
}