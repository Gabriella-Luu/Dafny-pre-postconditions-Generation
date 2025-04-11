```dafny
method numberOfSubstrings(str: string) returns (res: int)
  requires |str| >= 0
  ensures res == (|str| * (|str| + 1)) / 2
  ensures forall i :: 0 <= i < |str| ==> (exists j :: i <= j < |str| && str[i..j+1] != "")
{
}
```