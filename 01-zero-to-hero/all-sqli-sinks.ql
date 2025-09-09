/**
 * @kind problem
 * @problem.severity error
 * @id githubsecuritylab/3-9
 */

import python
import semmle.python.Concepts

from SystemCommandExecution sink
select sink, "Potential system command execution sink"