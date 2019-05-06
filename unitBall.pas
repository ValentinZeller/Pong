unit unitBall;

interface

uses unitGameObject;

type ball = RECORD
  obj : gameObject;
  color : integer;
  velocite : integer;
END;

function getBallObj(balle : ball):gameObject;
function getBallColor(balle : ball):integer;
function getBallVelocite(balle : ball):integer;
procedure setBallObj(var balle : ball; obj : gameObject);
procedure setBallColor(var balle : ball; color : integer);
procedure setBallVelocite(var balle : ball; velocite : integer);

implementation

function getBallObj(balle : ball):gameObject;
begin
  getBallObj := balle.obj;
end;

function getBallColor(balle : ball):integer;
begin
  getBallColor := balle.color;
end;

function getBallVelocite(balle : ball):integer;
begin
  getBallVelocite := balle.velocite;
end;

procedure setBallObj(var balle : ball; obj : gameObject);
begin
  balle.obj := obj;
end;

procedure setBallColor(var balle : ball; color : integer);
begin
  balle.color := color;
end;

procedure setBallVelocite(var balle : ball; velocite : integer);
begin
  balle.velocite := velocite;
end;

end.
