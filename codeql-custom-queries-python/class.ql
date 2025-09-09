import python

class EvalCall extends Call {
    EvalCall() {
        exists(Name name |
        this.getFunc() = name |
        name.getId() = "eval")
    }
} 


from Call c, Name name
where c instanceof EvalCall and
  c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c