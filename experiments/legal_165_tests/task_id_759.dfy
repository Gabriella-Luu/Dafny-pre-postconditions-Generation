method IsDecimalWithTwoPrecision(s: string) returns (result: bool)
  ensures result ==> (exists i :: 0 <= i < |s| && s[i] == '.' && |s| - i - 1 == 2)
  ensures !result ==> !(exists i :: 0 <= i < |s| && s[i] == '.' && |s| - i - 1 == 2)
{
  result := false;
  for i := 0 to |s|
    invariant 0 <= i <= |s|
    invariant result <==> (exists k :: 0 <= k < i && s[k] == '.' && |s| - k - 1 == 2)
  {
    if s[i] == '.' && |s| - i - 1 == 2 {
      result := true;
      break;
    }
  }
}


method IsDecimalWithTwoPrecisionTest(){
  var res1:=IsDecimalWithTwoPrecision("123.11");
  assert res1==true;

  var res2:=IsDecimalWithTwoPrecision("e666.86");
  assert res2==false;

  var res3:=IsDecimalWithTwoPrecision("3.124587");
  assert res3==false;
}

method Main(){
  IsDecimalWithTwoPrecisionTest();
}
