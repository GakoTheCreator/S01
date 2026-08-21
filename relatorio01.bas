' ----------------------------------------------------------------
'  Exercício 1 
Dim peso As double
Dim agua As double
Dim objetivo As double

Input peso
Input agua

objetivo = peso * 35

if agua >= objetivo then
Print "Objetivo atingida!"

else
Print "Objetivo nao atingida"
end if
Sleep
' ----------------------------------------------------------------
'  Exercício 2
Dim pin As Integer
Dim pintando As Integer

pin=4321

Input pintando

while pintando<>pin
    Print "PIN invalido. Tente novamente"
    Input pintando

Wend

Print "Transacao autorizada!"

Sleep
' ----------------------------------------------------------------
'  Exercício 3
Dim hrs As double
Dim mnts As Integer
Dim sgs As Integer

Input hrs

mnts = hrs*60
sgs= hrs*3600

Print hrs
Print mnts
Print sgs
' ----------------------------------------------------------------
'  Exercício 4
Dim distan As double
Dim temp As double
Dim pace As double


Input distan
Input temp


pace=temp/distan

Print "Pace medio (min/km): "; pace
' ----------------------------------------------------------------