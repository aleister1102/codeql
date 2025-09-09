import python

from FunctionDef fd
where fd.getDefinedFunction().getName().regexpMatch(".*command.*")
select fd.getDefinedFunction().getName()