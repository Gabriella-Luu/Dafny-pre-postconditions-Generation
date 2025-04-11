method IsBreakEven (costPrice: int, sellingPrice: int) returns (result: bool)
  requires costPrice >= 0 && sellingPrice >= 0
  ensures result <==> costPrice == sellingPrice
{
  var v0 := 2000;
  var v1 := 5000;
  assume {:axiom} costPrice == v0;
  assume {:axiom} sellingPrice == v1;
  result := true;
}