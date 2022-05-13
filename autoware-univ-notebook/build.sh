img="zhanjun/jupyter:autoware-univ-notebook"
docker build -t $img .
docker push $img
