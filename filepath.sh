if [[ ! $1 ]] ; then _app=mysite ; else _app=$1 ; fi
startpath=`pwd`
echo ${startpath}
echo ${0} ${_app}
filext=${1##*/}
ext=${1##*.}
file=${filext%.*}
path=${1%/*}
echo -e "$filext : path:$path file:$file ext:$ext"
