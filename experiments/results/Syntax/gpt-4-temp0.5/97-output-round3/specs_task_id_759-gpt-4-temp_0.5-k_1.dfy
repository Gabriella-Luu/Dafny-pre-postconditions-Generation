```dafny
method isDecimal(str:string) returns (res:bool)
  requires |str| > 0
  ensures (res == true) ==> (
    (forall i :: 0 <= i < |str| ==> str[i] in {'0'..'9', '.'}) &&
    (exists i :: 0 <= i < |str| && str[i] == '.') &&
    (|str| - (str.IndexOf('.') + 1) == 2)
  )
  ensures (res == false) ==> !((
    (forall i :: 0 <= i < |str| ==> str[i] in {'0'..'9', '.'}) &&
    (exists i :: 0 <= i < |str| && str[i] == '.') &&
    (|str| - (str.IndexOf('.') + 1) == 2)
  ))
```