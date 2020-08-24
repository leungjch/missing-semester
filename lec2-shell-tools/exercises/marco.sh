#!/bin/bash

currentPath=$(pwd)
echo "Current path is: $currentPath"

marco () {
	currentPath=$(pwd)


}

polo () {

	echo "Current path is: $currentPath"
	cd $currentPath
}
