# Desafio Dia 2 – Classificação de idade + Acesso a sistema
# Requisitos obrigatórios
# Solicitar nome e idade do usuário.
# Classificar a idade:
# < 18 → Menor de idade
# 18 a 59 → Adulto
# >= 60 → Idoso
# Exibir a classificação junto com o nome.
# Solicitar senha para acessar o sistema.
# Se a senha for correta, exibir mensagem de acesso liberado.
# Se for incorreta, exibir mensagem de acesso negado.
# Desafio extra (opcional)
# Permitir no máximo 3 tentativas para digitar a senha correta antes de bloquear o acesso.
# Caso o acesso seja negado, o programa deve encerrar.



# Solicitar nome e idade do usuário.
puts "ola qual é o seu nome?"
nome = gets.chomp
puts "Qual a sua idade?"
idade = gets.chomp.to_i

#Valida classificaçao de idade
if idade < 18
    classificacao_idade = "menor de idade"
elsif idade >= 18 && idade <=59
        classificacao_idade = "Adulto"
else 
    classificacao_idade = "idoso"
end
# Exibe a classificação junto com o nome.
puts "Ola #{nome}, a sua classificação de idade é :#{classificacao_idade}"
puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

# Solicita senha para cadastrar
puts "Cadastre a sua senha"
puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

 puts "digite a sua senha "
senha = gets.chomp

puts "Digite a senha novamente"
confirmar_senha = gets.chomp

#Valida se as senhas estão corretas
if confirmar_senha == senha
    puts "Senha cadastrada com sucesso"
else
    puts "Senhas não são identicas, tente novamente"
    exit
end

puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

#Pergunta senha para acessar o sistema
puts "digite a sua senha para entrar no sistema "
senhaAuth = gets.chomp


#Permite no máximo 3 tentativas para digitar a senha correta antes de bloquear o acesso.
count = 0
while senhaAuth != senha
    puts "Senha incorreta, tente novamente"
    count += 1
    if count == 3
        puts "tentativas estouradas"
        exit
    end
    senhaAuth = gets.chomp
end
puts "Acesso permitido #{nome}, Bem vindo!!"