read -p "Enter a number: " num
function check()
{
hold=$1
num=$hold
c=0
a=0
for ((i=2;i<=$(( ($num/2) ));i++))
do
	if [ $(($num%$i)) -eq 0 ]
		then
		((c++))
		break;
	fi
done

reverse=0
while [ $num -ne 0 ]
do
	digit=$(($num%10))
	reverse=$(( ($reverse*10)+digit ))
	num=$(($num/10));
done
if [ $reverse -ne $hold ]
then
	((a++))
fi
if [[ $c -eq 0 && $a -eq 0 ]]
then
	echo "0"
elif [ $c -eq 0 ]
then
	echo "1"
elif [ $a -eq 0 ]
then
	echo "2"
else
	echo "3"
fi
}

result=$(check $num)
case $result in

	0)
	echo "The number is both Prime and Palindrome"
	;;

	1)
	echo "The number is Prime but not-Palindrome"
	;;

	2)
	echo "The number is Palindrome but not-Prime"
	;;

	3)
	echo "The number is neither Prime nor Palindrome"
	;;
esac
