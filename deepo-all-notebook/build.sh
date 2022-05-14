img="zhanjun/jupyter:deepo-all-notebook-v1"
docker build -t $img .
docker push $img
