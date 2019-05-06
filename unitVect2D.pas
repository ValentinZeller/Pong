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

end.
