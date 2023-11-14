function hash (semilla, paso, N: Natural; p: Palabra): Natural;
var
    valueHash: Natural;
    i: integer;
begin
    valueHash:= semilla;
  for i := 1 to p.tope do
  begin
    valueHash := (valueHash * paso + Ord(p.cadena[i])) mod N;
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
  comparaPalabra:= salida;
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
  mayorPalabraCant:= salida;
end;

procedure agregarOcurrencia(p : Palabra; var pals: Ocurrencias);
begin
  while p <> NIL do 
  begin
    if p = pals then Nodo.palc = nodo.palc + 1 
    else 
    begin
      new(Nodo^.sig);
      Nodo^.sig^.palc := p;
      Nodo^.sig^.sig := NIL;
    end;
  end;   
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