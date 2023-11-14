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
var 
  salida: Comparacion;
  i: integer;
begin
  i := 1;
  while (i <= p1.tope) and (i <= p2.tope) do
    if p1.cadena[i] < p2.cadena[i] then
      salida:= menor;
    else if p1.cadena[i] > p2.cadena[i]  then
      salida:= mayor;
    else 
      salida:= igual;
  comparaPalabra:= salida;
end;

function mayorPalabraCant(pc1, pc2: PalabraCant): boolean;
begin
  mayorPalabraCant:= (pc1.cant > pc2.cant) or (pc1.cant = pc2.cant);
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