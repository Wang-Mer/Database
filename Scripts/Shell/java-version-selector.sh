#!/bin/bash
# Function to find Java path based on version
find_java_path() {
    version=$1
    # Find the Java installation path
    java_path=$(update-alternatives --list java | grep "$version" | head -n 1 | sed 's|/bin/java||')
    echo $java_path
}

# Paths to different Java versions
JAVA8_PATH="/path/to/java8"
JAVA17_PATH="/path/to/java17"
JAVA21_PATH="/path/to/java21"

# Function to switch Java versions
switch_java() {
    if [ "$1" == "8" ]; then
        export JAVA_HOME=$JAVA8_PATH
        echo "Switched to Java 8"
    elif [ "$1" == "17" ]; then
        export JAVA_HOME=$JAVA17_PATH
        echo "Switched to Java 17"
    elif [ "$1" == "21" ]; then
        export JAVA_HOME=$JAVA21_PATH
        echo "Switched to Java 21"
    else
        echo "Usage: $0 {8|17|21}"
        return 1
    fi
    export PATH=$JAVA_HOME/bin:$PATH
    java -version
}

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 {8|17|21}"
    exit 1
fi

# Switch Java version
switch_java $1



