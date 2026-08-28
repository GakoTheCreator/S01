function calcularMedia(a, b)
    return (a + b) / 2
end

function encontrarMaior(a, b)
    if a >= b then
        return a
    end
    return b
end

function calcularDiferencaAbsoluta(a, b)
    local d = a - b
    if d < 0 then
        d = -d
    end
    return d
end

function analisarNumeros(n1, n2, operacao)
    if operacao == "diferenca" then
        return calcularDiferencaAbsoluta(n1, n2)
    elseif operacao == "maior" then
        return encontrarMaior(n1, n2)
    elseif operacao == "media" then
        return calcularMedia(n1, n2)
    end
    return "Operação inválida!"
end

print("Digite o primeiro número:")
local num1 = tonumber(io.read())

print("Digite o segundo número:")
local num2 = tonumber(io.read())

print("Digite a operação (\"media\", \"maior\" ou \"diferenca\"):")
local operacaoEscolhida = io.read()

local saida = analisarNumeros(num1, num2, operacaoEscolhida)

if saida == "Operação inválida!" then
    print(saida)
else
    print("Resultado: " .. saida)
end
