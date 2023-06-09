#!/bin/bash
# Authors: Gonzalez Garcia David Elias and Cynthia Berenice
# 
# This command simulates a functional terminal for LINUX
# Este comando es super cul! :D

trap 'echo " <--- Apoco si, pa? 🤨"' SIGINT
trap 'echo " <--- Apoco si, pa? 🤨"' SIGTSTP

bienvenida() {
    echo "  ⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜.._......._......._................  "
    echo "  ⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜.|.|.....|.|.....|.|..............."
    echo "  ⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜.|.|.....|.|.....|.|..............."
    echo "  ⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬜⬜⬜⬜.|.|___..|.|___..|.|___............"
    echo "  ⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜⬜.|_____|.|_____|.|_____|..........."
    echo "  ⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜..................................."
    echo "  ⬛⬛⬛⬛⬛⬛⬜⬛⬛⬜⬜⬜⬜⬛⬛⬜⬜⬜.._................................"
    echo "  ⬛⬛⬛⬛⬛⬜⬛⬛⬜⬛⬜⬜⬛⬛⬜⬛⬜⬜.|.|.......___...._.__.....__._...."
    echo "  ⬛⬛⬛⬛⬛⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜.|.|....../._.\..|.'_.\.../._ .|..."
    echo "  ⬛⬛⬛⬛⬛⬜⬜⬛⬛⬜⬜🟨🟨⬛⬛⬜⬜⬜.|.|___..|.(_).|.|.|.|.|.|.(_|.|..."
    echo "  ⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜🟨🟨🟨🟨🟨⬜⬜⬜.|_____|..\___/..|_|.|_|..\__,.|..."
    echo "  ⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜🟨🟨🟨🟨🟨🟨⬜..........................|___/...."
    echo "  ⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜.._......._........................"
    echo "  ⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜.|.|.....|.|.\.\././../._.\........"
    echo "  ⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬛⬛⬜⬜.|.|___..|.|..\.V./..|..__/........"
    echo "  ⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜.|_____|.|_|...\_/....\___|........"
    echo "  ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬛..................................."
    echo "  ⬛⬛⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬛.._......._........................"
    echo "  ⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜.|.|.....(_).._.__...._..._..__..__"
    echo "  ⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜.|.|.....|.|.|.'_.\..|.|.|.|.\.\/./"
    echo "  ⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜.|.|___..|.|.|.|.|.|.|.|_|.|..>..<."
    echo "  ⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜.|_____|.|_|.|_|.|_|..\__,_|./_/\_\ "
    echo "  ⬜⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜⬜..................................."
    echo "  ⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜..................................."
    echo ""
    echo ""
    echo "➖⬛⬛      Bienvenido a Long Live Linux: Simulacion de Terminal"
    echo "⬛⬛🔳                                                          "
    echo "⬛⬛⬜🟧🟧                                                      "
    echo "⬛⬜⬜      En esta terminal, puedes escribir los comandos personalizados, o"
    echo "⬛⬛⬜      puedes escribir cualquier comando. Para ver los comandos "
    echo "⬛⬛⬜      personalizados, escribe 'ayuda'."
    echo "⬛⬜⬜       "
    echo "⬛⬜⬜      Para salir, escribe 'bai' ."
    echo "⬛➖⬛"

}

cli() {
    cd comandos
    while true; do
    echo -n -e "\033[36m$(whoami)@\033[32m$(hostname)\033[0m🐧\033[35m$(pwd)\033[0m🧊 "
    read input
    # Verificar si se ingresó algún comando
    case $input in
        #'creditos')
            #./comandos.sh
        #;;
        #'fechayhora')
            #./fechayhora.sh
        #;;
        #'dirsrc')
            #./dirsrc.sh
        #;;
        #'mishi')
            #./mishi.sh
        #;;
        #'mp3')
            #./mp3.sh
        #;;
        #'infosys')
            #./infosys.sh
        #;;
        #'ayuda')
            #./ayuda.sh
        #;;
        'bai')
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠿⣷⡀⠀"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⢟⣧⠹⣿⡀"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠏⠼⢿⡄⢿⡇"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠴⠞⠉⣧⢸⣷"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟⠀⠀⠀⠀⣿⢠⡿"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠁⢀⣤⣴⣶⡏⢸⡇"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣟⣻⣿⣽⣺⣿⠃⣿⠀"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣷⣶⣶⣶⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠛⠛⠋⠉⠀⣼⢰⡿⠀"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠷⠒⠒⠊⠉⢉⡏⣾⠃⠀"
            echo "⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⡿⠟⠛⠉⠛⠿⢿⣿⣿⣿⣿⣿⣿⡿⠟⠿⣷⣦⡀⠀⠀⠀⠀⠀⠀⣸⡏⠀⠀⠀⠀⠀⣼⢠⣿⠀⠀"
            echo "⠀⠀⠀⠀⠀⠀⣤⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⠟⠀⠀⠀⠀⠙⢿⣄⠀⠀⠀⠀⢠⣿⠃⠃⠀⠀⠀⢠⠏⣼⠃⠀⠀"
            echo "⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⡿⠀⠀⠀⠀⠀⠀⠈⢿⣧⠀⠀⠀⣼⡇⠀⠀⠀⠀⠀⣾⢠⣿⠀⠀⠀"
            echo "⠀⠀⠀⠀⢰⣿⣿⣿⣿⡿⠀⠀⠀⢀⣀⣀⣀⡀⠀⠀⠀⠀⢻⣿⣷⠀⠀⠀⣀⣤⣤⣀⣈⣻⣇⠀⢰⡿⠁⠀⠀⠀⠀⢠⠏⣾⠇⠀⠀⠀"
            echo "⠀⠀⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠘⢿⣿⣿⣿⡿⠃⢠⣴⣶⣻⣛⡛⣷⣶⣄⠻⠿⠿⠿⠋⠛⣿⣦⣼⡇⠀⠀⠀⠀⠀⣾⢀⡿⠀⠀⠀⠀"
            echo "⠀⠀⠀⢀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠓⠒⠖⠒⠒⠋⠁⠀⠀⠀⠀⠀⠀⢸⣿⣿⣀⡀⠀⠀⠀⢠⠃⣾⠇⠀⠀⠀⠀"
            echo "⠀⠀⠀⢸⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣷⣶⣾⣴⡿⠀⠀⠀⠀⠀"
            echo "⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣦⣤⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣦⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀"
            echo "⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⡉⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⡿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⢀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⠀⠀⠀⠉⠛⠻⠿⣿⣿⣿⣿⣿⣿⡿⠛⠉⠁⠀⠉⠛⢦⡄⠀⠀⠀⠀⣀⣠⣤⣴⣾⣿⣿⠿⠿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⢹⣯⣠⣴⣶⣄⣰⣠⣶⠶⠿⠖⠈⠉⠉⠉⠁⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            echo -e "             Gracias por utilizar LLL 🐧🧊 "
            exit 0  #sale de la terminal :D
        ;;
        *)
            if [[ -n "$input" ]]; then # -n indicates that input is a valid input LOOOOL
            #Ejecutar el comando ingresado
            eval "$input"
            fi
        ;;
        esac
#    if [[ "$input" = 'bai' ]]; then # -n indicates that input is a valid input LOOOOL
#
#    else
#        if [[ -n "$input" ]]; then # -n indicates that input is a valid input LOOOOL
#            # Ejecutar el comando ingresado
#            eval "$input"
#        fi
#    fi
    done
}

ejec_comandos(){ #This function will copy all the commands and will give them the rights.
    cd comandos/ejecutable
    
    sudo chmod +x lll
    sudo chmod +x ayuda
    sudo chmod +x creditos
    sudo chmod +x dirsrc
    sudo chmod +x fechayhora
    sudo chmod +x infosys
    sudo chmod +x mishi
    sudo chmod +x mp3   

    sudo cp lll /usr/local/bin/
    sudo cp ayuda /usr/local/bin/
    sudo cp creditos /usr/local/bin/
    sudo cp dirsrc /usr/local/bin/
    sudo cp fechayhora /usr/local/bin/
    sudo cp infosys /usr/local/bin/
    sudo cp mishi /usr/local/bin/
    sudo cp mp3 /usr/local/bin/
    cd ..
    cd ..

}

#usuarios() { #borrado :C
#}

main(){
    bienvenida
    ejec_comandos
    echo ""
    cli
    #if usuarioss = 0; then
    #    cli
    #else
    #    echo "Crea antes un usuario mi estimade! :D"
    #    exit 0
    #fi
}

main