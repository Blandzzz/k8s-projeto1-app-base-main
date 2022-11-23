echo "Criando as imagens....."

docker build -t blandzzz/projeto-backend:1.0 backend/.
docker build -t blandzzz/projeto-database:1.0 database/.

echo "Realizando o push das imagens...."

docker push blandzzz/projeto-banckend:1.0
docker push blandzzz/projeto-database:1.0

echo "Criando servicos no cluster kubernets..."

kubectl apply -f ./services.yml

echo "Criando os deployments......"

kubectl  apply -f ./deploymnet.yml

