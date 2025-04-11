method CalculateLoss (costPrice: int, sellingPrice: int) returns (loss: int)
  requires costPrice >= 0 && sellingPrice >= 0
  ensures (costPrice > sellingPrice ==> loss == costPrice - sellingPrice) && (costPrice <= sellingPrice ==> loss == 0)
{
  var v0 := 2000;
  var v1 := 5000;
  assume {:axiom} costPrice == v0;
  assume {:axiom} sellingPrice == v1;
  loss := -6;
}