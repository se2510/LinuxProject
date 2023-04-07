#!/bin/bash
# Authors: Gonzalez Garcia David Elias and Cynthia Berenice
# 
# This command shows the hour's system
# Este comando muestra la hora del sistema


# For this command, we need to visualize the hour and the date, but where in the systyem it is?
# Well, we can find the hour and date in the directory /proc/driver/rtc , whitch contains the real
# time and real date of the system.

# Now, to print, we'll use "echo", but for search the info, we'll use "grep"
# of wich will find the line that beggins with "rtc_time" (or date) in a certain directory
# Later, with a tube, will return the line, so awk will print the text on that line, and in which 
# column.

grep "rtc_time" /proc/driver/rtc | awk '{print "Hora: "$3}'
grep "rtc_date" /proc/driver/rtc | awk '{print "Fecha: "$3}'

# Basially, we are printing the text of 'y' and in 'x' column.