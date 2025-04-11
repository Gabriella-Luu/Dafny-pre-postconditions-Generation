method PairwiseAddition(a: array<int>) returns (result: array<int>)
  requires a != null
  requires a.Length % 2 == 0
  ensures result != null
  ensures result.Length == a.Length / 2
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[2*i] + a[2*i + 1]
{
  result := new int[a.Length / 2];
  var i := 0;
  while i < a.Length / 2
    invariant 0 <= i <= a.Length / 2
    invariant result.Length == a.Length / 2
    invariant forall k :: 0 <= k < i ==> result[k] == a[2*k] + a[2*k + 1]
  {
    result[i] := a[2*i] + a[2*i + 1];
    i := i + 1;
  }
}

method PairwiseAdditionTest(){
  var s1:= new int[] [1, 5, 7, 8, 10];
  var res1 := PairwiseAddition(s1);
  //expected [6, 12, 15, 18];



  var s2:= new int[] [2, 6, 8, 9, 11];
  var res2:=PairwiseAddition(s2);
  //expected [8, 14, 17, 20];


  var s3:= new int[][3, 7, 9, 10, 12];
  var res3:=PairwiseAddition(s3);
  //expected [10, 16, 19, 22];

}

method Main(){
  PairwiseAdditionTest();
}
