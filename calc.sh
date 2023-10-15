#!/bin/bash


####################################################################################################
##############            Simple Calculator                            #############################
##############              Eslam Fawzi Metwally                       #############################
##############              Aya Mohamed                                #############################
##############              Abdallah Mohamed Ahmed Abdel Gawwad        #############################
##############              Ahmed Ibrahim Abdelmotaleb Rashed          #############################
##############              Ashraf AbdelSattar Soliman                 #############################
##############              version 1.0                                #############################
##############               14/10/2023                                #############################
####################################################################################################
#--------------------------------------------------------------------------------------------------#

#This program simulates two modes of Pc's calculator (Standard & Programmer) as a Project in ITI Bash script course  



# Function to perform programmer calculations
programmer_calculation() {
  result=$(echo "$1" | bc -l)
  echo "ibase=16; obase=10; $result" | bc
}

dashboard(){
operation=$(whiptail --title "Bash Calculator" --menu "Choose an operation:" 12 50 6 \
    "1" "Our Team credits" \
    "2" "Standard Operations" \
    "3" "Programmer Calculator" \
    "4" "Exit" 3>&1 1>&2 2>&3)


}

# Main Program for the calculator
while true; do
  #Dashboard menu call
  operation=$(whiptail --title "Bash Calculator" --menu "Choose an operation:" 12 50 6 \
    "1" "Our Team credits" \
    "2" "Standard Operations" \
    "3" "Programmer Calculator" \
    "4" "Exit" 3>&1 1>&2 2>&3)
    #cancel button exits program
    exitstatus=$?
    [[ "$exitstatus" = 1 ]] && break;
  
  case $operation in
    #Display our team names
    1)
       whiptail --title "Team" --msgbox "Eslam Fawzi\nAya Mohamed\nAbdallah Mohamed Ahmed Abdel Gawwad\nAhmed Ibrahim Abdelmotaleb Rashed\nAshraf AbdelSattar Soliman" 13 60
       ;;
    #Standers operation menu options
    2)
      Standard_operation=$(whiptail --title "Bash Calculator" --menu "Choose an operation:" 12 50 6 \
       "1" "Addition" \
       "2" "Subtraction" \
       "3" "Multiplication" \
       "4" "Division" 3>&1 1>&2 2>&3)

      case $Standard_operation in
         1)
   	   num1=$(whiptail --title "Addition" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
       
      
	   until [[ (exitstatus=$?) ]];
           do
      if [[ "$exitstatus" = 1 ]]
        then
        dashboard

        else
    until [[ ($num1 =~ ^[0-9]+$) ]];
           do
		   whiptail --title "Invalid Input" --msgbox "Please enter valid integer" 10 50
		   num1=$(whiptail --title "Addition" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
           done
   	   num2=$(whiptail --title "Addition" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
	     until [[ $num2 =~ ^[0-9]+$ ]];
           do
		   whiptail --title "Invalid Input" --msgbox "Please enter valid integer" 10 50
		   num2=$(whiptail --title "Addition" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
           done
	     result=$(($num1+$num2))
      	   whiptail --title "Addition Result" --msgbox "Result: $result" 10 50
      fi
      done
      ;;
#End of addition

         2)
           num1=$(whiptail --title "Subtraction" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
	   until [[ $num1 =~ ^[0-9]+$ ]];
           do
                   whiptail --title "Invalid Input" --msgbox "Please enter valid integer" 10 50
                   num1=$(whiptail --title "Subtraction" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
           done
           num2=$(whiptail --title "Subtraction" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
	   until [[ $num2 =~ ^[0-9]+$ ]];
           do
                   whiptail --title "Invalid Input" --msgbox "Please enter valid integer" 10 50
                   num2=$(whiptail --title "Subtraction" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
           done
           #result=$(arithmetic_calculation "$num1 - $num2")
	   result=$(($num1-$num2))
     	   whiptail --title "Subtraction Result" --msgbox "Result: $result" 10 50
           ;;
         3)
           num1=$(whiptail --title "Multiplication" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
	   until [[ $num1 =~ ^[0-9]+$ ]];
           do
                   whiptail --title "Invalid Input" --msgbox "Please enter valid integer" 10 50
                   num1=$(whiptail --title "Multiplication" --inputbox "Enter the first number:" 10 50 3>&1 1>&2 2>&3)
           done
           num2=$(whiptail --title "Multiplication" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
	   until [[ $num2 =~ ^[0-9]+$ ]];
           do
                   whiptail --title "Invalid Input" --msgbox "Please enter valid integer" 10 50
                   num2=$(whiptail --title "Multiplication" --inputbox "Enter the second number:" 10 50 3>&1 1>&2 2>&3)
           done
           #result=$(arithmetic_calculation "$num1 * $num2")
	   result=$(($num1*$num2))
           whiptail --title "Multiplication Result" --msgbox "Result: $result" 10 50
           ;;
         4)
           num1=$(whiptail --title "Division" --inputbox "Enter the dividend:" 10 50 3>&1 1>&2 2>&3)
	   until [[ $num1 =~ ^[0-9]+$ ]];
           do
                   whiptail --title "Invalid Input" --msgbox "Please enter valid integer" 10 50
                   num1=$(whiptail --title "Division" --inputbox "Enter the dividend:" 10 50 3>&1 1>&2 2>&3)
           done
           num2=$(whiptail --title "Division" --inputbox "Enter the divisor:" 10 50 3>&1 1>&2 2>&3)
	   until [[ $num2 =~ ^[0-9]+$ ]];
           do
                   whiptail --title "Invalid Input" --msgbox "Please enter valid integer" 10 50
                   num2=$(whiptail --title "Division" --inputbox "Enter the divisor:" 10 50 3>&1 1>&2 2>&3)
           done
           if (( $(echo "$num2 == 0" | bc -l) )); then
             whiptail --title "Division Error" --msgbox "You cannot divide by zero!" 10 50
           else
             #result=$(arithmetic_calculation "$num1 / $num2")
	     result=$(($num1/$num2))
             whiptail --title "Division Result" --msgbox "Result: $(printf "%.2f" $result)" 10 50
           fi
           ;;
      esac
      ;;
    3)
      programmer_operation=$(whiptail --title "Programmer Calculator" --menu "Choose an operation:" 15 50 5 \
        "1" "Binary to Decimal" \
        "2" "Decimal to Binary" \
        "3" "Hexadecimal to Decimal" \
        "4" "Decimal to Hexadecimal" \
        "5" "Back" 3>&1 1>&2 2>&3)

      case $programmer_operation in
        1)
          binary_number=$(whiptail --title "Binary to Decimal" --inputbox "Enter a binary number:" 10 50 3>&1 1>&2 2>&3)
	  until [[ $binary_number =~ ^[0-1]+$ ]];
           do
                   whiptail --title "Invalid Input" --msgbox "Please enter valid binary number." 10 50
		   binary_number=$(whiptail --title "Binary to Decimal" --inputbox "Enter a binary number:" 10 50 3>&1 1>&2 2>&3)
           done
          result=$(programmer_calculation "ibase=2; $binary_number")
          whiptail --title "Binary to Decimal Result" --msgbox "Result: $result" 10 50
          ;;
        2)
          decimal_number=$(whiptail --title "Decimal to Binary" --inputbox "Enter a decimal number:" 10 50 3>&1 1>&2 2>&3)
	   until [[ $decimal_number =~ ^[0-9]*$ ]];
           do
                   whiptail --title "Invalid Input" --msgbox "Please enter valid decimal number." 10 50
		   decimal_number=$(whiptail --title "Decimal to Binary" --inputbox "Enter a decimal number:" 10 50 3>&1 1>&2 2>&3)
           done
          result=$(programmer_calculation "obase=2; $decimal_number")
          whiptail --title "Decimal to Binary Result" --msgbox "Result: $result" 10 50
          ;;
        3)
          hex_number=$(whiptail --title "Hexadecimal to Decimal" --inputbox "Enter a hexadecimal number:" 10 50 3>&1 1>&2 2>&3)
	  #until [[ $hex_number =~ ^[0-9a-zA-Z_]*$ ]];
          #do
          #         whiptail --title "Invalid Input" --msgbox "Please enter valid hexadwcimal number." 10 50
	  #         hex_number=$(whiptail --title "Hexadecimal to Decimal" --inputbox "Enter a hexadecimal number:" 10 50 3>&1 1>&2 2>&3)
          # done
          result=$(programmer_calculation "ibase=16; $hex_number")
          whiptail --title "Hexadecimal to Decimal Result" --msgbox "Result: $result" 10 50
          ;;
        4)
          decimal_number=$(whiptail --title "Decimal to Hexadecimal" --inputbox "Enter a decimal number:" 10 50 3>&1 1>&2 2>&3)
          result=$(programmer_calculation "obase=16; $decimal_number")
          whiptail --title "Decimal to Hexadecimal Result" --msgbox "Result: $result" 10 50
          ;;
        5)
          continue
          ;;
        *)
          whiptail --title "Invalid Option" --msgbox "Invalid option. Please select a valid programmer operation." 10 50
          ;;
      esac
      ;;
    4)
      exit 0
      ;;
    *)
      whiptail --title "Invalid Option" --msgbox "Invalid option. Please select a valid operation." 10 50
      ;;
  esac
done
