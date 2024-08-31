WARNING, PLEASE OPEN THIS FILE IN THE GITHUB EDITOR OR ANOTHER RESPECTIVE IDE TO SHOW INDENTATION


Stanley Parable: Ultra Deluxe: Component feature: Narator:
    * The first choice that the player has to make is to go through either the left or right door, 
    * the narrator also tells the player to go through the left door, this encourages the player
    * to make a choice of whether their going to follow the narator or make their own coices.
	
Firewatch: Component feature: Tough choices
	
Stanley Parable: Ultra Deluxe vs Firewatch
	

Branching choices:
	FLOWCHART LINK HERE
Level design:
	My level designs all have one thing in common, I want the player to feel like they know exactly
	what to do, one of my biggest gripes of games is getting lost and not knowing where to go so
	I never want to make a game where the player feels lost, to do this I added a key component
	called a sign, it allows me to simply tell the player information I want them to know. These
	signs can also be used like a narator allowing me to take inspiration from the stanley parable
	and implement my own decisions into the game.

Dialogue choices:
	
Testing/Evaluation:
	
	
Optional Tutorial (Not included in word count):
How to:
  Dialogue System:
	The Dialogue system can be used with the understanding of a few keys.
	To make a character say something, put a "-" before the character name then 
	indent everything you want the character to say like this:
	  -Cameron
	  	I am Cameron
	  	I like to eat
	To make a character ask a question you need to put a "?" at the end of the line that will ask the question,
	then indent all the options you want the player to have access to like this:
	-Cameron
	  	What would you like to eat?
		 Soup
		 Pasta
		 Pizza
	You can also expand on this by adding new paths indented after a selected option like this:
	-Cameron
	  	What would you like to eat?
		 Soup
		   -Friend
			 Yeah that sounds good
		 Pasta
		   -Friend
			 Hm I don't really like pasta
		 Pizza
		   -Friend
			 No comment
