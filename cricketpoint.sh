echo "Please select a favourite team in ipl"
read teamName

#variables
matchPlayed=14
won=0
lost=0
runRate=" "
position=0
points=0

rcbTeam=("Chahal" "Virat" "Maxwell" "Duplessis")
miTeam=("Bumrah" "Rohit" "Ishan" "Pollard")
function eligibleForPlayoffs() {
if [[ $1 -ge 0 && $1 -le 4 ]]
then
echo "$2 are eligible for the playoffs"
else
echo "$2 are not eligible for the playoffs"
fi
}
function rolesAndResponsibilityByPlayer() {
echo $1 Is a $2 of Team $3
}
function playersByTeam() {
if [ $1 == "RCB" ]
then
for player in ${rcbTeam[@]}
do
if [ $player == "Virat" ]
then
rolesAndResponsibilityByPlayer $player "Batsman" $1
elif [ $player == "Maxwell" ]
then
rolesAndResponsibilityByPlayer $player "Allrounder" $1
elif [ $player == "Duplessis" ]
then
rolesAndResponsibilityByPlayer $player "Captain" $1
else
rolesAndResponsibilityByPlayer $player "Bowler" $1
fi
done
elif [ $1 == "MI" ]
then
for player in ${miTeam[@]}
do
if [ $player == "Ishan" ]
then
rolesAndResponsibilityByPlayer $player "Batsman" $1
elif [ $player == "Pollard" ]
then
rolesAndResponsibilityByPlayer $player "Allrounder" $1
elif [ $player == "Rohit" ]
then
rolesAndResponsibilityByPlayer $player "Captain" $1
else
rolesAndResponsibilityByPlayer $player "Bowler" $1
fi
done
fi
}
function pointsCalculator() {
lost=$((matchPlayed-$3))
points=$(($3*2))
echo "You Selected as $1"
echo "Place Secured as $2"
echo "Match Faced $matchPlayed"
echo "You Won $3"
echo "You Lost $lost"
echo "You RunRate $4"
echo "You Points $points"

eligibleForPlayoffs $2 $1
playersByTeam $1
}
function errorMessage() {
echo "Please check your input , it is Invalid ..."
}
if [ $teamName == "RCB" ]
then
position=4
elif [ $teamName == "CSK" ]
then
position=9
elif [ $teamName == "MI" ]
then
position=10
else
errorMessage
fi

case $position in
10)
won=4;
runRate="-0.506";
pointsCalculator $teamName $position $won $runRate
;;
9)
won=4;
runRate="-0.203";
pointsCalculator $teamName $position $won $runRate
;;
4)
won=8;
runRate="-0.253";
pointsCalculator $teamName $position $won $runRate
;;
*)
echo ""
;;
esac
