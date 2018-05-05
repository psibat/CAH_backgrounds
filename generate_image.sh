#!/bin/sh
folder=$1

questions_dir=$folder"/questions/"
answers_dir=$folder"/answers/"
result_dir="/tmp/result/"

if [ ! -d $result_dir ]
then
	mkdir $result_dir
fi

result_file=$2"result.png"
result=$result_dir$result_file

if [ ! -f $result  ]
then
	question=$(ls $questions_dir | sort -R | tail -1)

	answer_count=1

	if [ $(echo $question | head -c 1) == 'T' ]
	then
		answer_count=3
	elif [ $(echo $question | head -c 1) == 'D' ]
	then
		answer_count=2
	fi

	answers=($(ls $answers_dir | sort -R | tail -$answer_count))
	answers=("${answers[@]/#/$answers_dir}")


	question=$questions_dir$question
	background=$folder"/background.png"

	convert $question ${answers[@]} +append $result
	composite -gravity SouthEast $result $background $result
fi


feh --bg-fill --force-aliasing $result
