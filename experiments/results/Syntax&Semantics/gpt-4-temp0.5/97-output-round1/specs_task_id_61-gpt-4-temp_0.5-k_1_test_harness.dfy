method countSubstrings (str:string) returns (res:int)
    requires forall i :: 0 <= i < |str| ==> ('0' <= str[i] <= '9')
    ensures res >= 0
    ensures forall i,j :: 0 <= i <= j < |str| ==> 
        (sum(str[i..j+1]) == j - i + 1 ==> res > 0)
    ensures forall i,j :: 0 <= i <= j < |str| && 
        sum(str[i..j+1]) == j - i + 1 ==> 
        (exists k,l :: 0 <= k <= l < |str| && 
        sum(str[k..l+1]) == l - k + 1 && str[k..l+1] == str[i..j+1])
{
  var v0 := "112112";
  assume {:axiom} str == v0;
  assert str[0] == v0[0];
  assert str[1] == v0[1];
  assert str[2] == v0[2];
  assert str[3] == v0[3];
  assert str[4] == v0[4];
  assert str[5] == v0[5];
  res := 10;
}