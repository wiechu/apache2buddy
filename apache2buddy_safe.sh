#!/bin/bash
# example of testing md5sums prior to execution
# apache has its own domain 'apache2buddy.pl' this saves typing out 'https://raw.githubusercontent.com/richardforth/apache2buddy/master/apache2buddy.pl'

scriptmd5sum=`curl -sL apache2buddy.pl | md5sum | cut -d " " -f1 > /dev/null`
originmd5sum=`curl -s https://raw.githubusercontent.com/richardforth/apache2buddy/master/md5sums.txt | cut -d " " -f1 > /dev/null`
echo $scriptmd5sum
echo $originmd5sum
if [ $scriptmd5sum == $originmd5sum ]
then

	echo "MD5 Sums OK"
	scriptsha256sum=`curl -sL apache2buddy.pl | sha256sum | cut -d " " -f1 > /dev/null`
        originsha256sum=`curl -s https://raw.githubusercontent.com/richardforth/apache2buddy/master/sha256sums.txt | cut -d " " -f1 > /dev/null`
        echo $scriptsha256sum
        	echo $originsha256sum
       		if [ $scriptsha256sum == $originsha256sum ]
        	then
			echo "sha256 Sums OK"
                	# execute the code, its safe - we can assume
                 	curl -sL apache2buddy.pl | perl
            	else
                	echo "Error: SHA256SUM mismatch, execution aborted."
            	fi
else
	echo "Error: MD5SUM mismatch, execution aborted."
fi
