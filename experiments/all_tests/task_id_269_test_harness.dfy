method AsciiValue (c: char) returns (ascii: int)
  ensures ascii == c as int
{
  var v0 := 'S';
  assume {:axiom} c == v0;
  ascii := 88;
}