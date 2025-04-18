method ReplaceChars(s: string, oldChar: char, newChar: char) returns (v: string)
  ensures |v| == |s|
  ensures forall i :: 0 <= i < |s| ==> (s[i] == oldChar ==> v[i] == newChar) && (s[i] != oldChar ==> v[i] == s[i])
{
  var s' : string := [];
  for i := 0 to |s|
    invariant 0 <= i <= |s|
    invariant |s'| == i
    invariant forall k :: 0 <= k < i ==> (s[k] == oldChar ==> s'[k] == newChar) && (s[k] != oldChar ==> s'[k] == s[k])
  {
    if s[i] == oldChar
    {
      s' := s' + [newChar];
    }
    else
    {
      s' := s' + [s[i]];
    }
  }
  return s';
}

method ReplaceCharsTest(){
  var out1:=ReplaceChars("polygon",'y','l');
  assert out1=="pollgon";

  var out2:=ReplaceChars("character",'c','a');
  assert out2=="aharaater";

  var out3:=ReplaceChars("python",'l','a');
  assert out3=="python";

}

method Main(){
  ReplaceCharsTest();
}
