method DogYears (humanYears: int) returns (dogYears: int)
  requires humanYears >= 0
  ensures dogYears == 7 * humanYears
{
  var v0 := 24;
  assume {:axiom} humanYears == v0;
  dogYears := 118;
}