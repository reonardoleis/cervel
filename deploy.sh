[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

cd ~/projects/$1

git pull origin main

npm install
npm run build

mkdir -p ~/projects/frontend_deployments/$1
cp -r ~/projects/$1/build/* ~/projects/frontend_deployments/$1