#!/bin/bash
{ for file in `find . -type f -print0 | xargs -0 realpath` ; do echo $file; cat $file | grep $1; done } | less
