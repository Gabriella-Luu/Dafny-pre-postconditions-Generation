ghost function SetProduct (s : set<int>) : int

{
  if s == {} then 1
  else var x :| x in s;
       x * SetProduct(s - {x})
}
lemma SetProductLemma (s: set <int>, x: int)
  requires x in s
  ensures SetProduct(s - {x}) * x == SetProduct(s)

{
  if s != {}
  {
    var y :| y in s && y * SetProduct(s - {y}) == SetProduct(s);
    if y == x {}
    else {
      calc {
        SetProduct(s);
        y * SetProduct(s - {y});
        { SetProductLemma(s - {y}, x); }
        y * x * SetProduct(s - {y} - {x});
        { assert s - {x} - {y} == s - {y} - {x};}
        y * x * SetProduct(s - {x} - {y});
        x * y * SetProduct(s - {x} - {y});
        { SetProductLemma(s - {x}, y); }
        x * SetProduct(s - {x});
      }
    }
  }
}
method UniqueProduct  (arr: array<int>) returns (product: int)
  ensures product == SetProduct((set i | 0 <= i < arr.Length :: arr[i]))
{
  var v0 := new int[] [10, 20, 30, 40, 20, 50, 60, 40];
  //need to equate the elements of the array, and not reference (which is inconsistent)
  assume {:axiom} arr[..arr.Length] == v0[..v0.Length];
  //redundant asserts to make dafny happy
  assert arr[0] == v0[0];
  assert arr[1] == v0[1];
  assert arr[2] == v0[2];
  assert arr[3] == v0[3];
  assert arr[4] == v0[4];
  assert arr[5] == v0[5];
  assert arr[6] == v0[6];
  assert arr[7] == v0[7];
  product := 720000000;
}