#!/local/bin/python

import cgi
import cgitb
cgitb.enable()

import sys
import os

sys.path.append('/uio/arkimedes/s11/arnskj/sw/lib/python2.5/site-packages')

# To get this to work on your machine, you'll probably have to add this to a
# .htaccess file or similar in order to get the dynamic linker to find the
# libraries that xfsm needs. Setting the envvar in the script -will not- work,
# since the dynamic linker looks at it before the script is loaded:
# SetEnv LD_LIBRARY_PATH /path/to/libraries
#
# On a 64-bit machine, you may have to add /lib64 as well, due to a quirk
# (bug?) in how xfsm looks for libraries.
from xfsm import *

verbs = Network.load_from_file("verbs.fst")
form = cgi.FieldStorage()

if 'submit' in form:
    analyseme = form['form'].value

    if form['submit'].value == 'Analyser':
        analysis = verbs.apply_up(analyseme)
    else:
        analysis = verbs.apply_down(analyseme)
else:
    analyseme = ''
    analysis = []

print """Content-Type: text/html

<html>
    <head>
        <title>Latinsk morfologi</title>
    </head>
    <body>
<form>
<input type="text" name="form" value="%s" /><input type="submit" name="submit" value="Analyser" /><input type="submit" name="submit" value="Generer" />
</form>""" % analyseme

#print "<pre>%s, %d</pre>" % (analysis, len(analysis))
if len(analysis) > 0:
    print '<ul>'
    for a in analysis:
        print "<li>%s</li>" % a
    print '</ul>'
else:
    print '<p>Ingen analyser.</p>'

#print "<pre>%s</pre>" % os.environ

# TODO: If can has submitted value, do stuff.
#print """<pre>%s</pre>""" % form

print """    </body>
</html>
"""

#print verbs.apply_up("amo");
#print verbs.apply_down("amo+Verb+Fut+Ind+2S+Pass");
