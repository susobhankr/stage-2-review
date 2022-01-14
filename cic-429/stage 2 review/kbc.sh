a[1]="a) What is the biggest cat in the family? Options: 1: lion   2: tiger   3: leopard   4: jaguar"
a[2]="b) After how nmany year is there a leap year? Options: 1: 3 2: 5  3: 2 4: 4"
a[3]="c) which is the largest bird? Options: 1: emu 2: ostrich 3: peacock 4: eagle"
a[4]="d) Which animal is found in Australia? Options: 1: Lion 2: kangaroo 3: giraffe 4: Camel"

ans=(1 2 3 4)

points=0 

for i in ${ans[@]}
do 
  echo ${a[$i]}
  #printf "\n"
  read -p "Enter your choice: " ch
	if(( $ch==$i))
	then
	((points+=1))
	fi
	
done

echo  "Final score: " $points "/" ${#a[@]}
