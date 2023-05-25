#!/bin/bash

SOURCE_JAR="liquibase/liquibase-commercial-4.21.1.jar"
CLASSPATH="liquibase/liquibase-commercial-4.21.1.jar:liquibase/liquibase-core-4.21.1.jar"
SRC=("src/DaticalTrueLicenseService.java")

TARGET_JAR="${SOURCE_JAR##*/}"
TARGET_JAR="build/${TARGET_JAR%.*}-puls.jar"

EXTRACT_DIR="${SOURCE_JAR##*/}"
EXTRACT_DIR="build/extract/${EXTRACT_DIR%.*}"

COMPILE_DIR="build/compile"

rm -rf "$EXTRACT_DIR" && \
mkdir -p "$EXTRACT_DIR" && \
unzip -q "$SOURCE_JAR" -d "$EXTRACT_DIR" || exit 1

rm -rf "$COMPILE_DIR" && \
mkdir -p "$COMPILE_DIR" && \
javac -cp "$CLASSPATH" -d "$COMPILE_DIR" "${SRC[@]}" || exit 1

cp -TRf "$COMPILE_DIR" "$EXTRACT_DIR" || exit 1

jar cMf "$TARGET_JAR" -C "$EXTRACT_DIR" . || exit 1
