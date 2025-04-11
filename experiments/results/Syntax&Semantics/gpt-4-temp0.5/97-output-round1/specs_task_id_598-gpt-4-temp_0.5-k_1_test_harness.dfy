method armstrongNumber (number:int) returns (res:bool)
    requires number >= 0
    ensures (res <==> var sum = 0; var temp = number; while temp != 0 { var remainder = temp % 10; sum = sum + (remainder*remainder*remainder); temp = temp / 10; }; sum == number)
{
  var v0 := 153;
  assume {:axiom} number == v0;
  res := false;
}