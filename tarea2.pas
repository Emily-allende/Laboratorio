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

function comparaPalabra(p1, p2: Palabra):Comparacion;
begin
    
end;

function mayorPalabraCant(pc1, pc2: PalabraCant): boolean;
begin
    
end;

procedure agregarOcurrencia(p : Palabra; var pals: Ocurrencias);
begin
    
end;

procedure inicializarPredictor(var pred: Predictor);
begin
    
end;

procedure entrenarPredictor(txt: Texto; var pred: Predictor);
begin
    
end;

procedure insOrdAlternativas(pc: PalabraCant; var alts: Alternativas);
begin
    
end;

procedure obtenerAlternativas(p: Palabra; pred: Predictor; var alts: Alternativas);
begin
    
end;