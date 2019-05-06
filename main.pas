program main;
//BUT : Programme principal
uses unitGameObject,unitVect2D,unitBall,crt;

var obj : gameObject;
  vec : Vect2D;
  balle : ball;
begin
  clrscr;
  //Test d'un Vect2D
  writeln('Un vecteur 2D');
  setVectPosX(vec,5);
  setVectPosY(vec,6);
  writeln('Position X : ',getVectPosX(vec));
  writeln('Position Y : ',getVectPosY(vec));
  writeln;
  //Test d'un gameObject
  writeln('Un gameObject');
  setObjPosition(obj,vec);
  setObjTexture(obj,3);
  writeln('Position X : ',getVectPosX(getObjPosition(obj)));
  writeln('Position Y : ',getVectPosY(getObjPosition(obj)));
  writeln('Texture : ',getObjTexture(obj));
  writeln;

  //Test d'un ball
  writeln('Une balle');
  setBallObj(balle,obj);
  setBallColor(balle,2);
  setBallVelocite(balle,7);
  writeln('Couleur : ',getBallColor(balle));
  writeln('Velocite : ',getBallVelocite(balle));
  writeln('Position X : ',getVectPosX(getObjPosition(getBallObj(balle))));
  writeln('Position Y : ',getVectPosY(getObjPosition(getBallObj(balle))));
  writeln('Texture : ',getObjTexture(getBallObj(balle)));
  readln;
end.
