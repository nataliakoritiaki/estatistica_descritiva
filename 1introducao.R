#----------------------------------
# Comandos de ajuda               -
#----------------------------------

help.start()
help(average)
?(average)

# Para escrever comentarios no R,
# ou seja, algo como uma ou observacao
# ou uma legenda, utilizamos o simbolo
# da hashtag ou jogo da velha (#) na 
# linha do comentario.

# ? importante colocar esse s?mbolo, 
# para que o programa n?o entenda o 
# comentario como um comando e nao gere 
# um erro!

#----------------------------------
# Limpar dados armazenados        -
#----------------------------------

rm(list=ls())

#----------------------------------
# Instalar Pacotes               -
#----------------------------------

install.packages('gsheet', dept=T)

#----------------------------------
# Ativar Pacotes                  -
#----------------------------------

library(gsheet)
require(gsheet)

#----------------------------------
# Entrar com os Dados             -
#----------------------------------

# Data Frame:

resposta <- c(35,19,31,15,30,40,35,
              46,41,33)
tratamento <- expand.grid(rep=1:5, 
                      trat=LETTERS[1:2])
data.frame(croqui, resposta)

dados <- data.frame(tratamento, resposta)
attach(dados)

#----------------------------------

# Tabela:

dados_2 <- edit(data.frame())
attach(dados_2)

#----------------------------------

# GSheet:

install.packages('gsheet', dept=T)
require(gsheet)
dados_3 <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1ZsriqwS6rZMhk41r4FGOPr8ugdl6GFhfpYs05h_18Dc/edit?usp=sharing')
attach(dados_3)
dados_3

#----------------------------------