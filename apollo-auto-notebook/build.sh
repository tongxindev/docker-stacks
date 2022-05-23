img="zhanjun/jupyter:apollo-auto-notebook-v1"
docker build -f Dockerfile.dev -t $img . 
docker push $img
