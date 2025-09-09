import python

class CommandFunctionDef extends FunctionDef {
    CommandFunctionDef() {
        this.getDefinedFunction().getName().regexpMatch(".*command.*")
    }
}

from FunctionDef fd
where fd instanceof CommandFunctionDef
select fd.getDefinedFunction().getName()