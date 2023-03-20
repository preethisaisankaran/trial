#!/bin/bash -x
present=1;
part_time=2;

WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;
 
fuction getWorking(){
  case $1 in 
        $PRESENT)
          workingHour=8;
        ;;
       $PART_TIME)
           workingHour=4;
        ;;
        *)
          workingHour=0;
        ;;
       esac;

}
