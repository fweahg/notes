#!/bin/bash
if [ -z $1 ];then
 echo -n filename:
 read -r f;
else
 f=$1;
fi
echo -n input:
read -r line
echo -e " file : ${f} "
cat << EOF > $f
arithmetic eval with \$(())
3*2=$((3*2))
`ls -l {$0,$1}`
$line
EOF
cat $f
