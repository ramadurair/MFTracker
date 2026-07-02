#!/bin/sh
set -e
APP_HOME="$(cd "$(dirname "$0")" && pwd)"
WRAPPER_JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
GRADLE_OPTS="${GRADLE_OPTS:-"-Xmx2048m -Dfile.encoding=UTF-8"}"
if [ -n "$JAVA_HOME" ]; then JAVACMD="$JAVA_HOME/bin/java"; else JAVACMD="java"; fi
exec "$JAVACMD" $GRADLE_OPTS -Dorg.gradle.appname=gradlew -classpath "$WRAPPER_JAR" org.gradle.wrapper.GradleWrapperMain "$@"
