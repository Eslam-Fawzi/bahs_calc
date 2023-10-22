#!/bin/bash


####################################################################################################
##############            Simple Calculator                            #############################
##############              Eslam Fawzi Metwally                       #############################
##############              Aya Mohamed                                #############################
##############              Abdallah Mohamed Ahmed Abdel Gawwad        #############################
##############              Ahmed Ibrahim Abdelmotaleb Rashed          #############################
##############              Ashraf AbdelSattar Soliman                 #############################
##############              version 1.3                                #############################
##############               22/10/2023                                #############################
####################################################################################################
#--------------------------------------------------------------------------------------------------#

#This program simulates two modes of Pc's calculator (Standard & Programmer) as a Project in ITI Bash script course



#functions of the code

#Error function
Invalid_input(){
    whiptail --title "Invalid Input" --msgbox "Please enter valid number" 10 50
}


#dashboard menu function
dashboard(){
    operation=$(whiptail --title "Bash Calculator" --menu "Choose an operation:" 12 50 6 \
        "1" "Our Team credits" \
        "2" "Standard Operations" \
        "3" "Programmer Calculator" \
    "4" "Exit" 3>&1 1>&2 2>&3)
    
    
}

#function to call our names and credits
credits(){
    whiptail --title "Team" --msgbox "Simple Calculator\nBash Project ITI Ismailia Systam Administration\nOct 2023 Eng/Karim Abdelhamid\nEslam Fawzi Metwally\nAya Mohamed\nAbdallah Mohamed Ahmed Abdel Gawwad\nAhmed Ibrahim Abdelmotaleb Rashed\nAshraf AbdelSattar Soliman" 20 60
}

#--------------------------------------------------------------------------------#



#addition function
add(){
    num1=$(whiptail --title "Addition" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
    exitstatus=$?
    
    if [ $exitstatus = 0 ]; then
        if [[ !($num1 =~ ^[0-9]*(\.[0-9]+)?$) ]]
        then
            Invalid_input
            add
        else
            
            num2=$(whiptail --title "Addition" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
            exitstatus=$?
            if [ $exitstatus = 0 ]; then
                if [[ !($num2 =~ ^[0-9]*(\.[0-9]+)?$) ]]
                then
                    Invalid_input
                    add
                else
                    
                    result=$(echo $num1  $num2 | awk '{print $1+$2}')
                    whiptail --title "Addition Result" --msgbox "Result: $result" 10 50
                    #repeat
                    add
                fi
            else
                #return to prev menu
                Standard_operation
            fi
        fi
    else
        #return to prev menu
        Standard_operation
    fi
    
}

#subtraction function
Subtraction(){
    num1=$(whiptail --title "Subtraction" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
    exitstatus=$?
    
    if [ $exitstatus = 0 ]; then
        if [[ !($num1 =~ ^[0-9]*(\.[0-9]+)?$) ]]
        then
            Invalid_input
            Subtraction
        else
            
            num2=$(whiptail --title "Subtraction" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
            exitstatus=$?
            if [ $exitstatus = 0 ]; then
                if [[ !($num2 =~ ^[0-9]*(\.[0-9]+)?$) ]]
                then
                    Invalid_input
                    Subtraction
                else
                    
                    result=$(echo $num1  $num2 | awk '{print $1-$2}')
                    whiptail --title "Subtraction Result" --msgbox "Result: $result" 10 50
                    #repeat
                    Subtraction
                fi
            else
                #return to prev menu
                Standard_operation
            fi
        fi
    else
        #return to prev menu
        Standard_operation
    fi
}

#mutiplication function
Multiplication(){
    num1=$(whiptail --title "Multiplication" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
    exitstatus=$?
    
    if [ $exitstatus = 0 ]; then
        if [[ !($num1 =~ ^[0-9]*(\.[0-9]+)?$) ]]
        then
            Invalid_input
            Multiplication
        else
            
            num2=$(whiptail --title "Multiplication" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
            exitstatus=$?
            if [ $exitstatus = 0 ]; then
                if [[ !($num2 =~ ^[0-9]*(\.[0-9]+)?$) ]]
                then
                    Invalid_input
                    Multiplication
                else
                    
                    result=$(echo $num1  $num2 | awk '{print $1*$2}')
                    whiptail --title "Multiplication Result" --msgbox "Result: $result" 10 50
                    #repeat
                    Multiplication
                fi
            else
                #return to prev menu
                Standard_operation
            fi
        fi
    else
        #return to prev menu
        Standard_operation
    fi
}

#Divition function
Division(){
    num1=$(whiptail --title "Division" --inputbox "Enter the dividend:" 10 50 3>&1 1>&2 2>&3)
    exitstatus=$?
    
    if [ $exitstatus = 0 ]; then
        if [[ !($num1 =~ ^[0-9]*(\.[0-9]+)?$) ]]
        then
            Invalid_input
            Division
        else
            
            num2=$(whiptail --title "Division" --inputbox "Enter the divisor:" 10 50 3>&1 1>&2 2>&3)
            exitstatus=$?
            if [ $exitstatus = 0 ]; then
                if [[ !($num2 =~ ^[0-9]*(\.[0-9]+)?$) ]]
                then
                    Invalid_input
                    Division
                else
                    if [[ ($num2 = 0) ]];then
                        whiptail --title "Division Error" --msgbox "You cannot divide by zero!" 10 50
                        Division
                    else
                        result=$(echo $num1  $num2 | awk '{print $1/$2}')
                        whiptail --title "Division Result" --msgbox "Result: $(printf "%.2f" $result)" 10 50
                        #repeat
                        Division
                    fi
                fi
            else
                #return to prev menu
                Standard_operation
            fi
        fi
    else
        #return to prev menu
        Standard_operation
    fi
}

#standard operations menu
Standard_operation(){
    Standard_operation=$(whiptail --title "Bash Calculator" --menu "Choose an operation:" 12 50 6 \
        "1" "Addition" \
        "2" "Subtraction" \
        "3" "Multiplication" \
    "4" "Division" 3>&1 1>&2 2>&3)
    
    case $Standard_operation in
        1)
            add
        ;; #End of addition
        2)
            Subtraction
        ;; #End of subtration
        3)
            Multiplication
        ;; #End of Multiplication
        4)
            Division
        ;; #End of divition
    esac
}

#--------------------------------------------------------------------------------#


#binary to decimal function
binary_to_decimal(){
    binary_number=$(whiptail --title "Binary to Decimal" --inputbox "Enter a binary number:" 10 50 3>&1 1>&2 2>&3)
    exitstatus=$?
    if [ $exitstatus = 0 ]; then
        if [[ !($binary_number =~ ^[0-1]+$) ]]
        then
            Invalid_input
            binary_to_decimal
        else
            result=0
            position=1
            # Loop through the binary digits from right to left
            for (( i=${#binary_number}-1; i>=0; i-- )); do
                digit="${binary_number:$i:1}"
                if [ "$digit" == "1" ]; then
                    result=$(( result + position ))
                fi
                position=$(( position * 2 ))
            done
            whiptail --title "Binary to Decimal Result" --msgbox "Result: $result" 10 50
            #repeat
            binary_to_decimal
        fi
    else
        #return to prev menu
        programmer_operation
    fi
}

#decimal ot binary function
decimal_to_binary(){
    decimal_number=$(whiptail --title "Decimal to Binary" --inputbox "Enter a decimal number:" 10 50 3>&1 1>&2 2>&3)
    exitstatus=$?
    result=0
    if [ $exitstatus = 0 ]; then
        if [[ !($decimal_number =~ ^[0-9]+$) ]]
        then
            Invalid_input
            decimal_to_binary
            
        else
            if [ $decimal_number = 0 ]; then
                result=0
            else
                
                while [ $decimal_number -gt 0 ]; do
                    result=$((decimal_number % 2))$result
                    decimal_number=$((decimal_number / 2))
                done
                result=${result%?}
            fi
            
            whiptail --title "Decimal to Binary Result" --msgbox "Result: $result" 10 50
            #repeat
            decimal_to_binary
        fi
    else
        #return to prev menu
        programmer_operation
    fi
}

#hex to decimal function
hex_to_decimal(){
    result=0
    local -A hexValues=(
        [0]=0 [1]=1 [2]=2 [3]=3 [4]=4 [5]=5 [6]=6 [7]=7 [8]=8 [9]=9
        [A]=10 [B]=11 [C]=12 [D]=13 [E]=14 [F]=15
        [a]=10 [b]=11 [c]=12 [d]=13 [e]=14 [f]=15
    )
    hex_number=$(whiptail --title "Hexadecimal to Decimal" --inputbox "Enter a hexadecimal number (1-F upper cases):" 10 50 3>&1 1>&2 2>&3)
    exitstatus=$?
    if [ $exitstatus = 0 ]; then
        if [[ !($hex_number =~ ^[0-9A-F]{1,}$) ]]
        then
            Invalid_input
            hex_to_decimal
        else      
            for ((i = 0; i < ${#hex_number}; i++)); do
                local char="${hex_number:i:1}"
                if [[ ${hexValues[$char]+_} ]]; then
                    local value=${hexValues[$char]}
                    ((result = result * 16 + value))
                    
                fi
            done
            
            whiptail --title "Hexadecimal to Decimal Result" --msgbox "Result: $result" 10 50
            #repeat
            hex_to_decimal
        fi
    else
        #return to prev menu
        programmer_operation
    fi
}

#decimal to hex function
decimal_to_hex(){
    decimal_number=$(whiptail --title "Decimal to Hexadecimal" --inputbox "Enter a decimal number:" 10 50 3>&1 1>&2 2>&3)
    exitstatus=$?
    result=0
    if [ $exitstatus = 0 ]; then
        
        if [[ !($decimal_number =~ ^[0-9]+$) ]]
        then
            Invalid_input
            decimal_to_hex
        else
            if [ $decimal_number = 0 ]; then
                result=0
            else
                while [ "$decimal_number" -gt 0 ]; do
                    remainder=$((decimal_number % 16))
                    case $remainder in
                        10) result="A$result" ;;
                        11) result="B$result" ;;
                        12) result="C$result" ;;
                        13) result="D$result" ;;
                        14) result="E$result" ;;
                        15) result="F$result" ;;
                        *) result="$remainder$result" ;;
                    esac
                    decimal_number=$((decimal_number / 16))
                done
                result=${result%?}
            fi
            whiptail --title "Decimal to Hexadecimal Result" --msgbox "Result: $result" 10 50
            #return to prev menu
            decimal_to_hex
            
        fi
    else
        #return to prev menu
        programmer_operation
    fi
}

#programmer operation menu
programmer_operation(){
    programmer_operation=$(whiptail --title "Programmer Calculator" --menu "Choose an operation:" 15 50 5 \
        "1" "Binary to Decimal" \
        "2" "Decimal to Binary" \
        "3" "Hexadecimal to Decimal" \
        "4" "Decimal to Hexadecimal" \
    3>&1 1>&2 2>&3)
    
    case $programmer_operation in
        1)
            binary_to_decimal
        ;; #End of binary to decimal
        
        2)
            decimal_to_binary
        ;; #End of decimal to binary
        
        3)
            hex_to_decimal
        ;; #hex to decimal
        
        4)
            decimal_to_hex
        ;; #end of decimal to hex
        
        # *)
        #  whiptail --title "Invalid Option" --msgbox "Invalid option. Please select a valid programmer operation." 10 50
        # ;;
    esac
}



# Main Program for the calculator
while true; do
    
    #Dashboard menu call
    dashboard
    
    #cancel button exits program
    exitstatus=$?
    [[ "$exitstatus" = 1 ]] && break;
    
    case $operation in
        #Display our team names
        1)
            credits
        ;;
        
        #Standers operation menu options
        2)
            Standard_operation
        ;; #End of standed operation call
        
        #Call programmer menu
        3)
            programmer_operation
        ;; #End of programmer operation call
        
        4)
            exit 0
        ;; #Exit program
        
    esac
    
    
done
