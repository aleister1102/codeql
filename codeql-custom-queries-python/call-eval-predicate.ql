import python

predicate isEvalCall(Call call, Name name) {
    name.getId() = "eval" and
    call.getFunc() = name
}

from Call c, Name n
where isEvalCall(c, n) and
    c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c