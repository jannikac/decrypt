 #!/usr/bin/env bash

scriptdir=$(pwd)
targetdir=$scriptdir/to-decrypt
destdir=$scriptdir/decrypted
password="ENTER PASSWORD"

for f in "$targetdir"/*; do
	file=$(echo "${f##*/}")
	echo $file
	qpdf --password=$password --decrypt $targetdir/$file $destdir/$file-DECRYPTED.pdf

done
