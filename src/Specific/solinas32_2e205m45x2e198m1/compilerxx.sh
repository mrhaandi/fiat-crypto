#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_bytes_val='20.5' -Dlimb_t=uint32_t -Dq_mpz='(1_mpz<<205) - 45*(1_mpz<<198) - 1' -Dmodulus_limbs='10' -Dlimb_weight_gaps_array='{21,20,21,20,21,20,21,20,21,20}' -Dmodulus_array='{0x14,0xbf,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff}' "$@"