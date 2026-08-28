function gerarTabelaPotencias(inicio, fim, base)
    local exp = inicio
    while exp <= fim do
        local pot = base ^ exp
        print(base .. " ^ " .. exp .. " = " .. pot)
        exp = exp + 1
    end
end

print("Digite o expoente inicial (M):")
local m = tonumber(io.read())

print("Digite o expoente final (N):")
local n = tonumber(io.read())

print("Digite a base:")
local baseValor = tonumber(io.read())

gerarTabelaPotencias(m, n, baseValor)
