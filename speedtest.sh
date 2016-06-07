#!/bin/bash
#
#AUTHOR: Pablo Acuña
#REPOSITORY: https://github.com/pacupa/speedtest/
#

URLs=("http://test.copaco.com.py/click.test" "http://speedtest.reliableservers.com/1GBtest.bin" "http://speedtest.tele2.net/1GB.zip" "http://ipv4.download.thinkbroadband.com/1GB.zip" )

SpeedTest(){
        echo "Inicializando el SpeedTest Seleccionado... " $2
        curl -o /dev/null ${URLs[$1]}
        echo "SpeedTest Finalizado."
}


PS3='Elegir un origen de speed test: '
opciones=('Copaco' 'Reliableservers.com' 'Tele2.net' 'ThinkBroadBand.com' 'Salir')

select opt in  "${opciones[@]}"
do
        case $opt in
        ${opciones[0]} )
                SpeedTest 0 $opt
        ;;
        ${opciones[1]} )
                SpeedTest 1 $opt
                ;;
        ${opciones[2]} )
                SpeedTest 2 $opt
        ;;
        ${opciones[3]} )
                SpeedTest 3 $opt
        ;;
        ${opciones[4]} )
                echo Saliendo... ; break
        ;;
        *) echo "Opcion invalida";;
        esac
done

