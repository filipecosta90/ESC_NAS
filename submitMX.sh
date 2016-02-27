#!/bin/bash

for file in *_MX_*
do
	qsub $file
done
