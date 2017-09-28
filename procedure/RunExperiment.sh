subject_nr=$(cat ~/Desktop/arithmeticVerification/procedure/subject_nr.txt)
next_subject=$(($subject_nr + 1))

echo "Subject number = $subject_nr"
echo $next_subject > ~/Desktop/arithmeticVerification/procedure/subject_nr.txt

if [ ! -d data ]; then
	mkdir data
fi


if ((subject_nr % 2 == 0)); then
	echo "Starting experiment..."
	opensesamerun ~/Desktop/arithmeticVerification/procedure/verification-TF.osexp -s $subject_nr -l "/home/mathcog/Desktop/arithmeticVerification/results/data/subject_$subject_nr.csv" -f

else
	echo "Starting experiment..."
	opensesamerun ~/Desktop/arithmeticVerification/procedure/verification-TF.osexp -s $subject_nr -l "/home/mathcog/Desktop/arithmeticVerification/results/data/subject_$subject_nr.csv" -f

fi



echo Experiment complete!
echo Goodbye.
