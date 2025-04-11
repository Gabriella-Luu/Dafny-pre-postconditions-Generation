method Swap(a: int, b: int) returns (result: seq<int>)
  ensures |result| == 2
  ensures result[0] == b
  ensures result[1] == a
{
  result := [b, a];
}


method SwapTest(){
  var res1:=Swap(10,20);
  //expected [20,10]

  var res2:=Swap(17,15);
  //expected [15,17];

  var res3:=Swap(100,200);
  //expected [200,100];

}

method Main(){
  SwapTest();
}