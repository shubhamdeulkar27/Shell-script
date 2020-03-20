#!/bin/bash -x

money=100
IS_WIN=1
IS_LOST=0
countWin=0
countBet=0
while [[ $money -ge 0 || $money -le 200 ]]
do
	bet=$(( RANDOM%2 ))
	(( countBet++ ))
	if [ $bet -eq $IS_WIN ]
	then
		(( countWin++ ))
		(( money++ ))
		if [ $money -eq 200 ]
		then
			break;
		fi
	elif [ $bet -eq $IS_LOST ]
	then
		(( money-- ))
		if [ $money -eq 0 ]
		then
			break
		fi
	fi
done

echo "Number of Wins : $countWin"
echo "Number of Bets : $countBet"
