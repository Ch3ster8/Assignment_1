Stanley Parable: Ultra Deluxe and Firewatch are two notable indie games that have received significant attention for their unique approaches to storytelling and gameplay.
While they share some similarities in their narrative-driven structures they diverve in their specific implementations, offering distinct experiences for players.

1. Stanley Parable: Ultra Deluxe:
    * Self-aware narrator: The narrator in Stanley Parable: Ultra Deluxe is a pivotal component, serving as a constant commentary on the player's actions and the game's narrative. This self-awareness blurs the lines between the game world and the real world, inviting players to question the nature of their experience. The narrator's manipulation of the game's progression challenges the player's sense of agency, suggesting that their choices may be predetermined or irrelevant.
    * Multiple endings: The game's multiple endings are a direct consequence of the player's choices throughout the narrative. This feature reinforces the illusion of player agency while also highlighting the limitations of choice within a predetermined framework. The endings can vary wildly, from humorous to tragic, demonstrating the narrator's ability to shape the player's experience.
    * Timelines and alternate realities: The introduction of timelines and alternate realities adds a layer of complexity to the game's narrative. These elements challenge the player's understanding of causality and the nature of reality. By exporting different possibilities, the game invites players to consider the implications of their choices and the potential consequences of their actions.
    * Meta-narrative structure: The game's meta-narrative structure, constantly reflecting on its own existence as a game, is a defining feature. This self-awareness forces players to question the nature of storytelling and the role of the player in shaping the narrative. By breaking the fourth wall, the game invites players to become more conscious of their own participation in the experience.
    * Limited gameplay mechanics: While Stanley Parable: Ultra Deluxe offers limited gameplay mechanics, its focus of narrative and player choice is intentional. The game's simplicity allows the narrative to take centre stage, preventing distractions and ensuring that the player's attention is fully engaged. This minimalist approach also highlights the importance of storytelling in video games, demonstrating that a compelling narrative can be more engaging than complex gameplay mechanics.
2. Firewatch:
   * Open-world environment: The vast explorable wilderness of Firewartch provides players with a sense of freedom and isolation. The game's open-world design encourages exploration and discovery, allowing players to uncover hidden secrets and piece together the story's mysteries at their own pace. The environment also serves as a metaphor for the protagonist's internal struggles, reflecting his feeling of loneliness and isolation.
   * Character interactions: The interactions between Henry and other characters in Firewatch add depth and complexity to the narrative. These interactions provide valuable insights into the characters' lives and motivations, helping players to connect with them on a personal level. The relationships that Henry forms also contribute to the game's themes of friendship, trust and misdirection.
   * Environmental storytelling: Firewatch's use of environmental storytelling is a key component of its narrative. The game's visual cues, audio and environmental details provide clues and information about the story's events and characters. By carefully observing the world around them, Ppalyers can piece together the puzzle and uncover the truth behind the mysterious occurrences in the park.
   * Puzzle-solving elements: While not the primary focus of Firewatch, the puzzle-solving elements add a layer of challenge and engagement. These puzzles often require players to use their observation and problem-solving skills to overcome obstacles and progress through the story. The puzzles are designed to be integrated into the narrative, providing opportunities for players to learn more bout the game's world and characters.
   * Survival mechanics: The survival mechanics in Firewatch add a sense of realism and danger to the game's setting. Players must manage their resources, stay hydrated, and avoid getting lost in the wilderness. These mechanics create a sense of urgency and tension, forcing players to be mindful of their surroundings and make careful decisions.

3. A critical analysis based on design principles:
    1. Narrative design:
        * Stanley Parable: Ultra Deluxe excels in its use of meta-narrative, challenging the player's expectations and forcing them to question the nature of their experience. The game's narrator serves as a constant reminder of the artificiality of the game world, inviting players to reflect on the limitations of linear storytelling.
        * Firewatch prioritises environmental storytelling, using the game's settings to convey its themes of isolation and loneliness. The vast wilderness serves as an encounter to reflect his search for meaning in life
    2. Gameplay Design
        * Stanley Parable: Ultra Deluxe primarily relies on player choice and exploration. While the game offers limited gameplay mechanics, its focus on narrative and player agency makes it a compelling experience
        * Firewatch offers a more traditional gameplay experience, combining exploration, puzzle solving and character interactions. The game's open-world environment encourages exploration and discovery, while the character interactions provide a sense of connection and human intimacy.
    3. Player agency
        * Stanley Parable: Ultra Deluxe offers players a high degree of agency, allowing them to shape the narrative through their choices. However, the game's self-aware narrator constantly reminds players of the limitations of their agency, suggesting that their choices are ultimately predetermined
        * Firewatch provides players with a sense of agency through exploration and decision-making. While the game's narrative is largely linear, players can choose how they approach the story and interact with the environment.
      
4. Conclusion:
    * Both Stanley Parable: Ultra Deluxe and Firewatch are exceptional examples of narrative driven games that offer unique and engaging experiences. While they share similarities in their focus on storytelling, their approaches to narrative, gameplay, and player agency differ significantly. Stanley Parable: Ultra Deluxe excels in its meta-narrative and exploration of player agency, while Firewatch offers a more grounded and immersive experience through its environmental storytelling and character interactions. Ultimately, the choice between these two games depends on the player's preferences for narrative style and gameplay mechanics.
	

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
	
	
Optional Tutorial (Not included in word count. Opening the raw file is required for indentation purposes):
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
