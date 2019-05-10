program main;
//BUT : Programme principal
uses unitGameObject,unitVect2D,unitBall,crt;

var obj : gameObject;
  vec,vec1,vec2 : Vect2D;
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
  writeln;

  //Test des opérations sur les vecteurs
  setVectPosX(vec1,1);
  setVectPosY(vec1,2);
  setVectPosX(vec2,3);
  setVectPosY(vec2,4);
  writeln('Vecteur 1 : X : ',getVectPosX(vec1),' Y : ',getVectPosY(vec1));
  writeln('Vecteur 2 : X : ',getVectPosX(vec2),' Y : ',getVectPosY(vec2));
  writeln('Addition : Position X : ',getVectPosX(addVect(vec1,vec2)));
  writeln('Addition : Position Y : ',getVectPosY(addVect(vec1,vec2)));
  writeln('Soustraction : Position X : ',getVectPosX(sousVect(vec1,vec2)));
  writeln('Soustraction : Position Y : ',getVectPosY(sousVect(vec1,vec2)));
  writeln('Scalaire : Position X : ',getVectPosX(scalVect(vec1,2)));
  writeln('Scalaire : Position Y : ',getVectPosY(scalVect(vec1,2)));
  writeln('Produit scalaire entre 2 vecteurs : ',prodScalVect(vec1,vec2));
  writeln('Produit vectoriel : X : ',getVectPosX(prodVect(vec1,vec2)),' Y : ',getVectPosY(prodVect(vec1,vec2)));
  readln;
end.
