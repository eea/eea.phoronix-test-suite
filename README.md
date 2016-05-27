# eea.phoronix-test-suite

Unofficial dockerfile for Phoronix Test Suite open-source, cross-platform automated testing/benchmarking software. http://www.phoronix-test-suite.com/

## Prerequisites

1. Install [Docker](https://www.docker.com/).

## How to use it

This docker image expose the phoronix-text-suite as a docker command. Useful for testing Cloud Providers with same consistent test suite image.

To list all the commands available just run:

    $ sudo docker run --rm eeacms/phoronix-test-suite

To list available tests run:

    $ sudo docker run --rm -e COMMAND="list-available-tests" eeacms/phoronix-test-suite

Below some examples on how to run some tests.

To run IOzone test `pts/iozone-1.8.0`:

    $ sudo docker run --rm -e COMMAND="pts/iozone-1.8.0" eeacms/phoronix-test-suite

To run Loopback TCP Network test `pts/network-loopback-1.0.1`:

    $ sudo docker run --rm -e COMMAND="pts/network-loopback-1.0.1" eeacms/phoronix-test-suite

To run PostgreSQL pgbench `pts/pgbench-1.5.2`:

    $ sudo docker run --rm -e COMMAND="pts/pgbench-1.5.2" eeacms/phoronix-test-suite


See [phoronix-test-suite on github](https://github.com/phoronix-test-suite/phoronix-test-suite/)
