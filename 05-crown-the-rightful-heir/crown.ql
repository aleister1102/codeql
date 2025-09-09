import tutorial


// From find.ql
predicate isThief(Person t) {
    /*1*/   t.getHeight() > 150 and 
    /*2*/   t.getHairColor() != "blond" and
    /*3*/   t.getHairColor().length() > 1 and
    /*3     Alternative: exists(string str | t.getHairColor() = str) and
    /*4*/   t.getAge() >= 30 and
    /*5*/   t.getLocation() = "east" and
    /*6*/   (t.getHairColor() = "black" or t.getHairColor() = "brown") and
    /*7*/   not (t.getHeight() > 180 and t.getHeight() < 190) and
    /*8*/   exists(Person p | p.getAge() > p.getAge()) and
    /*9*/   t != max(Person p | | p order by p.getHeight()) and
    /*10*/  t.getHeight() < avg(Person p | | p.getHeight()) and
    /*11*/  t = max(Person p | p.getLocation() = "east" | p order by p.getAge())
}

// From catch.ql
predicate isSouthern(Person p){
    p.getLocation() = "south"
}

predicate isBald(Person p) {
    not exists(string c | p.getHairColor() = c)
}

class Child extends Person {
    Child() {
        this.getAge() < 10
    }
    override predicate isAllowedIn(string region) {
        region = this.getLocation()
    }
}

predicate isFireStarter(Person p) {
    isSouthern(p) and p.isAllowedIn("north") and isBald(p)
}

predicate hasCriminalRecord(Person p) {
    isThief(p) and isFireStarter(p)
}

Person childOf(Person p) { p = parentOf(result) }

Person relativeOf(Person p) { parentOf*(result) = parentOf*(p) }

from Person p
where p = relativeOf("King Basil") and not p.isDeceased() and not hasCriminalRecord(p)
select p
