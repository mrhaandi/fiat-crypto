#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_array='{0x3f,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xef}' -Da24_val='12345' -Dlimb_weight_gaps_array='{20,19,19,20,19,19,20,19,19}' -Dq_mpz='(1_mpz<<174) - 17' -Da24_hex='0x3039' -Dlimb_t=uint32_t -Dmodulus_limbs='9' -Dmodulus_bytes_val='22' -Da_minus_two_over_four_array='{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x39}' "$@"
