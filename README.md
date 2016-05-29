# eea.phoronix-test-suite

Unofficial dockerfile for Phoronix Test Suite open-source, cross-platform automated testing/benchmarking software. http://www.phoronix-test-suite.com/

## Prerequisites

1. Install [Docker](https://www.docker.com/).

## How to use it

This docker image expose the phoronix-text-suite as a docker command. Useful for testing Cloud Providers with same consistent test suite image.

To list all the commands available just run:

    $ sudo docker run --rm eeacms/phoronix-test-suite

### Run specific tests

To list available tests run:

    $ sudo docker run --rm -e COMMAND="list-available-tests" eeacms/phoronix-test-suite


Below some examples on how to run some tests with the command `benchmark <test-name>`.

To run IOzone test `pts/iozone-1.8.0`:

    $ sudo docker run -it -e COMMAND="benchmark pts/iozone-1.8.0" eeacms/phoronix-test-suite


To run Loopback TCP Network test `pts/network-loopback-1.0.1`:

    $ sudo docker run -it -e COMMAND="benchmark pts/network-loopback-1.0.1" eeacms/phoronix-test-suite


To run PostgreSQL pgbench `pts/pgbench-1.5.2`:

    $ sudo docker run -it -e COMMAND="benchmark pts/pgbench-1.5.2" eeacms/phoronix-test-suite

### Run entire test suites

To list available tests suite:

    $ sudo docker run -it -e COMMAND="list-available-suites" eeacms/phoronix-test-suite


It will output a similar list:

```
Phoronix Test Suite v6.2.1
Available Suites

  pts/audio-encoding               - Audio Encoding                   System
  pts/chess                        - Chess Test Suite                 Processor
  pts/compilation                  - Timed Code Compilation           Processor
  pts/compiler                     - Compiler                         Processor
  pts/compression                  - Timed File Compression           Processor
  pts/computational                - Computational Test Suite         System
  pts/computational-biology        - Computational Biology Test Suite Processor
  pts/cpu                          - CPU / Processor Suite            Processor
  pts/cryptography                 - Cryptography                     Processor
  pts/daily-kernel-tracker         - Daily Kernel Tracker             System
  pts/daily-system-tracker         - Daily System Tracker             System
  pts/database                     - Database Test Suite              System
  pts/desktop-graphics             - Desktop Graphics                 System
  pts/disk                         - Disk Test Suite                  Disk
  pts/encoding                     - Encoding                         System
  pts/favorites                    - Favorites                        System
* pts/gaming                       - Gaming                           System
  pts/gaming-closed                - Closed-Source Gaming             System
* pts/gaming-free                  - Free Software Gaming             System
  pts/gui-toolkits                 - GUI Toolkits                     Graphics
  pts/ioquake3-games               - Games Using The ioquake3 Engine  System
  pts/iqc                          - Image Quality Comparison Suite   Graphics
  pts/java                         - Java                             System
  pts/java-opengl                  - Java OpenGL                      System
  pts/kernel                       - Kernel                           System
  pts/linux-system                 - Linux System                     System
  pts/memory                       - Memory Test Suite                Memory
  pts/mesa                         - Mesa Test Suite                  Graphics
  pts/motherboard                  - Motherboard                      System
  pts/multicore                    - Multi-Core                       Processor
  pts/netbook                      - Netbook Test Suite               System
  pts/network                      - Networking Test Suite            Network
  pts/nevada                       - OpenSolaris Nevada Test Suite    System
  pts/opencl                       - OpenCL                           System
  pts/opengl-demos                 - OpenGL Demos Test Suite          System
  pts/opengl-workstation           - OpenGL Workstation Test Suite    System
  pts/pts-desktop-live             - PTS Desktop Live                 System
  pts/ray-tracing                  - Ray-Tracing Test Suite           System
  pts/server                       - Server Motherboard               System
  pts/ue4                          - Unreal Engine 4 Tech Demos On Linux Graphics
  pts/unigine                      - Unigine Test Suite               Graphics
* pts/universe                     - Universe Test Suite              System
  pts/universe-cli                 - Universe CLI Test Suite          System
* pts/universe-x                   - Universe X Test Suite            System
  pts/video-encoding               - Video Encoding                   System
  pts/workstation                  - Workstation                      System
  pts/workstation-graphics         - Workstation Graphics             Graphics
  pts/xrender                      - X Render Extension Testing       Graphics
  system/collection                - Collection                       System
```


To run CPU test suite `pts/cpu`:

    $ sudo docker run -it -e COMMAND="benchmark pts/cpu" eeacms/phoronix-test-suite


To run Disk Test Suite  `pts/disk`:

    $ sudo docker run -it -e COMMAND="benchmark pts/disk" eeacms/phoronix-test-suite


To run Computational Biology Test Suite `pts/computational-biology`:

    $ sudo docker run -it -e COMMAND="benchmark pts/computational-biology" eeacms/phoronix-test-suite


## See also

See [phoronix-test-suite on github](https://github.com/phoronix-test-suite/phoronix-test-suite/)
