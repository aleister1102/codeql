import tutorial

from Person t
/*1*/where t.getHeight() > 150 and 
/*2*/t.getHairColor() != "blond" and
/*3*/t.getHairColor().length() > 1 and
/*3 Alternative: exists(string str | t.getHairColor() = str) and
/*4*/t.getAge() >= 30 and
/*5*/t.getLocation() = "east" and
/*6*/(t.getHairColor() = "black" or t.getHairColor() = "brown") and
/*7*/not (t.getHeight() > 180 and t.getHeight() < 190) and
/*8*/exists(Person p | p.getAge() > t.getAge()) and
/*9*/t != max(Person p | | p order by p.getHeight()) and
/*10*/ t.getHeight() < avg(Person p | | p.getHeight()) and
/*11*/ t = max(Person p | p.getLocation() = "east" | p order by p.getAge())
select t
