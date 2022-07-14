#!/bin/bash

if [ $# -eq 0 ]; then
	./dc start ws db bd
else
	./dc start $@
fi
