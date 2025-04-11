```dafny
method leftRotate (n: bv32, d: int) returns (r: bv32)
  ensures r == ((n << (d % 32)) | (n >> (32 - (d % 32))))
{
}
```