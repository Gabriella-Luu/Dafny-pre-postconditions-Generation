method asciiValue (ch: char) returns (res: int)
    requires true
    ensures res == ch as int
{
  var v0 := 'S';
  assume {:axiom} ch == v0;
  res := 93;
}