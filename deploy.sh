#echo "Kill all the running PM2 actions"
#sudo pm2 kill

echo "Jump to app folder"
cd /home/ubuntu/nuxt-docker-aws-github-actions
#sudo docker-compose down

echo "Update app from Git"
git pull origin 
sudo npm install
sudo npm run build
#sudo docker-compose up --build 
#&& sudo docker-compose up

#echo "Run new PM2 action"
#sudo npm run start
#sudo cp /home/ubuntu/ecosystem.json ecosystem.json
#sudo pm2 start
