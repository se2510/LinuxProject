#!/bin/bash
# Authors: Gonzalez Garcia David Elias and Cynthia Berenice
# 
# This command let you plat TIC-TAC-TOE :D
# Este comando es el juego de... GATO! :D

# Shows the board
mostrar_tablero() {
    clear
    echo ""
    echo "==============================================="
    echo "***********************************************"
    echo "                   ${tablero[0]} | ${tablero[1]} | ${tablero[2]} "
    echo "                  ---+---+---"
    echo "                   ${tablero[3]} | ${tablero[4]} | ${tablero[5]} "
    echo "                  ---+---+---"
    echo "                   ${tablero[6]} | ${tablero[7]} | ${tablero[8]} "
    echo "***********************************************"
    echo "==============================================="
}

# A function that verifies if there is a winner.
hay_ganador() {
    if [[ "${tablero[0]}" == "$1" && "${tablero[1]}" == "$1" && "${tablero[2]}" == "$1" ]] ||
        [[ "${tablero[3]}" == "$1" && "${tablero[4]}" == "$1" && "${tablero[5]}" == "$1" ]] ||
        [[ "${tablero[6]}" == "$1" && "${tablero[7]}" == "$1" && "${tablero[8]}" == "$1" ]] ||
        [[ "${tablero[0]}" == "$1" && "${tablero[3]}" == "$1" && "${tablero[6]}" == "$1" ]] ||
        [[ "${tablero[1]}" == "$1" && "${tablero[4]}" == "$1" && "${tablero[7]}" == "$1" ]] ||
        [[ "${tablero[2]}" == "$1" && "${tablero[5]}" == "$1" && "${tablero[8]}" == "$1" ]] ||
        [[ "${tablero[0]}" == "$1" && "${tablero[4]}" == "$1" && "${tablero[8]}" == "$1" ]] ||
        [[ "${tablero[2]}" == "$1" && "${tablero[4]}" == "$1" && "${tablero[6]}" == "$1" ]];
    then
        return 0 # Return 0 if there is a winner
    else
        return 1 # HAHA, LOSER
    fi
}



# Basically the main function of THE GAME.
jugar_gato() {
    # Initialize tboard.
    tablero=(0 1 2 3 4 5 6 7 8)
    # Shows the empty board.
    mostrar_tablero
    # Main loop of the game.
    while true; do
        # Player 1 (X) turn -------------------------------------------------------------------
        read -p "Es el turno del jugador 1 (X). Seleccione una casilla (0-8): " casilla
        # The next while is for enter on a loop to request the user a valid input.
        while [ "${tablero[$casilla]}" = "X" ] || [ "${tablero[$casilla]}" = "O" ]; do
            read -p "Casilla ocupada. Seleccione otra casilla: " casilla
        done
        tablero[$casilla]="X" # for asign in that tile the X mark.
        mostrar_tablero # Shows how is goin' the game.
        if todas_las_casillas_estan_ocupadas = 0; then # Checks if there is a tile left to place, if not, ends THE GAME.
            echo "Ambos perdieron :C, que nubs. "
            break
        else
            if hay_ganador "X"; then # Checks if player X have won.
                echo "¡El jugador 1 (X) ha ganado!"
                echo "Congratulaciones, mai friendo! :D " # Gano P1, wow, que novedad.
                echo "      ⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⡿⣿⣇⠀⠀⠀⠀"
                echo "      ⣿⢏⣹⣳⣯⣗⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⡿⠃⠒⣜⣮⢧⡀⠀⠀"
                echo "      ⣿⡞⠁⡉⠙⠻⣷⣿⢦⣤⣤⣶⣶⣶⣶⣶⣶⣾⣿⡿⠋⠀⠌⡐⠈⢿⣿⣣⠀⠀"
                echo "      ⣿⠀⢂⠐⡁⢂⣬⣿⣿⢫⠉⠀⠀⠀⠀⠀⠀⠜⡹⢿⣿⣿⣶⣶⣤⣈⣿⣷⣗⠀"
                echo "      ⡇⢀⣦⣼⣾⣿⣿⣿⡭⡃⠌⠀⠀⠀⠀⠀⠀⠀⠑⡹⣚⢿⣿⣿⣿⣿⣿⣿⣼⠀"
                echo "      ⣿⣿⣿⣿⣿⣿⣟⢧⢃⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠉⢎⠳⢯⡟⣿⣻⢿⣯⡷"
                echo "      ⣿⣿⡿⣟⡿⡓⢎⠂⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣰⣬⣧⡝⢊⠙⣷"
                echo "      ⠟⢧⠛⠥⠃⢉⠀⣴⣾⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⠀⠀⢸"
                echo "      ⠈⠄⡈⠤⣁⠢⡀⢿⣿⣿⣿⠃⠀⠀⠀⠀⢠⡄⠀⣴⠀⠀⡀⢙⢛⡛⠭⢠⠃⢆"
                echo "      ⠐⡠⢑⡒⡄⠓⡌⣌⢩⣩⠷⠶⣤⠀⠀⠀⠀⠳⠾⠃⢀⢸⡼⠋⠋⠛⢦⡃⠞⡠"
                echo "      ⢀⠱⡈⢖⡈⢣⠜⣠⠟⠀⠀⠀⠀⢳⡄⠀⠀⠀⠀⠀⠐⣾⠁⠀⠀⠀⠈⢧⢣⢸"
                echo "      ⣆⠠⢑⠢⣉⠆⢼⡟⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠈⣷⢯"
                echo "      ⡏⠀⠀⢁⠂⢌⡟⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠈⣗⠀⠀⠀⠀⠀⠀⠈⢯"
                echo "      ⠀⠀⠀⠀⠀⠋⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠀⠀⠀⠀"
                echo "      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡇⠀⠀⠀⠀⠀⠀⠘⣷⠀⠀⠀⠀⠀⠀⠀"
                echo ""
                break
            fi
        fi
        # Player 2 (O) turn -------------------------------------------------------------------
        read -p "Es el turno del jugador 2 (O). Seleccione una casilla (0-8): " casilla
        while [ "${tablero[$casilla]}" = "X" ] || [ "${tablero[$casilla]}" = "O" ]; do
            read -p "Casilla ocupada. Seleccione otra casilla: " casilla
        done
        tablero[$casilla]="O" # Marks the O sign on the board (Player 2)
        mostrar_tablero # Show how it is goin THE GAME
        
        if todas_las_casillas_estan_ocupadas = 0; then  # Checks if there is a tile left to place, if not, ends THE GAME.
            echo "Ambos perdieron :C, que nubs. "
            break
        else
            if hay_ganador "O"; then # Check if P2 have won
            echo "¡El jugador 2 (O) ha ganado!"
            echo "Congratulaciones, mai friendo! :D " # Todo un crack el P2, mi heroe (It means that P2 is cooler than P1)
            echo "      ⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⡿⣿⣇⠀⠀⠀⠀"
            echo "      ⣿⢏⣹⣳⣯⣗⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⡿⠃⠒⣜⣮⢧⡀⠀⠀"
            echo "      ⣿⡞⠁⡉⠙⠻⣷⣿⢦⣤⣤⣶⣶⣶⣶⣶⣶⣾⣿⡿⠋⠀⠌⡐⠈⢿⣿⣣⠀⠀"
            echo "      ⣿⠀⢂⠐⡁⢂⣬⣿⣿⢫⠉⠀⠀⠀⠀⠀⠀⠜⡹⢿⣿⣿⣶⣶⣤⣈⣿⣷⣗⠀"
            echo "      ⡇⢀⣦⣼⣾⣿⣿⣿⡭⡃⠌⠀⠀⠀⠀⠀⠀⠀⠑⡹⣚⢿⣿⣿⣿⣿⣿⣿⣼⠀"
            echo "      ⣿⣿⣿⣿⣿⣿⣟⢧⢃⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠉⢎⠳⢯⡟⣿⣻⢿⣯⡷"
            echo "      ⣿⣿⡿⣟⡿⡓⢎⠂⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣰⣬⣧⡝⢊⠙⣷"
            echo "      ⠟⢧⠛⠥⠃⢉⠀⣴⣾⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⠀⠀⢸"
            echo "      ⠈⠄⡈⠤⣁⠢⡀⢿⣿⣿⣿⠃⠀⠀⠀⠀⢠⡄⠀⣴⠀⠀⡀⢙⢛⡛⠭⢠⠃⢆"
            echo "      ⠐⡠⢑⡒⡄⠓⡌⣌⢩⣩⠷⠶⣤⠀⠀⠀⠀⠳⠾⠃⢀⢸⡼⠋⠋⠛⢦⡃⠞⡠"
            echo "      ⢀⠱⡈⢖⡈⢣⠜⣠⠟⠀⠀⠀⠀⢳⡄⠀⠀⠀⠀⠀⠐⣾⠁⠀⠀⠀⠈⢧⢣⢸"
            echo "      ⣆⠠⢑⠢⣉⠆⢼⡟⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠈⣷⢯"
            echo "      ⡏⠀⠀⢁⠂⢌⡟⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠈⣗⠀⠀⠀⠀⠀⠀⠈⢯"
            echo "      ⠀⠀⠀⠀⠀⠋⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠀⠀⠀⠀"
            echo "      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡇⠀⠀⠀⠀⠀⠀⠘⣷⠀⠀⠀⠀⠀⠀⠀"
            echo ""
            break
            fi
        fi
    done
}

todas_las_casillas_estan_ocupadas() {   # Verifies if there is a tile in blank.
    local ocupadas=0    # Using a counter named "ocupadas"
    for i in {0..8}; do     # We will go and scan all over the board (tablero[])
        if [ "${tablero[$i]}" = "X" ] || [ "${tablero[$i]}" = "O" ]; then   # So, if encounters an "X" or "O"
            (( ocupadas++ ))    # Will increment by 1 the variable "ocupadas"
        fi
    done
    if [ $ocupadas -eq 9 ]; then # Till "ocupadas" equals to 9, means that all the board is full.
        return 0    # Returns 0 if is indeed full.
    else
        return 1    # Returns 1 if it is still free space.
    fi
}

inicio() {

    clear
    echo "========================================="
    echo "*****************************************"
    echo "************███╗***███╗██████╗***********"
    echo "************████╗*████║██╔══██╗**********"
    echo "************██╔████╔██║██████╔╝**********"
    echo "************██║╚██╔╝██║██╔══██╗**********"
    echo "************██║*╚═╝*██║██║**██║**********"
    echo "************╚═╝*****╚═╝╚═╝**╚═╝**********"
    echo "*****************************************"
    echo "****███╗***███╗██╗███████╗██╗**██╗██╗****"
    echo "****████╗*████║██║██╔════╝██║**██║██║****"
    echo "****██╔████╔██║██║███████╗███████║██║****"
    echo "****██║╚██╔╝██║██║╚════██║██╔══██║██║****"
    echo "****██║*╚═╝*██║██║███████║██║**██║██║****"
    echo "****╚═╝*****╚═╝╚═╝╚══════╝╚═╝**╚═╝╚═╝****"
    echo "*****************************************"
    echo "========================================="
    echo ""
    echo ""
    echo " Bienvenide!, $USER, que deseas hacer? :3"
    echo " "
    echo "1) Juegar :D! "
    echo "2) Salir :c "
    echo ""
    echo "Selecciona una opcion (1-2): "

}

main() {
    inicio
    opc=0
    read opc
    case $opc in
    1)
        clear
        jugar_gato
        ;;
    2)
        echo "                     /^--^\     /^--^\     /^--^\                        "
        echo "                     \____/     \____/     \____/                        "
        echo "                    /      \   /      \   /      \                       "
        echo "                   |        | |        | |        |                     "
        echo "                    \__  __/   \__  __/   \__  __/                       "
        echo "|^|^|^|^|^|^|^|^|^|^|^|^\ \^|^|^|^/ /^|^|^|^|^\ \^|^|^|^|^|^|^|^|^|^|^|^|"
        echo "| | | | | | | | | | | | |\ \| | |/ /| | | | | | \ \ | | | | | | | | | | |"
        echo "########################/ /######\ \###########/ /#######################"
        echo "| | | | | | | | | | | | \/| | | | \/| | | | | |\/ | | | | | | | | | | | |"
        echo "|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|"
        echo "            Has escogido el camino aburrido :C, que aguado"
        echo "                             Baiiii! :D "
        ;;
    *)
        echo " Usted no aprende...... OPCION INCORRECTA " ;;
    esac
}

main