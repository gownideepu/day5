totalsalary=0;
EMP_WAGE_PER_HOUR=20;
workingHour=0;
totalWorkingHour=0;
day=1;

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]] 
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
			echo "Employee is Absent";
			workingHour=0;
		;;
	
		1)
			echo "Employee is Present";
			workingHour=8;
		;;
	
		2)
			echo "Employee is working as part time";
			workingHour=4;
		;;
	esac
	
	totalWorkingHour=$(($totalWorkingHour + $workingHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $workingHour));
		break;
	fi
	salary=$(($EMP_WAGE_PER_HOUR * $workingHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done

echo "Employee has earned $totalSalary $ in a month (Total Working Hour : $totalWorkingHour)";
while