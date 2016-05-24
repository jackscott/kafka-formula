ENABLE="yes"
LOG_DIR={{ log_dir  }}
CONFIG_HOME={{ config_dir }}
JAVA_HOME={{ java_home }}
KAFKA_RUN=`which kafka-server-start.sh`
KAFKA_ARGS=""
KAFKA_CONFIG=${CONFIG_HOME}/server.properties
