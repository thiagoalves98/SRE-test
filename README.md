# SRE-test

### 1 – Criação do cluster
Todos os recursos do cluster foram provisionados utilizado Terraform + IaC. Abaixo podemos ver as informações do cluster, tanto pelo terminal como também pelo próprio GCP. 
 
![image](https://user-images.githubusercontent.com/26250050/146972896-4199fde9-45ee-41e7-bf87-d4a13f448fd2.png)
![image](https://user-images.githubusercontent.com/26250050/146972914-c6c79d9d-e864-4898-b549-aac46c983ac6.png)

### 2 – Instalação da aplicação
A aplicação hello-kubernetes foi instalada usando Helm + Terraform + IaC. Através do arquivo de setup para essa aplicação, a versão foi alterada para a versão “v1.10”.

![image](https://user-images.githubusercontent.com/26250050/146972957-5dd1cee8-d5df-4851-b772-0ad4250368f6.png)

### 3 – Autoscaling + status
Também através do arquivo de setup para a aplicação, o autoscaling foi ativado e o número mínimo de réplicas foi definido.

![image](https://user-images.githubusercontent.com/26250050/146972979-b1423e57-ad60-43fa-b0ad-2918f5a50eea.png)

Após a instalação foi possível observar as informações sobre o deployment

![image](https://user-images.githubusercontent.com/26250050/146972997-98695f99-4b84-431b-b8b9-9701d774861f.png)

![image](https://user-images.githubusercontent.com/26250050/146973022-a84d3b8c-a98e-442f-9de0-1153a9a92d7b.png)

### 4 – Configuração dos services
O helm chart da aplicação foi alterado para se adequar as especificações desejadas. Os arquivos service-loadbalancer.yaml, service-nodeport.yaml e service-custerip.yaml tiveram o “type” alterado para seus respectivos tipos de service. Além disso, o protocolo foi ajustado para “tcp”

![image](https://user-images.githubusercontent.com/26250050/146973044-d0804966-7946-40eb-b217-1e892e64e4b4.png)

Após a instalação da aplicação, foi possível verificar os três services instalados no cluster

![image](https://user-images.githubusercontent.com/26250050/146973056-358033ef-213f-48c2-b7f2-f4f06bba2cd8.png)

### 5 - Requisições ao IP publico
IP 35.197.123.196:80

### 6 – Chamada ao IP publico
Após subir os services foi possível obter o IP publico para a aplicação. Após acessar o IP 35.197.123.196:80 foi possível obter o seguinte resultado:

![image](https://user-images.githubusercontent.com/26250050/146973073-4cc2c20c-58b1-44d5-96c4-98a071f37890.png)

### 7 – Logs do pod
Após realizar a conexão com o cluster, foi possível utilizar o comando “kubectl logs pod” para coletar os logs dos pods.

![image](https://user-images.githubusercontent.com/26250050/146973088-a4692690-5d18-4ea3-9394-3a6b134361e5.png)

![image](https://user-images.githubusercontent.com/26250050/146973104-864d2ecf-e065-4fd5-bee2-bbfc0d2723b3.png)

### Outros
Criei o arquivo teste-connection-2.yaml de forma que ele possa ser executado junto do terraform apply. Para isso, removi a annotation “helm.sh/Hook:test e alterei os argumentos para que o pod executasse da maneira correta. O sleep foi utilizado para que o loadbalancer tivesse tempo de subir antes que o pod executasse o wget. Esse arquivo pode ser ativado/desativado através da flag .Values.teste.enabled


![image](https://user-images.githubusercontent.com/26250050/146974281-4359c66e-d2c1-4308-bb5d-395812dd0529.png)

 

