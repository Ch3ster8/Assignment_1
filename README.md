WARNING, PLEASE OPEN THIS FILE IN THE GITHUB EDITOR OR ANOTHER RESPECTIVE IDE TO SHOW INDENTATION

Stanley Parable: Ultra Deluxe and Firewatch are two notable indie games that have received significant attention for their unique approaches to storytelling and gameplay.
While they share some similarities in their narrative-driven structures they diverve in their specific implementations, offering distinct experiences for players.

1. Stanley Parable: Ultra Deluxe:
    * Self-aware narrator: The narrator in Stanley Parable: Ultra Deluxe is a pivotal component, serving as a constant commentary on the player's actions and the game's narrative. This self-awareness blurs the lines between the game world and the real world, inviting players to question the nature of their experience. The narrator's manipulation of the game's progression challenges the player's sense of agency, suggesting that their choices may be predetermined or irrelevant.
    * Multiple endings: The game's multiple endings are a direct consequence of the player's choices throughout the narrative. This feature reinforces the illusion of player agency while also highlighting the limitations of choice within a predetermined framework. The endings can vary wildly, from humorous to tragic, demonstrating the narrator's ability to shape the player's experience.
    * Timelines and alternate realities: The introduction of timelines and alternate realities adds a layer of complexity to the game's narrative. These elements challenge the player's understanding of causality and the nature of reality. By exporting different possibilities, the game invites players to consider the implications of their choices and the potential consequences of their actions.
	
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
