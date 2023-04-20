#!/bin/bash
# Authors: Gonzalez Garcia David Elias and Cynthia Berenice
# 
# This command displays an mp3.
# Este comando es un mp3! :D, guau!




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
    echo "************************************MadeBy: Cynthia and Deivi*****************************"
    echo "=========================================================================================="
    echo ""
    echo "1. Lista de Reproducción"
    echo "2. Reproducir una canción"
    echo "3. Aniadir directorio de musica :3"   
    echo "4. Reproducir musica aleatoria. "  # No funka :B
    echo "5. Salir"
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
        echo " Aniadiendo directorio :D "
        echo "======================================"
        read -p "Indica la ruta absoluta de tu directorio ;3: " direc

        cd $direc

        lista=$(ls *.mp3)

        
        PS3="Seleccione una canción: "
        select cancion in $lista "Salir"; do
        if [ "$cancion" == "Salir" ]; then
            break
        fi

        echo ""
        echo ""
        echo "Reproduciendo: $cancion"
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
    4)       # No funka :B
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
        echo "F: Siguiente cancion"
        echo "S: Pausar/Reanudar"
        echo "D: Cancion anterior"
        echo "-: Bajar volumen"
        echo "+: Subir volumen"
        echo "B: Repetir cancioncirri"
        echo ".: Acelerar cancioncirri"
        echo ",: Atrasar cancioncirri"
        echo "Q: Detener y salir"
        mpg123 -C --title -q "$direc" # No funka :B
        ;;
    5)
        echo "¡Thanks for being in our hearts :D <3!"
        exit 0
        ;;
    
    *)
        echo "Opción inválida, que tratas de hacer? D:"
        ;;
    esac

    read -n 1 -s -r -p "Presione cualquier tecla para continuar"
done

