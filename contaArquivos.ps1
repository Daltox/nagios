#
# Script para contar arquivos em determinada pasta
# Author: Dalto Brito(GETEC)
# Date: 2021-09-02
#
# UserParameter=conta.arquivos[*],powershell.exe -noprofile -executionpolicy bypass -File C:\zabbix\scripts\contaArquivos.ps1 $1

$diretorio=$args[0];

$numero='0';

$numero=(Get-ChildItem -Path $diretorio -File | Measure-Object).Count;

write-output $numero;