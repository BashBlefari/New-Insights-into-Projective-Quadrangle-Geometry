% Median lines
% triangle 1, \overline{a2a3a4}
D123=joinx(a4,m23);D132=joinx(a4,m32);
D124=joinx(a3,m24);D142=joinx(a3,m42);
D134=joinx(a2,m34);D143=joinx(a2,m43);
% triangle 2, \overline{a1a3a4}
D213=joinx(a4,m13);D231=joinx(a4,m31);
D214=joinx(a3,m14);D241=joinx(a3,m41);
D234=joinx(a1,m34);D243=joinx(a1,m43);
% triangle 3, \overline{a1a2a4}
D312=joinx(a4,m12);D321=joinx(a4,m21);
D314=joinx(a2,m14);D341=joinx(a2,m41);
D324=joinx(a1,m24);D342=joinx(a1,m42);
% triangle 4, \overline{a1a2a3}
D412=joinx(a3,m12);D421=joinx(a3,m21);
D413=joinx(a2,m13);D431=joinx(a2,m31);
D423=joinx(a1,m23);D432=joinx(a1,m32);

