# Projeto Individual Módulo 4
## Descrição do projeto
### A Resilia está pensando em lançar um novo sistema de acompanhamento e para isso precisa de ajuda para modelar um banco de dados que vai armazenar seus cursos, turmas e alunos.

## Objetivos
### Para apoiar nesse sistema recebemos a tarefa de realizar essa modelagem e responder algumas perguntas com nosso modelo:
#### ⇨ Existem outras entidades além dessas três?
##### R: Sim: Instituição, Facilitador e Monitor.

#### ⇨ Quais são os principais campos e tipos?
##### R:Nome (varchar), CPF(int), E-mail(varchar) e Telefone(int).

#### ⇨ Como essas entidades estão relacionadas?
##### R: 
* A entidade instituição tá relacionada com a entidade curso de 1 para N, uma vez que a instituição possui vários cursos e o curso só tem uma instituição.
* A entidade curso está relacionada com a entidade turma de 1 para N. A turma possui apenas um curso mas o curso pode está dentro de várias turmas. OBS: Importante frisar que o curso que levei em consideração foi o curso de full stack do resíslia dos programadores cariocas, e não a instituição resília.
* A entidade turma está relacionada com as entidades facilitador, monitor e aluno. 
A relação turma / facilitador é N para N, uma vez que uma turma pode ter vários facilitadores e um facilitador pode trabalhar em várias turmas.
A relação turma / monitor segue a mesma lógica da relação anterior: a turma pode ter vários monitores e um monitor pode trabalhar em várias turmas. 
A relação turma / aluno é 1 para N. Uma turma tem vários alunos mas o aluno só tem uma turma. 


##### Vamos tentar pensar em 2 registros para cada entidade para checar o preenchimento das informações no nosso modelo.

## O que deve ser entregue?
### A entrega deve ser realizada em um repositório do Github com um print do modelo proposto e um arquivo README respondendo as perguntas anteriores e apontando para os detalhes da modelagem proposta.

## Extras 
### Requisitos extras 
#### ⇨ Preparar os scripts que vão criar o banco de dados proposto e adicionar uma pasta chamada SQL com os arquivos.

### Print do modelo 
![image](https://raw.githubusercontent.com/brunonavarone/Projeto_Individual_Mod4/main/Modelo%20Projeto%20Individual%20.png)

### [Arquivo do script](https://github.com/brunonavarone/Projeto_Individual_Mod4/blob/main/Modelo%20Projeto%20Individual%20.sql)
### [Site do meu modelo dbdiagram.io](https://dbdiagram.io/d/63fc9bba296d97641d84010e)

