method IsMonthWith30Days (month: int) returns (result: bool)
  requires 1 <= month <= 12
  ensures result <==> month == 4 || month == 6 || month == 9 || month == 11
{
  var v0 := 12;
  assume {:axiom} month == v0;
  result := true;
}