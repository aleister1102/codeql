/**
 * @id codeql-zero-to-hero/3-3
 * @severity error
 * @kind problem
 */

import python

import semmle.python.ApiGraphs

from API::Node node
where API::moduleImport("flask").getMember("Request").getReturn().getMember("args")
and node.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select node, "Call to flask.request.args"