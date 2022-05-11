#!/bin/bash
PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk
export PATH=JAVA_HOME/bin:$PATH

export HADOOP_HOME=/home/alex/hadoop-3.3.2
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

export HIVE_HOME=/home/alex/apache-hive-3.1.2-bin
export PATH=$PATH:$HIVE_HOME/bin

echo "Starting the msck cronjob"
hive -e 'msck repair table plc'
echo "Cron job ends"
