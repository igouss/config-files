#!/bin/bash

function br {
   git branch 2> /dev/null | { 
   while read line
   do
     if [[ "${line:0:1}" == "*" ]]
     then 
      echo "${line:2}"
      break
     fi
   done
  }
}


PS1='\[\033]0;$MSYSTEM:\w\007
\033[32m\]\u@\h \[\033[33m\w\033[0m\] ^[$(br)]
$ '
