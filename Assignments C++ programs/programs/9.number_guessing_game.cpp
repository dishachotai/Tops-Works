//Number Guessing Game
//Write a C++ program that asks the user to guess a number between 1 and 100. The
//program should provide hints if the guess is too high or too low. Use loops to allow
//the user multiple attempts.
#include<iostream>
using namespace std;
int main()
{
    int guess;
    int number=27;   // fixed number (1 to 100)
    cout<<"Guess a number between 1 and 100\n";
    while(true)
    {
        cout<<"Enter your guess: ";
        cin>>guess;
        if(guess<1||guess >100)
        {
            cout<<"Please enter a number between 1 and 100.\n";
        }
        else if(guess>number)
         {
            cout<<"Too high Try again.\n";
        }
        else if(guess<number)
        {
            cout<<"Too low. Try again.\n";
        }
        else
        {
            cout<<"You guessed the number.\n";
            break;// exit loop
        }
    }
}

