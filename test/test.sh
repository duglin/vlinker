#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

DIR=$(dirname "${BASH_SOURCE}")
REPO_ROOT=$DIR/..
EXE=${REPO_ROOT}/bin/verify-links.sh
TMPOUT=/tmp/out.$RANDOM

trap cleanup EXIT

function cleanup {
	rm -f $TMPOUT $TMPOUT.* > /dev/null
}

rc="0"

function test {
	set +e
	FLAGS=${FLAGS:-}
	"$EXE" ${FLAGS} "$1" > "$TMPOUT" 2>&1 
	if [ -e "$1.exp" ]; then
		diff "$TMPOUT" "$1.exp" > $TMPOUT.diff 2>&1
		ec=$?
	else
		sed -n '/^== *EXPECTED *==/,$p' < "$1" | grep -v EXPECTED > $TMPOUT.exp
		diff "$TMPOUT" $TMPOUT.exp > $TMPOUT.diff 2>&1
		ec=$?
	fi
	if [[ "$ec" == "0" ]]; then
		echo "PASS: $1"
	else
		echo "FAIL: $1"
		echo "      diffing output expected"
		cat $TMPOUT.diff | sed "s/^/      /"   # indent output
		rc="1"
	fi
	set -e
}

for i in $(find ${DIR}/files -name \*.md); do
	test "${i}"
done

FLAGS=-v test ${DIR}/files

exit $rc
