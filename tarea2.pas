function hash (semilla, paso, N: Natural; p: Palabra): Natural;
var
    valueHash: Natural;
    i: integer;
begin
    valueHash:= semilla;
  for i := 1 to Length(p) do
  begin
    valueHash := (valueHash * paso + Ord(p[i])) mod N;
  end;
  hash := valueHash;
end;