#!/bin/bash
present=1;
part_time=2;
wage_per_hour=20;
max_working_day=20;
max_worlking_hour=40;
totalWorkingHour=0;
day=0;
while [[ $day -lt $max_working_day && $((totalWorkingHour+4)) -lt $max_working_hour ]]
do
    isPresent=$((random%3));
    case $isPresent in
          $present)
             workingHour=8;
       ;;
     $part_time)
            workingHour=4;
       ;;

       *)
       workingHour=0;
       ;;
 esac;
     totalWorkingHour=$((totalWorkingHour+workingHour));
     ((day++));
done
