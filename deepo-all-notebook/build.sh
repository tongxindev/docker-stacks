img="zhanjun/jupyter:deepo-all-notebook"
docker build -t $img .
docker push $img
