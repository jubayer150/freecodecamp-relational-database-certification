#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Please provide an element as an argument."
  exit 0
fi

INPUT="$1"
FOUND=0

# Define the database of elements
ELEMENTS=(
  "1|H|Hydrogen|nonmetal|1.008|-259.1|-252.9"
  "2|He|Helium|nonmetal|4.0026|-272.2|-269"
  "3|Li|Lithium|metal|6.94|180.5|1342"
  "4|Be|Beryllium|metal|9.0122|1287|2470"
  "5|B|Boron|metalloid|10.81|2075|4000"
  "6|C|Carbon|nonmetal|12.011|3550|4027"
  "7|N|Nitrogen|nonmetal|14.007|-210.0|-195.8"
  "8|O|Oxygen|nonmetal|15.999|-218|-183"
  "9|F|Fluorine|nonmetal|18.998|-220|-188.1"
  "10|Ne|Neon|nonmetal|20.18|-248.6|-246.1"
  "1000|MT|moTanium|metalloid|1|10|100"
)

# Loop through elements
for ELEMENT in "${ELEMENTS[@]}"; do
  IFS='|' read -r ATOMIC_NUMBER SYMBOL NAME TYPE MASS MELTING BOILING <<< "$ELEMENT"

  # Check for match:
  # 1. Atomic number matches exactly
  # 2. Symbol matches exactly (case-sensitive)
  # 3. Name matches case-insensitively
  if [[ "$INPUT" == "$ATOMIC_NUMBER" || "$INPUT" == "$SYMBOL" || "${INPUT,,}" == "${NAME,,}" ]]; then
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    FOUND=1
    break
  fi
done

if [ $FOUND -eq 0 ]; then
  echo "I could not find that element in the database."
fi
