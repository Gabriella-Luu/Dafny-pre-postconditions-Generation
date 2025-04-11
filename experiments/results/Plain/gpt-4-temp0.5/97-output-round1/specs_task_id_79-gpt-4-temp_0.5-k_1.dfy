```dafny
method wordLen(str: string) returns (res: bool)
  requires str != null  // the input string must not be null
  ensures (str.Length % 2 == 0 && res == false) || (str.Length % 2 != 0 && res == true)  
  // if the length of the string is even, the result should be false
  // if the length of the string is odd, the result should be true
{}
```