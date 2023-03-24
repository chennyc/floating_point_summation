# Secure Floating-Point Numbers Summation
This is our implementation of the protocols and from our PETS 2023 paper "Secure and Accurate Summation of Many Floating-Point Numbers."

The full implementation will be updated by the end of March 2023.

# Requirements

1. gcc 9 or newer
2. OpenSSL v1.1.1

# Docker

The authors currently don't have access to a dev envirments that supports Docker. If a docker is preferred, please use the one provided by (https://github.com/anbaccar/RSS_ring_ppml) as we have the system/library requirments.


# Compile & Run

For compile the binary: 

`make`

For rerun the experiments listed in the paper:

`bash run.sh X Y`

For a 3 party setting, run the above command from party 3 (X = 3) to party 1 (X = 1) sequentially.

`Y` represents the setting we used in the paper:

`Y=0: Single & w = 16`

`Y=1: Single & w = 32`

`Y=2: Double & w = 16`

`Y=3: Double & w = 32`
