#!/bin/bash

cont_count=$1

echo "creating $cont_count containers......"

sleep 2;

for i in `seq $cont_count`

do
	echo "%%%%%%%%%%%%%%%%%%%&&"
	echo "creating container $i ...."
	sleep 1
docker run --name project$i -d -it --rm singamndevops/project /bin/bash

echo "containername $i has been created#"


echo "%%%%%%%%%%%%%%%%%%%%%%%%+%+"

done

