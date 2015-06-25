# SparkR-demo

sparkR-submit is a script introduced to facilitate submission of SparkR jobs to a Spark supported cluster (e.g. Standalone, Mesos, YARN). It supports the same commandline parameters as spark-submit. SPARK_HOME and JAVA_HOME must be defined.

On YARN, YARN_CONF_DIR must be defined. sparkR-submit supports YARN deploy modes: yarn-client and yarn-cluster.

sparkR-submit is installed with the SparkR package. By default, it can be found under the default Library ('library' subdirectory of R_HOME)


    export HADOOP_STREAMING=/usr/hdp/current/hadoop-mapreduce-client/hadoop-streaming.jar
    export HADOOP_CMD=/usr/bin/hadoop
    export SPARK_HOME=/usr/hdp/2.2.4.2-2/spark
    export SPARKR_HOME=/usr/lib64/R/library/SparkR/
    export YARN_CONF_DIR=/etc/hadoop/conf


    sparkR-submit --master yarn-client --num-executors 3 --driver-memory 512m --executor-memory 512m --executor-cores 1 






