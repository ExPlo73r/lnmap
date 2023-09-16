#!/bin/bash

# Verifica si nmap está instalado
if ! command -v nmap &> /dev/null
then
    echo "nmap no está instalado. Por favor, instálalo para continuar."
    exit 1
fi

# Verifica si el archivo ips.txt existe
if [ ! -f target.txt ]; then
    echo "El archivo target.txt no existe. Por favor, crea uno con la lista de IPs a escanear."
    exit 1
fi

# Inicializa el archivo de salida
echo "Resultados del escaneo con nmap:" > RESULTADO.txt

# Lee el archivo ips.txt línea por línea
while IFS= read -r ip
do
    echo "Escanenado IP: $ip" >> output.txt
    # Escanea la IP con nmap y agrega los resultados al archivo Resultado.txt
    nmap -Pn -sV -O $ip >> RESULTADO.txt
    echo "----------------------------------------" >> RESULTADO.txt
done < target.txt

echo "Escaneo completado. Los resultados se han guardado en RESULTADO.#!/bin/bash

# Verifica si nmap está instalado
if ! command -v nmap &> /dev/null
then
    echo "nmap no está instalado. Por favor, instálalo para continuar."
    exit 1
fi

# Verifica si el archivo ips.txt existe
if [ ! -f target.txt ]; then
    echo "El archivo target.txt no existe. Por favor, crea uno con la lista de IPs a escanear."
    exit 1
fi

# Inicializa el archivo de salida
echo "Resultados del escaneo con nmap:" > RESULTADO.txt

# Lee el archivo ips.txt línea por línea
while IFS= read -r ip
do
    echo "Escanenado IP: $ip" >> output.txt
    # Escanea la IP con nmap y agrega los resultados al archivo RESULTADO.txt
    nmap -Pn -sV -O $ip >> RESULTADO.txt
    echo "----------------------------------------" >> RESULTADO.txt
done < target.txt

echo "Escaneo completado. Los resultados se han guardado en output.txt."
txt."
