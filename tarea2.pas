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
var slaida: Comparacion;
begin
    if p1 < p2 then
      slaida:= menor;
    else if p1 > p2 then
      slaida:= mayor;
    else salida:= igual;
end;

function mayorPalabraCant(pc1, pc2: PalabraCant): boolean;
var salida : boolean;
begin
    if pc1.cantidad > pc2.cantidad then
      salida := true;
    else if pc1.cantidad = pc2.cantidad then
      if pc1.palabra > pc2.palabra then
        salida := true;
    salida := false;
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