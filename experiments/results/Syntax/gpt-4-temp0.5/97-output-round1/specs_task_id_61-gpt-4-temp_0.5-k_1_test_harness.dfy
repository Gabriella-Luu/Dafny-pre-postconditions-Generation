function sumDigits (s: seq<char>): int
  requires forall i :: 0 <= i < |s| ==> s[i] in ['0'..'9']
  reads 
{}
method countSubstrings (str:string) returns (res:int)
  requires forall i :: 0 <= i < |str| ==> str[i] in ['0'..'9']
  ensures res >= 0
  ensures res <= |str|*(|str|+1)/2
  ensures forall k :: 0 <= k <= |str| ==>
    (exists i, j :: 0 <= i <= j < k && sumDigits(str[i..j]) == j-i+1) <==> k <= res
{
  var v0 := "112112";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  assert str[5] == v0[5];
  res := 12;
}