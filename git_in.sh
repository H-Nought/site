if [ "$1" == "" ] || [ $# -gt 1 ]; then
        echo "comments are missing for checkin"
	exit 1
fi


cd themes/ezhil
git add .
git commit -m "$1"
git push origin master

cd ../..
git add .
git commit -m "$1"
git push origin master
