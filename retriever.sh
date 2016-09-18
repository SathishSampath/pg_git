
  echo 'Retrieving Version'
	sqlfile=$2"_dump.sql"
	output="~/"$sqlfile
	cd ~/pg_git/pg_dumper
	current_version=$(git rev-parse HEAD)
	git checkout $1 $sqlfile
	cp $sqlfile $output
	git $current_version $sqlfile
	echo "SQL File Saved in Home Directory"
	cd -






while true; do
	read -p 'Enter the Database name: ' d
	read -p $(git log --format="%h" --follow $d) c
  

done
