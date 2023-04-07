function add() {

         echo $(($1+$2))

}





result="$(add 30 40)"



echo "$((10+result))"
