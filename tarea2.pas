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
  while (i <= p1.tope) and (i <= p2.tope) and (p1.cadena[i] = p1.cadena[i]) do
  i:= i+1;
    if p1.cadena[i] < p2.cadena[i] then
      salida:= menor
    else if p1.cadena[i] > p2.cadena[i]  then
      salida:= mayor
    else 
      salida:= igual;
  comparaPalabra:= salida;
end;
function mayorPalabraCant(pc1, pc2: PalabraCant): boolean;
begin
  mayorPalabraCant:= (pc1.cant > pc2.cant) or (pc1.cant = pc2.cant) and (comparaPalabra(pc1.pal,pc2.pal)=mayor);
end;

procedure agregarOcurrencia(p : Palabra; var pals: Ocurrencias);
var nuevNodo, iterar: Ocurrencias;
begin
  iterar := pals;
  while (iterar <> NIL) and (comparaPalabra(iterar^.palc.pal,p)<>igual) do 
    iterar := iterar^.sig;
  if iterar = NIL then
  begin
    new(nuevNodo);
    nuevNodo^.palc.pal := p;
    nuevNodo^.palc.cant := 1;
    nuevNodo^.sig := pals;
  end
  else
    iterar^.palc.cant := iterar^.palc.cant +1;
end;


procedure inicializarPredictor(var pred: Predictor);
var i :integer;
begin
    for i :=1 to MAXHASH do
      pred[i] := NIL
end;

procedure entrenarPredictor(txt: Texto; var pred: Predictor);
var iterar, sig: Texto;
begin
    iterar := txt;
    while iterar <> NIL do
    begin
      sig := iterar^.sig;
      if (iterar^.sig <> NIL) then
        agregarOcurrencia(sig^.info, pred[hash(SEMILLA, PASO, MAXHASH, iterar^.info)]);
      iterar := iterar^.sig;
  end;
end;

procedure insOrdAlternativas(pc: PalabraCant; var alts: Alternativas);
var i,j : integer;
begin
    if alts.tope < MAXALTS then
    begin
      alts.tope := alts.tope +1;
      alts.pals[alts.tope] := pc;
      i:= alts.tope;
      while (i>1) and (mayorPalabraCant(alts.pals[i], alts.pals[i-1])) do
      begin
        j := alts.pals[i].cant;
        alts.pals[i].cant := alts.pals[i-1].cant;
        alts.pals[i-1].cant := j;
        i := i-1;
      end;
    end;
end;
procedure obtenerAlternativas(p: Palabra; pred: Predictor; var alts: Alternativas);
var 
  valorHash: Natural;
  iterar: Ocurrencias;
begin
    valorHash :=  hash(SEMILLA, PASO, MAXHASH, p);
    iterar := pred[valorHash];
    alts.tope := 0; 
    while (iterar <> nil) and (alts.tope<MAXALTS) do
    begin
        insOrdAlternativas(iterar^.palc, alts);
        iterar := iterar^.sig;
    end;
end;
