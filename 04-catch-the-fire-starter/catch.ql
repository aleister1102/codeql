import tutorial

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

from Person p
where isSouthern(p) and p.isAllowedIn("north") and isBald(p)
select p.toString(), p.getAge()