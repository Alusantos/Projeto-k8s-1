echo "Criando as imagens....."

docker build -t Alusantos/projeto-backend:1.2 backend/.
docker build -t Alusantos/projeto-database:1.2 database/.

echo "Realizando o push das imagens....."

docker push Alusantos/projeto-backend:1.1
docker push Alusantos/projeto-database:1.1

echo "Criando serviços..."

kubectl apply -f ./services.yml

echo "Criando os deploys.."

kubectl apply -f ./deployment.yml

