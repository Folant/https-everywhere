#!/bin/bash -ex
# Perform validations on rulesets.

utils/remove-obsolete-references.sh
test/validations/path/run.sh
test/validations/test-coverage/run.sh
python2.7 test/validations/securecookie/run.py
python2.7 test/validations/filename/run.py
python2.7 test/validations/relaxng/run.py
python2.7 test/validations/special/run.py --quiet
