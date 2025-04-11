```dafny
method isDecimal(str:string) returns (res:bool)
  requires |str| > 0;
  ensures res ==> (
    exists i :: 0 <= i < |str| && str[i] == '.' &&
    forall j :: 0 <= j < |str| ==> (
      (j != i ==> str[j] >= '0' && str[j] <= '9') &&
      (j == i ==> (j < |str| - 3 ==> false) && (j >= |str| - 3 ==> true))
    )
  );
  ensures !res ==> (
    forall i :: 0 <= i < |str| ==> (
      !(exists j :: 0 <= j < |str| && str[j] == '.' && (
        forall k :: 0 <= k < |str| ==> (
          (k != j ==> str[k] >= '0' && str[k] <= '9') &&
          (k == j ==> (k < |str| - 3 ==> false) && (k >= |str| - 3 ==> true))
        )
      ))
    )
  );
```