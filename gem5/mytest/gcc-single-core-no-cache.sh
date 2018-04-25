#!/bin/sh
BENCH_HOME=/home/yyuanye/specCPU2006/benchspec/CPU2006/403.gcc
REPATH=../..
NVMAINREPATH=../../..
$REPATH/build/X86/gem5.opt \
--stats-file=gem5-DRAMCache-stats.log		\
$REPATH/configs/example/se.py \
--cpu-clock=2GHz		\
--mem-type=nvmain --nvmain-config=$NVMAINREPATH/nvmain/Config/pcm.config     \
--fast-forward=10000000 --maxinsts=10000000   \
--cmd="$BENCH_HOME/exe/gcc_base.amd64-m64-gcc43-nn" --options="$BENCH_HOME/data/ref/input/s04.i" -n 1   
