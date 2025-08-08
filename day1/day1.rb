# Exercicios dia 1
# 🧪 Requisitos:
# Solicitar o nome do usuário
# Solicitar a idade
# Calcular o ano de nascimento (assuma que já fez aniversário no ano atual)
# Imprimir uma mensagem como:
# Olá, Erick! Você tem 30 anos e nasceu em 1995.

# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

# Exercicio dia 1: Calculando ano de nascimento"


puts "Ola, qual é o seu nome?"
nome = gets.chomp
puts "Ola #{nome}, muito prazer!"
puts "_____________________________"




puts "Quantos anos você tem?"
idade = gets.chomp.to_i
ano_atual = Time.now.year
ano_nascimento = ano_atual - idade
puts "Muito prazer #{nome}, você tem #{idade} anos de idade e nasceu em #{ano_nascimento}"
puts "_____________________________"




# xx Calculando o dia da semana xx

#Calcular o dia da semana é possivel com a regra de zeller 

# Formula

#h = (q + 26(m+1)/10 + k + k/4 + j/4 + 5j) mod 7
# q = dia
# m = mes
# j = Dois primeiros numeros do ano
# k = Dois ultimos numeros do ano

# Para calcular o mod 7
# mod = número % 7

# Para calcular os dois primeiros numeros do ano de nascimento
# Ano_de_nascimento  = ano % 100\\\\

# Para calcular os dois ultimos numeros do ano de nascimento 
# Ano_de_nascimento = ano / 100

# Xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
puts "Digite o dia do seu nascimento:"
q = gets.chomp.to_i

if q <1 || q > 31
    puts "Data invalida!! Tente novamente"
    exit
end
puts "_____________________________"

    
puts "Digite o número correspondente ao mês do seu nascimento:"
puts "1 = Janeiro, 2 = Fevereiro, 3 = Março, 4 = Abril, 5 = Maio, 6 = Junho, 7 = Julho, 8 = Agosto, 9 = Setembro, 10 = Outubro, 11 = Novembro, 12 = Dezembro"
m = gets.chomp.to_i
puts "_____________________________"
 
if m <1 || m > 12
    puts "Numero invalido!! Tente novamente"
    exit
end
    
mes = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
mes_nascimento = mes[m - 1]


    ano_ajustado = ano_nascimento
    # Ajuste para janeiro e fevereiro por causa da regra de zeller
    # janeiro e fevereiro são considerados como os últimos meses do ano anterior.
    #O if converte "janeiro 1" para 13 e "fevereiro 2" para 14
    if m == 1 || m == 2
        m += 12
        ano_ajustado -= 1
    end


    #Calculo com o ano ajustado corretamente para calcular se o mes for janeiro ou fevereiro
    k = ano_ajustado % 100
    j = ano_ajustado / 100
    
    #Formula 
    h = (q + ((26 * (m + 1)) / 10).floor + k + (k / 4) + (j / 4) + (5 * j)) % 7
    
    dias = ["Sábado", "Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira"]
    
    dia_semana = dias[h]

    if dia_semana == "Sábado" || dia_semana == "Domingo"
        puts "Legal!! Você nasceu em #{q} de #{mes_nascimento} de #{ano_nascimento} no: #{dia_semana}"
    else
        puts "Legal!! Você nasceu em #{q} de #{mes_nascimento} de #{ano_nascimento} na: #{dia_semana}"
    end
    