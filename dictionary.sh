declare -A movies

movies[tamil]="beast"
movies[telugu]="bahubali"
movies[kannada]="kgf"
movies[malayalam]="kurup"

echo ${movies[@]}

movies[english]="spiderman"
movies[hindi]="3idiots"

echo "After Add" ${movies[@]}

movies[kannada]="kgf2"
movies[tamil]="jailor"

echo "After Update" ${movies[@]}

unset 'movies[english]'

echo "After Delete" ${movies[@]}

echo "Headcount of an dictionary ${#movies[@]}"
echo "Keys of an dictionary ${!movies[@]}"

