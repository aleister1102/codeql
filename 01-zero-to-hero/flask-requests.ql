/**
 * @id flask-requests
 * @severity error
 * @kind problem
 */

import python
import semmle.python.ApiGraphs

from API::Use n
where n = API::moduleImport("flask").getMember("request").getMember(_).getAMember()
select n.asSource(), n.getLocation().toString()
