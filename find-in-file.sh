#!/bin/bash
{ for file in `find . -type f -print0 | xargs -0 realpath` ; do echo $file; cat $file | grep -n $1; done } | less
