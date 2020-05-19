#!/bin/bash

## let's make sure path to mail command is part of our PATH variable
export PATH=$PATH:/usr/bin
testcondition='BAD'
echo "$testcondition" | grep 'good'
#since above command will fail
if [ $? -ne 0 ]
  then 
    echo 'the service has failed' | mail -s 'server report' akash.dubey@someemail.com
    echo 'An email has been sent about the failure'
fi
