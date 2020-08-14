rm(list=ls())

#----------------------------------
# Comando dos Gráficos            -
#----------------------------------

# col = Cores do Grafico
# xlab = Titulo do Eixo Horizontal
# ylab = Titulo do Eixo Vertical
# main = Titulo do Grafico
# barblot = barra e coluna
# pie = setores
# plot = dispersao

#----------------------------------
# Colunas / Barras                -
#----------------------------------

Carne <- c('Suina', 'Frango', 'Bovina', 'Ovina')
Mundo <- c(15.79, 14.88, 9.54, 1.99)
Brasil <- c(13.08, 38, 40.18, 0.61)
Cores <- c('#27137dff', '#f4b400', '#0f9d58', '#ff0000')

x <- 'Tipo de Carne'          # Legenda dos Eixos
y <- 'Consumo de Carne (kg)'  # Legenda dos Eixos

# Colunas:

barplot(Mundo ~ Carne,   # Dados
        col = Cores,          
        xlab = x, ylab = y,  
        main = 'Consumo de Carne Mundial no ano de 2012 (kg)')                      
box(bty = 'L')           # Linha Abaixo

# Barras:

barplot(horiz = T,       # Barras
        Mundo ~ Carne,   # Dados
        col = Cores,          
        xlab = y, ylab = x,     
        main = 'Consumo de Carne Mundial no ano de 2012 (kg)')                      
box(bty = 'L')           # Linha Abaixo

#----------------------------------
# Setores (Pizza)                 -
#----------------------------------

Carne <- c('Suina', 'Frango', 'Bovina', 'Ovina')
Mundo <- c(15.79, 14.88, 9.54, 1.99)
Brasil <- c(13.08, 38, 40.18, 0.61)
Cores <- c('#27137dff', '#f4b400', '#0f9d58', '#ff0000')

x <- 'Tipo de Carne'          # Legenda dos Eixos
y <- 'Consumo de Carne (kg)'  # Legenda dos Eixos

pie(Mundo,                # Dados 
    labels = Carne,       # Legenda  
    col = Cores,
    main = 'Consumo de Carne Mundial no ano de 2012 (kg)')         

#----------------------------------
# Comparativos                    -
#----------------------------------

dados <- data.frame(Mundo, Brasil)

# Colunas Compostas:

barplot(as.matrix(dados),
        beside = FALSE,
        col = Cores, ylab = y, 
        main = 'Consumo de Carne Mundial e Brasileiro 
        no ano de 2012 (kg)')
legend('topleft',
       legend = Carne, fill = Cores,
       bty = 'n')
box(bty = 'L')

# Colunas Justapostas:

barplot(as.matrix(dados),
        beside = TRUE,
        col = Cores, ylab = y,
        main = 'Consumo de Carne Mundial e Brasileiro 
        no ano de 2012 (kg)')
legend('topleft',
       legend = Carne, fill = Cores,
       bty = 'n')
box(bty = 'L')

#----------------------------------
# Dispers?o                       -
#----------------------------------

Peso <- c(3.80, 2.20, 3.50, 3.50,
          4.10, 4.10, 3.90, 4.20,
          4.90, 5.00)
Altura <- c(12.00, 13.00, 14.00,
            15.00, 15.90, 16.40, 
            18.00, 18.00, 18.00, 
            22.00)

plot(Peso~Altura, pch = 19, 
     col = '#27137dff', main = 'Rela??o entre peso 
     e altura de 10 animais')

#----------------------------------
# Linha                           -
#----------------------------------

Idade <- c(0, 14, 28, 42, 56, 70)
Peso  <- c(2.20, 8.40, 10.00, 13.10,
          14.00, 18.00)

plot(Idade, Peso, pch = 19, 
     col = 'red', main = 'Evolu??o do peso (kg) de 
     um animal em rela??o a sua idade (dias)')
lines(Idade, Peso, col='red')

#----------------------------------