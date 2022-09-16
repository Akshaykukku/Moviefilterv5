if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Akshaykukku/Moviefilterv5.git /Moviefilterv5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Moviefilterv5
fi
cd /Moviefilterv5
pip3 install -U -r requirements.txt
echo "STARTING MOVIEFILTER...."
python3 bot.py
