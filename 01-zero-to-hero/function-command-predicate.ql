import python

predicate isCommandFunc(FunctionDef fd) {
    fd.getDefinedFunction().getName().regexpMatch(".*command.*")
}

from FunctionDef fd
where isCommandFunc(fd)
select fd.getDefinedFunction().getName()