% first four positive polarity
% ci1 "center"
cp1=tmeet(m12m34,m13m24,m14m23);
cp2=tmeet(m12m34,m31m42,m41m32);
cp3=tmeet(m21m43,m13m24,m41m32);
cp4=tmeet(m21m43,m31m42,m14m23);
% second four negative polarity
cn1=tmeet(m21m34,m31m24,m41m23);
cn2=tmeet(m21m34,m13m42,m14m32);
cn3=tmeet(m12m43,m31m24,m14m32);
cn4=tmeet(m12m43,m13m42,m41m23);
