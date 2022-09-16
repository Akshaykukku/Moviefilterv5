if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Akshaykukku/Moviefilterv5.git /Moviefilterv5.git
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Moviefilterv5.git
fi
cd /Moviefilterv5.git
pip3 install -U -r requirements.txt
echo "STARTING MOVIEFILTER...."
python3 bot.py
