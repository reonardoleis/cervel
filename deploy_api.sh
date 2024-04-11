cd ~/projects

git clone https://github.com/reonardoleis/$1

cd ~/projects/$1

git pull origin main

docker build . -t $1/latest

cd ~/projects/cervel

docker-compose down

docker-compose up -d