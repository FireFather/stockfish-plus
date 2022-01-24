#!/bin/bash
# makesf_all.sh

#  Stockfish, a UCI chess playing engine derived from Glaurung 2.1
#  Copyright (C) 2004-2021 The Stockfish developers (see AUTHORS file)

#  Stockfish is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.

#  Stockfish is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.

#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

arch_cpu=x86-64-avx2
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=gcc
strip stockfish
mv stockfish stockfish+200122_x86-64-avx2 
make clean

arch_cpu=x86-64-bmi2
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=gcc
strip stockfish
mv stockfish stockfish+200122_x86-64-bmi2 
make clean

arch_cpu=x86-64-sse41-popcnt
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=gcc
strip stockfish
mv stockfish stockfish+200122_x86-64-sse41-popcnt 
make clean

arch_cpu=x86-64-ssse3
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=gcc
strip stockfish
mv stockfish stockfish+200122_x86-64-ssse3 
make clean

arch_cpu=x86-64-sse2-popcnt
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=gcc
strip stockfish
mv stockfish stockfish+200122_x86-64-sse2-popcnt 
make clean

arch_cpu=x86-64
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=gcc
strip stockfish
mv stockfish stockfish+200122_x86-64-sse2 
make clean

arch_cpu=general-64
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=gcc
strip stockfish
mv stockfish stockfish+200122_x86-64 
make clean