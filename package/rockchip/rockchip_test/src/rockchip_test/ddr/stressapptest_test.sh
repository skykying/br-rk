#!/bin/sh

DDR_DIR=/rockchip_test/ddr
RESULT_DIR=/data/rockchip_test
RESULT_LOG=${RESULT_DIR}/stressapptest.log

if [ ! -e "/data/rockchip_test" ]; then
	echo "no /data/rockchip_test"
	mkdir /data/rockchip_test
fi

#run stressapptest_test
echo "**********************DDR STRESSAPPTEST TEST 48H*************************"
echo "***run: stressapptest -s 172800 -i 4 -C 4 -W --stop_on_errors -M 128*****"
echo "**********************DDR STRESSAPPTEST TEST****************************"
stressapptest -s 172800 -i 4 -C 4 -W --stop_on_errors -M 128 > $RESULT_LOG & 

echo "******DDR STRESSAPPTEST START: you can see the log at $RESULT_LOG********"
