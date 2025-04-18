method Min(a: int, b: int) returns (minValue: int)
  ensures minValue == a || minValue == b
  ensures minValue <= a && minValue <= b
{
  if a <= b {
    minValue := a;
  } else {
    minValue := b;
  }
}

method MinTest(){
  var out1:=Min(1,2);
  assert out1==1;
  
  var out2:=Min(-5,-4);
  assert out2==-5;

  var out3:=Min(0,0);
  assert out3==0;

}

method Main(){
  MinTest();
}
