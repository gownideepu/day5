TS=0;
EWPH=20;
WH=0;
TWH=0;
DAY1;
WHILE [[ $day -le 20 && $twh -lt 40 ]]
do 
    isPresent=$((RANDOM%3));
	case $isPresent in
		0)
			echo "Employee is Absent";
			wH=0;
		;;
	
		1)
			echo "Employee is Present";
			wH=8;
		;;
	
		2)
			echo "Employee is working as part time";
			wH=4;
		;;
	esac
	
TWH=$(($TWH + $WH));
	if [ $TWH -gt 40 ]
	then
		TWH=$(($TWH - $Wh));
		break;
	fi
	salary=$(($EMP_WAGE_PER_HOUR * $WH));
	TS=$(($TS + $salary));
	((day++));
done