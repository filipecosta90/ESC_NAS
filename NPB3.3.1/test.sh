#!/bin/bash
dstat -tvfnml --output "$execc"_"$seq_num"_"$node_info".csv >> null &
echo $!
