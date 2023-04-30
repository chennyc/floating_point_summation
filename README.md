# Secure Floating-Point Numbers Summation
This is our implementation of the protocols and from our PETS 2023 paper "Secure and Accurate Summation of Many Floating-Point Numbers."

The full implementation will be updated by the end of March 2023.

# Requirements

1. gcc 9 or newer
2. OpenSSL v1.1.1

# Docker

The authors currently don't have access to a dev envirments that supports Docker. If a docker is preferred, please use the one provided by (https://github.com/anbaccar/RSS_ring_ppml) as we have the same system/library requirments.


# Compile 

For compile the binary: 

`make`

& Run

For rerun the experiments listed in the paper:

Run `bash run.sh 3 Y` in terminals. For executing experiments in a signle machine:

1. Open a terminal, run `bash run.sh 3 Y`
2. Open the second terminal, run `bash run.sh 2 Y`
3. Open the third terminal. run `bash run.sh 1 Y`

For running experiments in different machines, please specify the IP addess and port of each machine in `runtime-config` and run the above command from party 3 (X = 3) to party 1 (X = 1) on these machines sequentially.

`Y` represents the setting we used in the paper:

`Y=0: Single & w = 16`

`Y=1: Single & w = 32`

`Y=2: Double & w = 16`

`Y=3: Double & w = 32`

For running the experiments using different machines, please update the IP address of each machine in `runtime-config` accordingly.
