#!/bin/bash
# Authors: Gonzalez Garcia David Elias and Cynthia Berenice
# 
# This command shows the info system (RAM, System Architecture, and the SO)
# Este comando muestra la informacion del sistema.

echo "    I N F O R M A C I O N   D E L   S I S T E M A     "
echo "================================================================"
echo "Hola, $(whoami), has accedido a la informacion del sistema :D"
echo "================================================================"
echo "Las memorias son: "
# The following command "egrep", access to a directory file on which it will search an specified word.
# In this case will search "MemTotal", so it will link and return all the row as text.
egrep "MemTotal" /proc/meminfo
egrep "MemFree" /proc/meminfo
egrep "MemAvailable" /proc/meminfo
echo "================================================================"
# The "getconf" command will display the info system, but "LONG_BIT" is a constant, returning the bits of the OS.
echo "La arquitectura del sistema es de: $(getconf LONG_BIT) bits" 
# The next command, shows the type of processor. "egrep" searches that sentence on that file, then with the tube,
# "uniq" will only display one text (instead of many of the same text), and finally, "cut" will cut from the text ":"
# to the end of the row.
echo "El procesador es:$(egrep "model name" /proc/cpuinfo| uniq | cut -d ":" -f2)" 
echo "================================================================"
echo "    I N F O R M A C I O N    D E L    S O                       "
# "grep" will search in the repository the SO info. Will return the row text, and echo will use it and print it, but 
# with "-o" indicates that will only print the matched (non-empty) parts of a matching line, with each such part on a 
# separate output line, so it will print all that it's between the double mark. And then, "sed" will delete de double marks.
grep "PRETTY_NAME" /etc/os-release | echo "El sistema operativo es: $(grep -o '".*"'|  sed 's/"//g')"
# The same as the line before, but the second grep will only print the text that is next to "="
grep "ID_LIKE" /etc/os-release | echo "El sistema operativo esta basado en $(grep -o '=.*')"
grep "HOME_URL" /etc/os-release | echo "Para mas info consulta: $(grep -o '".*"' |  sed 's/"//g')"
echo "================================================================"

