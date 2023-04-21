#!/bin/bash
# Authors: Gonzalez Garcia David Elias and Cynthia Berenice
# 
# This command let you plat TIC-TAC-TOE :D
# Este comando es el juego de... GATO! :D

# Shows the board
mostrar_tablero() {
    
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
    if [ "${tablero[0]}" == "$1" ] && [ "${tablero[1]}" == "$1" ] && [ "${tablero[2]}" == "$1" ] ||
        [ "${tablero[3]}" == "$1" ] && [ "${tablero[4]}" == "$1" ] && [ "${tablero[5]}" == "$1" ] ||
        [ "${tablero[6]}" == "$1" ] && [ "${tablero[7]}" == "$1" ] && [ "${tablero[8]}" == "$1" ] ||
        [ "${tablero[0]}" == "$1" ] && [ "${tablero[3]}" == "$1" ] && [ "${tablero[6]}" == "$1" ] ||
        [ "${tablero[1]}" == "$1" ] && [ "${tablero[4]}" == "$1" ] && [ "${tablero[7]}" == "$1" ] ||
        [ "${tablero[2]}" == "$1" ] && [ "${tablero[5]}" == "$1" ] && [ "${tablero[8]}" == "$1" ] ||
        [ "${tablero[0]}" == "$1" ] && [ "${tablero[4]}" == "$1" ] && [ "${tablero[8]}" == "$1" ] ||
        [ "${tablero[2]}" == "$1" ] && [ "${tablero[4]}" == "$1" ] && [ "${tablero[6]}" == "$1" ];
    then
        return 1 # Return 1 if there is a winner
    else
        return 0 # HAHA, LOSER
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
        # Player 1 (X) turn
        read -p "Es el turno del jugador 1 (X). Seleccione una casilla (0-8): " casilla
        # The next while is for enter on a loop to request the user a valid input.
        while [ "${tablero[$casilla]}" = "X" ] || [ "${tablero[$casilla]}" = "O" ]; do
            read -p "Casilla ocupada. Seleccione otra casilla: " casilla
        done
        tablero[$casilla]="X" # for asign in that tile the X mark.
        mostrar_tablero # Shows how is goin' the game.
        if hay_ganador "X"; then # Checks if player X have won.
            echo "¡El jugador 1 (X) ha ganado!"
            break
        fi
        # Player 2 (O) turn
        read -p "Es el turno del jugador 2 (O). Seleccione una casilla (0-8): " casilla
        while [ "${tablero[$casilla]}" = "X" ] || [ "${tablero[$casilla]}" = "O" ]; do
            read -p "Casilla ocupada. Seleccione otra casilla: " casilla
        done
        tablero[$casilla]="O" # Marks the O sign on the board (Player 2)
        mostrar_tablero # Show how it is goin THE GAME
        if hay_ganador "O"; then # Check if P2 have won
            echo "¡El jugador 2 (O) ha ganado!"
            break
        fi
    done
}

function todas_las_casillas_estan_ocupadas {
    local ocupadas=0
    for i in {1..9}; do
        if [ "${tablero[$i]}" = "X" ] || [ "${tablero[$i]}" = "O" ]; then
            (( ocupadas++ ))
        fi
    done
    if [ $ocupadas -eq 9 ]; then
        return 0
    else
        return 1
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
        echo "Has escogido el camino aburrido :C, que aguado"
        echo " Baiiii! :D "
        ;;
    *)
        echo " Usted no aprende...... OPCION INCORRECTA " ;;
    esac
}

main