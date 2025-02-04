```ada
function Check_Range_Safe(Value : Integer; Min : Integer; Max : Integer) return Boolean is
begin
  if Value < Min then
    return False;
  elsif Value > Max then
    return False;
  else
    return True;
  end if;
end Check_Range_Safe;

procedure Example_Safe is
  Result : Boolean;
begin
  Result := Check_Range_Safe(10, 1, 100); -- Correct usage
  Put_Line("Result: " & Boolean'Image(Result));

  Result := Check_Range_Safe(500, 1, 100); -- Value outside range
  Put_Line("Result: " & Boolean'Image(Result));  -- Correct Result
end Example_Safe;
```