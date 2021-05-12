
green=`tput setaf 2`
reset=`tput sgr0`
colab=/content/LOTClass/datasets/agnews/

echo ${green}===Downloading IMDB Data...===${reset}
wget --load-cookies /tmp/cookies.txt "https://drive.google.com/a/illinois.edu/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/a/illinois.edu/uc?export=download&id=1c8X_Ooth2fQleCVz2gCXlOd3-zzE9Mws' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1c8X_Ooth2fQleCVz2gCXlOd3-zzE9Mws" -O imdb.zip && rm -rf /tmp/cookies.txt
echo ${green}===Unzipping IMDB Data...===${reset}
cp imdb.zip ${colab}
unzip ${colab}imdb.zip && rm ${colab}imdb.zip
