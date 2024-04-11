export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

cd ~/projects

git clone https://github.com/reonardoleis/$1

cd ~/projects/$1

git pull origin main

yarn --network-timeout 100000
npm run build

mkdir -p ~/projects/frontend_deployments/Oqkwnm3kl5Mn/$1
cp -r ~/projects/$1/dist/* ~/projects/frontend_deployments/Oqkwnm3kl5Mn/$1