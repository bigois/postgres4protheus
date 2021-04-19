<!-- Escudos do repositório -->
<h3 align="center">GitHub</h3>
<p align="center">
	<!-- Escudo: Contribuintes -->
	<a href="https://linkedin.com/in/guilhermebigois" target="_blank">
		<img src="https://img.shields.io/github/contributors/guilhermebigois/postgres4protheus.svg?style=for-the-badge" alt="Escudo Contribuintes">
	</a>
	<!-- Escudo: Forks -->
	<a href="https://github.com/guilhermebigois/postgres4protheus/network/members" target="_blank">
		<img src="https://img.shields.io/github/forks/guilhermebigois/postgres4protheus.svg?style=for-the-badge" alt="Escudo Forks">
	</a>
	<!-- Escudo: Favoritados -->
	<a href="https://github.com/guilhermebigois/postgres4protheus/stargazers" target="_blank">
		<img src="https://img.shields.io/github/stars/guilhermebigois/postgres4protheus.svg?style=for-the-badge" alt="Escudo Favoritados">
	</a>
	<!-- Escudo: Issues -->
	<a href="https://github.com/guilhermebigois/postgres4protheus/issues" target="_blank">
		<img src="https://img.shields.io/github/issues/guilhermebigois/postgres4protheus.svg?style=for-the-badge" alt="Escudo Docker Hub">
	</a>
	<!-- Escudo: Licença -->
	<a href="https://github.com/guilhermebigois/postgres4protheus/blob/master/LICENSE.txt" target="_blank">
		<img src="https://img.shields.io/github/license/guilhermebigois/postgres4protheus.svg?style=for-the-badge" alt="Escudo Licença">
	</a>
</p>

<!-- Escudos de redes sociais -->
<h3 align="center">Social</h3>
<p align="center">
	<!-- Escudo: LinkedIn -->
	<a href="https://linkedin.com/in/guilhermebigois" target="_blank">
		<img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="Escudo LinkedIn">
	</a>
	<!-- Escudo: WhatsApp -->
	<a href="https://api.whatsapp.com/send?phone=5511954226844" target="_blank">
		<img src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" alt="Escudo WhatsApp">
	</a>
	<!-- Escudo: Docker Hub -->
	<a href="https://hub.docker.com/u/guilhermebigois" target="_blank">
		<img src="https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white" alt="Escudo Docker Hub">
	</a>
</p>

<!-- Logotipo do projeto e descrição -->
<p align="center">
	<br/>
	<!-- Logotipo -->
	<a href="https://github.com/guilhermebigois/postgres4protheus" target="_blank">
		<img src="https://raw.githubusercontent.com/guilhermebigois/postgres4protheus/main/images/logo.png" alt="Logo" width="25%" height="25%">
	</a>
	<!-- Título -->
	<h2 align="center">PostgreSQL para TOTVS Protheus</h3>
	<!-- Descrição -->
	<p align="center">
		<h4 align="center">Base de dados PostgreSQL em container Docker configurada conforme os requisitos para uso com o ERP TOTVS Protheus</h4>
		<h5 align="center">
			<a href="https://hub.docker.com/r/guilhermebigois/postgres4protheus" target="_blank">Docker Hub do Projeto</a>
			·
			<a href="https://github.com/guilhermebigois/postgres4protheus/issues" target="_blank">Ajustes e Melhorias</a>
		</h5>
	</p>
</p>

<!-- Sumário -->
<details open="open">
	<!-- Título -->
	<summary>
		<h2 style="display: inline-block">Tabela de conteúdos</h2>
	</summary>
	<!-- Listagem de Tópicos-->
	<ol>
		</li>
			<li><a href="#sobre">Sobre</a></li>
			<ul>
				<li><a href="#objetivo">Objetivo</a</li>
			</ul>
    	</li>
		<li><a href="#pré-requisitos">Pré requisitos</a></li>
	</ol>
</details>

<br/>

<!-- Seção: Sobre -->
## Sobre
<img src="https://raw.githubusercontent.com/guilhermebigois/postgres4protheus/main/images/about.gif" alt="Programa em execução" width="80%" height="80%">

Esta imagem utiliza sempre a última versão do banco PostgreSQL disponível no [Docker Hub oficial](https://hub.docker.com/_/postgres).

Por meio de variáveis de ambiente é possível realizar a montagem de um banco seguindo as configurações de _encoding_, _collation_ e _character type_ dispostas na [documentação de bancos de dados homologados pela TOTVS](https://tdn.totvs.com/pages/viewpage.action?pageId=187533675).

<!-- Seção: Objetivo -->
### Objetivo
Ao meu ver, para todo iniciante em programação ADVPL (assim como eu também fui) as partes mais difíceis são:
1. Ter acesso para baixar os arquivos de configuração
2. Encontrar as documentações necessárias
3. Realizar a montagem de ambiente de desenvolvimento

Com isto em mente, resolvi criar um modo simples de prover um ambiente de desenvolvimento para aqueles que desejam aprender a linguagem ADVPL, entender os passos necessários para montar as camadas de um ambiente Protheus em Linux ou até mesmo como utilizar o ERP dentro de containers Docker.

<br/>

<!-- Seçã: Pré requisitos -->
## Pré requisitos
Para utilizar esta imagem apenas é necessário ter o Docker instalado na sua máquina, contudo para instalar o Docker são necessários alguns [requisitos de sistema](https://docs.docker.com/docker-for-windows/install/).

Caso você não tenha o Docker instalado, dê uma olhada nos vídeos abaixo de acordo com o seu sistema operacional:
* Windows 10 64-bit Pro, Enterprise ou Education: [Instalando Docker for Windows no Windows 10](https://www.youtube.com/watch?v=Hg4i7f5SdWI)
* Windows 10 Home (e também os demais acima): [Configurando Windows 10 + WSL 2 + Docker](https://www.youtube.com/watch?v=oQ08ZaOAiGU)
* Linux Ubuntu: [Instalando o Docker no Ubuntu](https://www.youtube.com/watch?v=gu3cD0jdqG0)
