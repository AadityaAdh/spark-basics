#!/bin/bash

if [ "$SPARK_MODE" == "master" ]; then
    ${SPARK_HOME}/sbin/start-master.sh
elif [ "$SPARK_MODE" == "worker" ]; then
    ${SPARK_HOME}/sbin/start-worker.sh ${SPARK_MASTER}
fi

# aaba container ni ta running rakhu paryo natra ta suru garxa banda vai halxa so running process ta chaiyo
tail -f /dev/null