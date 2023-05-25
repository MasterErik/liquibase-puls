# 'Project' to enable PRO-licensed features of Liquibase

Build can be done only on \*nix machines, because of case-sensitive filenames inside processed JARs.

To make build, just launch the `./build.sh`

To use, replace the `liquibase-commercial.jar` inside Liquibase 4.21.1 package with renamed `build/liquibase-commercial-4.21.1-puls.jar`.
