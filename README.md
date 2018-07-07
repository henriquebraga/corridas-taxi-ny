# Análise corridas de Taxí em Nova York
![taxi](http://thenewyorkbudget.com/wp-content/uploads/2013/12/New_York_Taxi-1024x682.jpg)

## Contribuições

Henrique Braga
Caroline Bertoldi
Igor Chaves

## Introdução

Este projeto visa demonstrar uma análise exploratória dos dados de corrida em NY e aplicar um algoritmo de predição de resultados.

O projeto contém todas as análises em arquivos `R` markdown, juntamente com uma aplicação Shiny.

## Pacotes

Para rodar o projeto, são necessários instalar os pacotes:

```r
install.packages("shinydashboard")
install.packages("dplyr")
install.packages("readr")
install.packages("ggmap")
install.packages("rgl")
install.packages("manipulate")
```

Também recomendamos utilizar o `RStudio` para as análises.

## Download dataset

O dataset está disponível no link abaixo:

https://onedrive.live.com/?authkey=%21AJCxeFOyDC7MeMg&cid=6CE49BEEC006E769&id=6CE49BEEC006E769%2149047&parId=6CE49BEEC006E769%2148875&action=locate

Baixe-o e coloque o arquivo `train.csv` na pasta `markdowns/data` para execução das análises nos arquivos markdown

## Rodando o projeto com Shiny localmente

Foi disponibilizado uma aplicação Shiny. Caso queira executá-las também, execute os seguintes passos:

1. Para rodar uma aplicação shiny, é necessário criar os arquivos `.html` executando o comando `knit` do RStudio. Isso porque queríamos disponibilizar já pronto, porém devido o tamanho de alguns arquivos gerados(alguns mais de 100MB devido aos plots presentes na análise) acabou não sendo possível. O nome ao salvar deve ser o mesmo do `markdown`.

2. Coloque os arquivos `.html` gerados na pasta `www`

3. Abra o arquivo `ui.R` e execute com `run`. Isso deverá subir uma aplicação web no localhost para visualização das análises.
Todos os arquivos `Rmd` contém as análises exploratórias e predições.

## Rodando a Predição

A predição encontra-se no arquivo `predicao.Rmd`, porém é necessário executar o arquivo `enriquecimento.Rmd` previamente para o enriquecimento dos dados e execução do modelo.

## Melhorias a serem feitas

* Algoritmos de predição: Não conseguimos testar as variáveis e validar possíveis modelos, bem como reduções possíveis para gerar um modelo com boa predição. Acabamos gastando mais tempo na análise exploratória em si.