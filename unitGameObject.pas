unit unitGameObject;

interface

uses unitVect2D;

type gameObject = RECORD
  position : Vect2D;
  texture : integer;
END;

function getObjPosition(objet : gameObject):Vect2D;
function getObjTexture(objet : gameObject):integer;
procedure setObjPosition(var objet : gameObject;position : Vect2D);
procedure setObjTexture(var objet : gameObject;texture : integer);

implementation

function getObjPosition(objet : gameObject):Vect2D;
begin
  getObjPosition := objet.position;
end;

function getObjTexture(objet : gameObject):integer;
begin
  getObjTexture := objet.texture;
end;

procedure setObjPosition(var objet : gameObject;position : Vect2D);
begin
  objet.position := position;
end;

procedure setObjTexture(var objet : gameObject;texture : integer);
begin
  objet.texture := texture;
end;

end.
