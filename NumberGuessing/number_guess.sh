#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Enter your username:
read USER_NAME_INPUT
ID=$($PSQL "SELECT id FROM games WHERE username='$USER_NAME_INPUT';")
if [[ -z $ID ]]
then
  echo "Welcome, $USER_NAME_INPUT! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE username='$USER_NAME_INPUT';")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE username='$USER_NAME_INPUT';")
  echo Welcome back, $USER_NAME_INPUT! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

GUESS=-1
RANDOM_NUMBER=$(($RANDOM%(1000)+1))
COUNT=1

echo "Guess the secret number between 1 and 1000:"
while [ $GUESS != $RANDOM_NUMBER ]
do
  read GUESS
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS -gt $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    elif [[ $GUESS -lt $RANDOM_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
      INSERT_RESULT=$($PSQL "INSERT INTO games(username, guesses) VALUES('$USER_NAME_INPUT', $COUNT);")
      echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
    fi
  else
    echo "That is not an integer, guess again:"
  fi
  COUNT=$(( COUNT+1 ))
done
