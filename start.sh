if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kingboyss/database-filter.git /database-filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone kingboyss /database-filter
fi
cd /database-filter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
