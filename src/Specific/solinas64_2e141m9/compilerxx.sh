#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_array='{0x1f,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xf7}' -Da24_val='12345' -Dlimb_weight_gaps_array='{47,47,47}' -Dq_mpz='(1_mpz<<141) - 9' -Da24_hex='0x3039' -Dlimb_t=uint64_t -Dmodulus_limbs='3' -Dmodulus_bytes_val='18' -Da_minus_two_over_four_array='{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x39}' "$@"
