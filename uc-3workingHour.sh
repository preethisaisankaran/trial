#!/bin/bash
PRESENT=1;
PART_TIME=2;

WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

totalWorkingHour=0;
day=0;
 while [[ $day -lt $MAX_WORKING_DAY && $((totalWorkingHour+4)) -lt $MAX_WORKING_HOUR ]]
 do
     isPresent=$((RANDOM%3));
      case $isPresent in
           $PRESENT)
           workingHour=8;
      ;;
       $PART_TIME)
           workinHour=4;
      ;;

      *)
           workingHour=0;
      ;;
    esac;
      totalWorkingHour=$((totalWorkingHour+workingHour));
       ((day++));
done          
