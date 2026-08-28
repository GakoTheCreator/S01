function contarOcorrencias(tabela, alvo)
    local contador = 0
    for indice, valorAtual in ipairs(tabela) do
        if valorAtual == alvo then
            contador = contador + 1
        end
    end
    return contador
end

print("Digite a quantidade de elementos (N):")
local totalElementos = tonumber(io.read())

local minhaTabela = {}
for pos = 1, totalElementos do
    print("Digite o elemento " .. pos .. ":")
    minhaTabela[pos] = tonumber(io.read())
end

print("Digite o número X a ser buscado:")
local x = tonumber(io.read())

local vezes = contarOcorrencias(minhaTabela, x)
print("O número " .. x .. " aparece " .. vezes .. " vez(es) na tabela.")
