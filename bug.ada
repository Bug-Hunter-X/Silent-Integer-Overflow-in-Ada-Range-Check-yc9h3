```ada
function Check_Range(Value : Integer; Min : Integer; Max : Integer) return Boolean is
begin
  return Value >= Min and Value <= Max;
end Check_Range;

procedure Example is
  Result : Boolean;
begin
  Result := Check_Range(10, 1, 100); -- Correct usage
  Put_Line("Result: " & Boolean'Image(Result));

  Result := Check_Range(500, 1, 100); -- Value outside range
  Put_Line("Result: " & Boolean'Image(Result));  -- Incorrect Result because of Integer overflow
end Example;
```