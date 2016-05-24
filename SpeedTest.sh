#!/bin/bash
#AUTHOR: Pablo Acuña
#

URLs=("http://test.copaco.com.py/click.test" "http://speedtest.reliableservers.com/1GBtest.bin" "http://speedtest.tele2.net/1GB.zip" "http://ipv4.download.thinkbroadband.com/1GB.zip" )

SpeedTest(){
        echo "Inicializando el SpeedTest Seleccionado..."
        wget -O /dev/null ${URLs[$1]}
        echo "SpeedTest Finalizado."
}


PS3='Elegir un origen de speed test: '
opciones=('Copaco' 'Reliableservers.com' 'Tele2.net' 'ThinkBroadBand.com' 'Salir')

select opt in  "${opciones[@]}"
do
        case $opt in
        ${opciones[0]} )
                SpeedTest 0
        ;;
        ${opciones[1]} )
                SpeedTest 1
        ;;
        ${opciones[2]} )
                SpeedTest 2
        ;;
        ${opciones[3]} )
                SpeedTest 3
        ;;
        ${opciones[4]} )
                echo Salir... ; break
        ;;
        *) echo "Opcion invalida";;
        esac
done

