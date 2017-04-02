# Blank Project - Vraptor Configurado

Faça o clone deste repositório.

Importe este repositório como `Existing Maven Project`

Caso dê algum erro com a dependência do VRaptor4

faça o download do maven, configure ele nas variaveis de ambiente do windows

para que seja possível executar o comando: 

`mvn package`

Feito isso o projeto deve atualizar suas dependências e funcionará como um novo ambiente vraptor.

Existe uma imagem na raiz deste repositório que mostra como está organizado os arquivos do projeto:

Quando criado um novo controller dentro do projeto, deve-se criar uma pasta com o nome deste controller em webapp/jsp/{nome da pasta}/{nome dos metodos deste controller}.jsp