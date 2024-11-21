--funcao
local function minhaFuncao() --funcao apenas no escopo local
    print("ola, minha funcao")
    
end
--minhaFuncao() --chamada da funcao

MinhaString = "" --declara string
MinhaInt = 0 --declara int
MinhaFloat = 0.0 --declara float
MeuArray = {} --declara tabela vazia e pode ser usada como array
table.insert(MeuArray,25) --funcao que insere um valor no final do arrai, no caso 25
table.remove(MeuArray, 2) --remove o elemento na posicao 2
---@diagnostic disable-next-line: discard-returns
table.concat(MeuArray, ", ")--concatena elementos ta table
for i=1, #MeuArray do --laco for (for, i recebe 1, ate o tamanho do array, faça)
    
end

function MeuTeste() --sem do em funcao
   local MeuString = ""
    local MeuTeste =1
    repeat 
        print("me escreva")
        MeuString=io.read()--para ler do teclado
        if #MeuString ~=0 then --atentar ao diferente de 
            MeuTeste = MeuTeste + 1
        end

    until MeuTeste>1
    print("voce escreveu: " )--.. MeuString) --atencao a concatenacao
    for i=1, #MeuString do
        io.write(string.upper(string.sub(MeuString, i, i))) --uma bagunça, uma funcao retira o caracter,
                                                            --outra sobe pra upper case
                                                            --e outra escreve em tela
    end
    print(" ")--mew line
end
--MeuTeste() --chama meu teste

function NovoTeste()
    local novaString = "m"
    --io.write(
    local novaNovaString = string.sub(novaString,1,1) --extrai a letra
    print("")
    io.write(novaNovaString) --imprime apenas uma letra
    print("")
end
--NovoTeste()
Palavra={}
Palavra.__index=Palavra

function Palavra:novaPalavra(tamanho) --construtor
    local self =setmetatable({}, Palavra) --importante: self é convenção, mas nao obrigação
    self.dados={}
    for i = 1, tamanho do
        self.dados = ' ' --algo
    end
    return self
end

function Palavra:preencher(texto) --transpor o texto recebido no table
    self.dados={} --erro, faltava decalrar
    for i =1, #texto do
        self.dados[i]=string.sub(texto, i, i)
    end
end
function Palavra:getPalavra()

end
function Main()
    local ler = ""
    print("***preenchimento***")
    io.write("insira nome: ")
    ler = io.read("*L")
    --print("inserido: "..ler)
    local novaLer =Palavra:novaPalavra(#ler)
    novaLer:preencher(ler)

end
Main()
function LerRandom(palavra)
    local novaPalavra = {}
    local novaNovaPalavra = {}
    local indexIndices = {}
    for i = 1, #palavra do
        novaPalavra[i]=string.sub(palavra, i, i)
    end
    for i = 1, #palavra do
        --print("laco interno : "..i)
        local temp=0
        if i==1 then
            temp = math.random(1, #palavra)
            novaNovaPalavra[i]=novaPalavra[temp]
            indexIndices[i]=temp
        elseif i>1 then
                do
                    ::continue::
                    local temp = math.random(1, #palavra)
                    local ctr=0
                        for j = 1, #indexIndices do
                            if indexIndices[j]==temp then --se numero sorteado ja tiver sido
                                ctr = 1 --identificou repeticao
                                break
                            end
                        end
                    if ctr ==1 then
                        goto continue --repete o random
                    end
                        --se chegar aqui é pq nao ta repetida
                    novaNovaPalavra[i]=novaPalavra[temp]
                    indexIndices[i]=temp
                    --break
                end
            end
    end
    --print("nova palavra: "..table.concat(novaNovaPalavra))
    return novaNovaPalavra

end

function Main() --algo errado nao esta certo

    local ler=""
    local novoVetor ={}
    io.write("inserir nome: ")
    ler=io.read()
    print("valor de : "..ler .. " e :"..#ler)
   --
    local vetorBase = Palavra:novaPalavra(#ler)
    vetorBase:preencher(ler)
    local colunas =#ler
    local linhas = #ler
    for i=1, linhas do
        novoVetor[i]={}
        for j = 1, 1 do
            novoVetor[i][j]=(LerRandom(ler))
            
        end
    end
    for i=1, linhas do
        --novoVetor[i]={}
        for j = 1, 1 do
            --novoVetor[i][j]=(LerRandom(ler))
            io.write(table.concat(novoVetor[i][j])) --sem o table.concat o lua imprime os endereços
        end
        print("")
    end

end

--Main()
Teste={
    integer = 0,  --foram distinta de declarar uma variavel, não muito eficiente
}