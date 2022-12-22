a=$((RANDOM % 90+10));
b=$((RANDOM % 90+10));


if [ $a -gt $b ]
then
  echo "a is gt b"
elif [ $a -eq $b ]
then
  echo "a ed b " 

else
  echo "a is ls b"
fi

