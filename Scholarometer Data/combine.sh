#!/bin/sh

CSVFILE='Scholarometer.csv'
FINALFILE='final.csv'
for authorid in `sed 's/^\([^,]*\),.*$/\1/' "$CSVFILE"`; do
	authorname=`grep "^${authorid}," "$CSVFILE" | \
			sed 's/^[^,]*,\(.*\)$/\1/'`
	metricstring=''
	for metric in g h h_m h_s; do
		authorline=''
		authorline=`grep "$authorid" authors-"$metric".xml`
		if [ "$authorline" == "" ]; then
			echo ERROR: authorid $authorid not found in authors-"$metric".xml >&2
			exit 1
		fi
		testname=`echo "$authorline" | sed 's/^[^>]*>\([^<]*\)<.*$/\1/'`
		if [ "$testname" != "$authorname" ]; then
			echo ERROR: authorid $authorid >&2
			echo is associated with name "$authorname" in "$CSVFILE" >&2
			echo but with name "$testname" in authors-"$metric".xml >&2
			exit 1
		fi
		metricvalue=`echo "$authorline" | sed 's/^.*metricvalue="\([^"]*\)".*$/\1/'`
		metricstring="${metricstring},$metricvalue"
	done
	echo "${authorid},${authorname},${metricstring}" >> final.csv
done
