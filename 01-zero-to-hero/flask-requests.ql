/**
 * @id flask-requests
 * @severity error
 * @kind problem
 */

import python
import semmle.python.ApiGraphs

select API::moduleImport("flask").getMember("request").getMember(_).asSource()
