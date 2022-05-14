img="zhanjun/jupyter:autoware-univ-notebook-simv2"
docker build -t $img .
docker push $img
