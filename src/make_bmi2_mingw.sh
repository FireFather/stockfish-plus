#!/bin/bash
# makesf_bmi2.sh

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

# cpu architecture set to x86 64-bit w/ Intel's bmi2 (Bit-Manipulation Instructions 2)
# including PDEP and PEXT instructions

arch_cpu=x86-64-bmi2
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=mingw
strip stockfish.exe
mv stockfish.exe stockfish+170122_x64_bmi2.exe 
make clean 
