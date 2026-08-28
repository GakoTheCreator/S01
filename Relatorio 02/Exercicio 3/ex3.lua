function filtrarMaiores(tabela, limite)
    local resultado = {}
    local qtd = 0
    for _, valor in ipairs(tabela) do
        if valor > limite then
            qtd = qtd + 1
            resultado[qtd] = valor
        end
    end
    return resultado
end

print("Digite a quantidade de elementos (N):")
local totalElementos = tonumber(io.read())

local numeros = {}
for pos = 1, totalElementos do
    print("Digite o elemento " .. pos .. ":")
    numeros[pos] = tonumber(io.read())
end

print("Digite o valor limite (K):")
local k = tonumber(io.read())

local maiores = filtrarMaiores(numeros, k)

print("--- Elementos maiores que " .. k .. " ---")
for _, valor in ipairs(maiores) do
    print(valor)
end
