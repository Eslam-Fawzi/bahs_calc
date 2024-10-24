# Bash TUI Calculator

This is a simple text-based user interface (TUI) calculator written in Bash, simulating the standard and programmer modes of a PC calculator. The project was developed as part of an ITI Bash Scripting course.

## Features
- **Standard Calculator**: Perform basic arithmetic operations like addition, subtraction, multiplication, and division.
- **Programmer Calculator**: Convert between different number systems, including binary, decimal, and hexadecimal.
- **Interactive UI**: Uses `whiptail` to create a simple, interactive text-based interface.
- **Team Credits**: Display the credits of the development team through the dashboard.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Calculator Modes](#calculator-modes)
  - [Standard Operations](#standard-operations)
  - [Programmer Operations](#programmer-operations)
- [Team](#team)
- [License](#license)

## Installation
To run the calculator, you need to have Bash and `whiptail` installed on your Linux system.

1. Clone this repository:
   ```bash
   git clone https://github.com/Eslam-Fawzi/bahs_calc/tree/main
2. Make the script executable:
   ```bash
   chmod +x calculator.sh
3. Run the calculator:
   ```bash
   ./calculator.sh
   
## Usage
After running the script, you'll see a simple **dashboard** with the following options:
1. **Our Team Credits**: Displays the team members who developed this project.
2. **Standard Operations**: Opens the menu for basic arithmetic operations.
3. **Programmer Calculator**: Opens the menu for number system conversions (binary, decimal, hexadecimal).
4. **Exit**: Quits the program.

### How to Navigate:
- Use the arrow keys to move between options in the menu.
- Press `Enter` to select an option.

### Calculator Modes

#### Standard Operations
In this mode, you can perform the following arithmetic functions:
- **Addition**: Add two numbers together.
- **Subtraction**: Subtract the second number from the first.
- **Multiplication**: Multiply two numbers.
- **Division**: Divide the first number by the second (division by zero is handled).

#### Programmer Operations
This mode provides tools for converting between different number systems:
- **Binary to Decimal**: Convert a binary number to its decimal equivalent.
- **Decimal to Binary**: Convert a decimal number to its binary equivalent.
- **Hexadecimal to Decimal**: Convert a hexadecimal number to its decimal equivalent.
- **Decimal to Hexadecimal**: Convert a decimal number to its hexadecimal equivalent.

### Team
This project was developed by:
- **Eslam Fawzi Metwally**
- **Ashraf AbdelSattar Soliman**
- **Aya Mohamed**
- **Abdallah Mohamed Ahmed Abdel Gawwad**
- **Ahmed Ibrahim Abdelmotaleb Rashed**


Supervised by **Eng. Karim Abdelhamid** as part of the ITI System Administration course in October 2023.
