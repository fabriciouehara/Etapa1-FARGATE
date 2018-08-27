1) Logar na conta da amazon e criar um usuario administrativo do tipo programer, e salvar o access key e secret key

2) configurar o arquivo variables.tf com os valores do passo anterior e também a VPC (no campo fargate_vpc)

3) Baixar o binario do terraform

4) Navegar para dentro do diretorio pelo cmd

5) instalar plugin do aws terraform:
terraform.exe init

6) Rodar o comando abaixo para verificar as mudanças na infraestrutura:
terraform.exe plan

7) Rodar o terraform:
terraform.exe apply -auto-approve 

8) O arquivo outputs.tf fara com que o nome do load balancer seja printado na tela, portanto para testar a url selecionar a URL que aparecerá ao fim da execução do passo anterior no campo 'alb_hostname'


