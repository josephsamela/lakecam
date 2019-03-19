datetime=$(date)
day=Thu
if [ "${datetime/$day}" = "$datetime" ] ; then
        echo "Today is not Thursday - Not posting to Instagram"
else
        echo "Today is Thursday - posting to Instagram"
	instapy -u username -p password -f photo.JPG -t "$(<caption.txt)"
	bash ifttt_instagram_notification.sh
fi
