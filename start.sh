if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/leechpk/RoxyPostbot.git /RoxyPostbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RoxyPostbot
fi
cd /TheMovieProviderBot
pip3 install -U -r requirements.txt
echo "Starting RoxyPostbot...."
python3 bot.py
