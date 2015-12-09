sudo docker build -t rebdoop .
docker run  -v /home/ranjan/reb_repository:/repository -p 10000:10000 --name rebdoop rebdoop 

