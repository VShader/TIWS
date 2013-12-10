#include <iostream>
#include <string>
using namespace std;

bool checkAlphabet(char character);
void checkWord(char word[]);

int main(int argc, char *argv[])
{
	for(unsigned int i=1; i<argc; ++i)
	{
		checkWord(argv[i]);
	}
	return 0;
}


bool checkAlphabet(char character)
{
	char alphabet[] = {'a','b'};
	bool isInAlphabet = false;
	
	for(unsigned int i=0; i<2; ++i)
	{
		isInAlphabet = (character == alphabet[i]) ? true : false;
		if(isInAlphabet) return true;
	}
	return false;
}


void checkWord(char word[])
{
	unsigned int state = 0;
	
	for(unsigned int i=0; word[i]!='\0'; ++i)
	{
		if(!checkAlphabet(word[i]))
		{
			std::cout << word[i] << " in " << word << " is not a valid character in Alphabet ab" << std::endl; 
			return;
		}
		
		switch(state)	{
		
		// startstate 0
		case 0:
		if(word[i]=='a') state = 1;
		break;
		
		// state 1: a was read expect b.
		case 1:
		if(word[i]=='b') state = 2;
		break;
		
		// state 2: ab was read expect b.
		case 2:
		if(word[i]=='b') state = 3;
		break;
		
		// state 3: ab b was read expect a.
		case 3:
		if(word[i]=='a') state = 4;
		break;
		
		// state 4: ab ba was read expect b.
		case 4:
		if(word[i]=='b') state = 5;
		break;
		
		// state 5: ab ba b was read expect b.
		case 5:
		if(word[i]=='b') state = 6;
		else state = 4;
		break;
		
		// endstate 6: word has (a|b)*+ab+(a|b)*+ba+(a|b)*+bb+(a|b)*
		case 6:
		break;
		
		default:
		std::cerr << "ERROR: Wrong State:\n" << state << " is not a valid state!!!" << std::endl;
		}
	}
	if(state == 6) std::cout << word << std::endl;
	else std::cout << word << " is not a vaild word, max state is: " << state << std::endl;
}

