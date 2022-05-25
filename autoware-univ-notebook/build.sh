img="zhanjun/jupyter:autoware-univ-notebook-simv3"
docker build -t $img .
docker push $img
