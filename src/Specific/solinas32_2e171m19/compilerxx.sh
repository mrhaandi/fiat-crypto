#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_bytes_val='19' -Dlimb_t=uint32_t -Dq_mpz='(1_mpz<<171) - 19' -Dmodulus_limbs='9' -Dlimb_weight_gaps_array='{19,19,19,19,19,19,19,19,19}' -Dmodulus_array='{0x07,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xed}' "$@"