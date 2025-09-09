import tutorial

predicate isThief(Person p) {
    /*1*/   where this.getHeight() > 150 and 
    /*2*/   this.getHairColor() != "blond" and
    /*3*/   this.getHairColor().length() > 1 and
    /*3     Alternative: exists(string str | this.getHairColor() = str) and
    /*4*/   this.getAge() >= 30 and
    /*5*/   this.getLocation() = "east" and
    /*6*/   (this.getHairColor() = "black" or this.getHairColor() = "brown") and
    /*7*/   not (this.getHeight() > 180 and this.getHeight() < 190) and
    /*8*/   exists(Person p | p.getAge() > this.getAge()) and
    /*9*/   this != max(Person p | | p order by p.getHeight()) and
    /*10*/  this.getHeight() < avg(Person p | | p.getHeight()) and
    /*11*/  this = max(Person p | p.getLocation() = "east" | p order by p.getAge())
}

from Person t
where isThief(t)
select t
