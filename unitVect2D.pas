unit unitVect2D;

interface

type Vect2D = RECORD
  posX : integer;
  posY : integer;
END;

function getVectPosX(position : Vect2D):integer;
function getVectPosY(position : Vect2D):integer;
procedure setVectPosX(var position : Vect2D;X : integer);
procedure setVectPosY(var position : Vect2D;Y : integer);
function addVect(vect1,vect2 : Vect2D):Vect2D;
function sousVect(vect1,vect2 : Vect2D):Vect2D;
function scalVect(vect1 : Vect2D;scal : integer):Vect2D;
function prodScalVect(vect1,vect2 : Vect2D):integer;
function prodVect(vect1,vect2 : Vect2D):integer;

implementation

function getVectPosX(position : Vect2D):integer;
begin
  getVectPosX := position.posX;
end;

function getVectPosY(position : Vect2D):integer;
begin
  getVectPosY := position.posY;
end;

procedure setVectPosX(var position : Vect2D;X : integer);
begin
  position.posX := X;
end;

procedure setVectPosY(var position : Vect2D;Y : integer);
begin
  position.posY := Y;
end;

function addVect(vect1,vect2 : Vect2D):Vect2D;
//BUT : Addition de vecteurs
//ENTREE : 2 vecteurs 2D
//SORTIE : 1 vecteur 2D
var vectemp : Vect2D;
begin
  vectemp.posX := vect1.posX + vect2.posX;
  vectemp.posY := vect1.posY + vect2.posY;
  addVect := vectemp;
end;

function sousVect(vect1,vect2 : Vect2D):Vect2D;
//BUT : Soustraction de vecteurs
//ENTREE : 2 vecteurs 2D
//SORTIE : 1 vecteur 2D
var vectemp : Vect2D;
begin
  vectemp.posX := vect1.posX - vect2.posX;
  vectemp.posY := vect1.posY - vect2.posY;
  sousVect := vectemp;
end;

function scalVect(vect1 : Vect2D;scal : integer):Vect2D;
//BUT : Produit scalaire entre un vecteur et un nombre
//ENTREE : 1 vecteur 2D et un entier
//SORTIE : 1 vecteur 2D
var vectemp : Vect2D;
begin
  vectemp.posX := vect1.posX * scal;
  vectemp.posY := vect1.posY * scal;
  scalVect := vectemp;
end;

function prodScalVect(vect1,vect2 : Vect2D):integer;
//BUT : Produit scalaire entre deux vecteurs
//ENTREE : 2 vecteurs 2D
//SORTIE : 1 vecteur 2D
begin
  prodScalVect := vect1.posX*vect2.posX+vect1.posY*vect2.posY;
end;

function prodVect(vect1,vect2 : Vect2D): integer;
//BUT : Produit vectoriel de deux vecteurs donnant le déterminant
//ENTREE : 2 vecteurs 2D
//SORTIE : 1 nombre
begin
  prodVect := vect1.posX * vect2.posY + vect1.posY * vect2.posX;
end;

end.
