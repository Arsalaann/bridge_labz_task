students=("Vijay" "Priya" "Joe" "Anif")
echo ${students[@]}
students[4]="Rajesh"
students[5]="Sarmi"
echo "After Add" ${students[@]}
students[0]="Ravi"
students[3]="Namratha"
echo "After Update" ${students[@]}
unset 'students[4]'
echo "After Delete" ${students[@]}
echo "Headcount of an array ${#students[@]}"
echo "Index Number of an array ${!students[@]}"
