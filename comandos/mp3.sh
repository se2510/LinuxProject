#!/bin/bash
# Authors: Gonzalez Garcia David Elias and Cynthia Berenice
# 
# This command displays an mp3.
# Este comando es un mp3! :D, guau!

    # In the if statement,the "command -v" searches the precense of mpg123 on the system, and 
    # returns 0 (true) if its installed, and if returns a different character than 0 (false) 
    # means that it is not installed. The exit of that command (if it is installed it should be
    #  /usr/bin) will return to /dev/null, just to not be printed on terminal. 

if command -v mpg123 &> /dev/null 
then
    while true; do
    clear
    echo "=========================================================================================="
    echo "******************************************************************************************"
    echo "******************************************************************************************"
    echo "**************************************██*******█████**************************************"
    echo "**************************************██******██***██*************************************"
    echo "**************************************██******███████*************************************"
    echo "**************************************██******██***██*************************************"
    echo "**************************************███████*██***██*************************************"
    echo "******************************************************************************************"
    echo "******************************************************************************************"
    echo "*██████***██████***██████**██████**██*******█████******███████*██***██*██*██████***█████**"
    echo "*██***██*██****██*██******██****██*██******██***██*****██******██***██*██*██***██*██***██*"
    echo "*██████**██****██*██******██****██*██******███████*****███████*███████*██*██***██*███████*"
    echo "*██***██*██****██*██******██****██*██******██***██**********██*██***██*██*██***██*██***██*"
    echo "*██***██**██████***██████**██████**███████*██***██*****███████*██***██*██*██████**██***██*"
    echo "******************************************************************************************"
    echo "******************************MadeBy: Cynthia and Deivi(>‿◠)✌ ****************************"
    echo "=========================================================================================="
    echo ""
    echo "1. Lista de Reproducción."
    echo "2. Reproducir una canción （っ＾▿＾）"
    echo "3. Reproduce una cancion del directorio de tu preferencia. (͠≖ ͜ʖ͠≖)👌"  
    echo "4. Reproduce varias canciones del directorio de tu preferencia. " 
    echo "5. Reproduce musica aleatoria del directorio de tu preferencia. " 
    echo "6. Salir. (╥︣﹏᷅╥)" 
    echo ""
    read -p "Ingrese una opción (1-5): " opcion

    case $opcion in
    1)
        clear
        echo "========================"
        echo " Lista de Reproducción "
        echo "========================"

        #This comand, will open the directory of which estan alojadas las canciones
        cd playlist

        # The following step, is a variable statetment, which is named "lista". It will storage all the files
        # with the extention of .mp3, the * will indicate that all that is before the ".mp3" will be saved.
        lista=$(ls *.mp3)

        # PS3 is an environment variable made to indicate the text that shows before every option of the menu.
        # So, in the following line, we declare it:
        PS3="Selecciona un rolon: "
        # Select is a command that shows an interactive menu on UNIX shell. (Its like a For, or While)
        select cancion in $lista "Salir"; do
        if [ "$cancion" == "Salir" ]; then
            break
        fi

        echo ""
        echo ""
        echo "Reproduciendo: $cancion"
        echo ""
        echo "S: Pausar/Reanudar"
        echo "-: Bajar volumen"
        echo "+: Subir volumen"
        echo "B: Repetir cancioncirri"
        echo ".: Acelerar cancioncirri"
        echo ",: Atrasar cancioncirri"
        echo "Q: Detener y salir"

        mpg123 -C --title -q "$cancion"
        done
        cd ..
        ;;

    2)
        clear
        echo "======================================"
        echo " Reproducir una Cancióncita chida B) "
        echo "======================================"

        cd playlist

        lista=$(ls *.mp3)

        
        PS3="Seleccione una canción: "
        select cancion in $lista "Salir"; do
        if [ "$cancion" == "Salir" ]; then
            break
        fi

        echo ""
        echo ""
        echo "Reproduciendo: $cancion"
        echo ""
        echo "F: Siguiente cancion"
        echo "S: Pausar/Reanudar"
        echo "D: Cancion anterior"
        echo "-: Bajar volumen"
        echo "+: Subir volumen"
        echo "B: Repetir cancioncirri"
        echo ".: Acelerar cancioncirri"
        echo ",: Atrasar cancioncirri"
        echo "Q: Detener y salir"
        mpg123 -C --title -q "$cancion"
        break
        done
        cd ..
        ;;
    3)
        clear
        direc=""
        echo "======================================"
        echo " Musica de directorio :D "
        echo "======================================"
        read -p "Indica la ruta absoluta de tu directorio ;3: " direc

        cd $direc # /home/deivi/Música

        lista=$(ls *.mp3)

        
        PS3="Seleccione una canción: "
        select cancion in $lista "Salir"; do
        if [ "$cancion" == "Salir" ]; then
            break
        fi

        echo ""
        echo ""
        echo "Reproduciendo: $cancion"
        echo ""
        echo "S: Pausar/Reanudar"
        echo "-: Bajar volumen"
        echo "+: Subir volumen"
        echo "B: Repetir cancioncirri"
        echo ".: Acelerar cancioncirri"
        echo ",: Atrasar cancioncirri"
        echo "Q: Detener y salir"
        mpg123 -C --title -q "$cancion"
        break
        done
        cd ..
        ;;
    4)

        clear
        direc=""
        echo "========================================================="
        echo "          VARIAS CANCIONES DE TU DIRECTORIO 7u7          "
        echo " En esta opcion, reproduce la musica de tu directorio en "
        echo " un orden (lista), pudiendo navegar entre opciones.      "
        echo "========================================================="
        read -p "Indica la ruta absoluta de tu directorio ;3: " direc

        cd $direc # /home/deivi/Música

        lista=$(ls *.mp3)

        echo " "
        echo "Estas son las canciones de su directorio: "
        echo ""
        PS3="Reproducir directorio [cualquier tecla] o Salir[No. Asignado]: "
        select cancion in $lista "Salir"; do
        if [ "$cancion" == "Salir" ]; then
            break
        fi

        echo ""
        echo ""
        echo "Reproduciendo: $direc"
        echo ""
        echo "F: Siguiente canción"
        echo "S: Pausar/Reanudar"
        echo "D: Canción anterior"
        echo "-: Bajar volumen"
        echo "+: Subir volumen"
        echo "B: Repetir cancioncirri"
        echo ".: Acelerar cancioncirri"
        echo ",: Atrasar cancioncirri"
        echo "Q: Detener y salir"
        mpg123 -C --title -q $direc/*
        break
        done
        cd ..
        ;;

    5)       
        clear
        direc=""
        echo "======================================"
        echo " Reproducir musica aleatoria B) "
        echo "======================================"
        read -p "Indica la ruta absoluta de tu directorio ;3: " direc

        cd $direc

        echo ""
        echo ""
        echo "Reproduciendo: $direc"
        echo ""
        echo "F: Siguiente canción"
        echo "S: Pausar/Reanudar"
        echo "D: Canción anterior"
        echo "-: Bajar volumen"
        echo "+: Subir volumen"
        echo "B: Repetir canción"
        echo ".: Acelerar canción"
        echo ",: Atrasar canción"
        echo "Q: Detener y salir"
                                # /home/deivi/Documentos/Github/LinuxProject/comandos/playlist
        mpg123 -C --title -q -z $direc/* 
        ;;
    6)
        echo "¡Thanks for being in our hearts :D <3!"
        echo "Take care ( ˘︹˘ ), bye..."
        exit 0
        ;;
    
    *)
        echo "Opción inválida, que tratas de hacer? D:"
        ;;
    esac

    read -n 1 -s -r -p "Presione cualquier tecla para continuar"
    done
else
    opc=""
    read -p "mpg123 no está instalado :C, deseas instalarlo? [S/N](no seas tibio): " opc
    case $opc in
    "n"|"N")
        echo ""
        echo "Pues bueno, decidiste ser tibio, en UNICA hay lugares para ti..."
        echo ""
        exit
        ;;
    "s"|"S")
        echo ""
        echo "Se instalara entonces.... "
        echo ""
        sudo apt install mpg123 
        echo "Listones!, se ha instalado C: "
        echo ""
        exit
        ;;
    *)
        echo ""
        echo "Guatefoc???, que has puesto? " 
        echo ""
        ;;
    esac

fi
