```dafny
method isDecimal(str: string) returns (res: bool)
  requires str.Length > 0
  ensures (res == true) ==> (str.Contains(".") && str.Length - str.IndexOf(".") - 1 == 2) 
  ensures (res == false) ==> !(str.Contains(".") && str.Length - str.IndexOf(".") - 1 == 2)
```
This method requires that the input string is not empty. The postconditions ensure that if the result is true, the string contains a decimal point and there are exactly two characters after the decimal point. If the result is false, it means that the string does not contain a decimal point or there are not exactly two characters after the decimal point.