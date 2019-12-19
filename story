< Start of file
-----< Start of the program
----------< Start of the tutorial

print Welcome to your new adventure, in my new adventure game system!
print This system is meant to be simple above all else
print This means that this isn't super-functional, but it's tiny and easy to learn
pause

print There are only a few commands to learn, so I'll teach you them real quick:
print PRINT will show the following line to the player (print hello world!)
print ADD will set a named flag which you can check for later (add sword)
print REMOVE will take away a flag which you've added (remove sword)
print IF will only run the next line if you've got the defined flag (if sword)
print NOT will only run if you don't have the defined flag (not sword)
print CHOICE will take a single character of input from the player (choice)
print OPTION will only run the next line if your input matches the option (option 1)
print GO will take you to another line of the story (go 1337)
print LINE will make a blank line (line)
print PAUSE will wait for the user to press enter (pause)
pause

print If you start a line with anything else, it'll be treated like a comment
print This series of commands is enough for a pretty intricate system
print For example, IF doesn't need to be used for a just a single line
print You can simply use NOT and then GO to skip a section if you don't have what you need
print You can also reuse OPTION until you make a new choice
print As long as you're smart about how you use them, these commands are more than enough
print They're not case-sensitive, but you will have to make sure that you spell them right
print For more information about these commands, type one of the following commands:
line

---------------< Choice redirection

:makeChoice
print Print, Add, Remove, If, Not, Choice, Option, Go, Line, Pause, Exit

choice

option print
go :print

option Add
go :add

option Remove
go :remove

option If
go :if-

option Not
go :not

option Choice
go :choice

option Option
go :option

option Go
go :go-

option Line
go :line

option Pause
go :pause

option Exit
go :exit

---------------< Invalid selection section

print If you're seeing this, you've pressed the wrong key
print Please try again
line
go :makeChoice
line

---------------< Choices

:print
print PRINT
print PRINT simply sends a message straight to the player
print Whatever comes after the word PRINT is the message
print Use one line per print statement, and don't use empty print statements
print If you want an empty line, use line instead
print Special characters are generally fine
print Example: "print PRINT simply sends a message straight to the player"
line
go :makeChoice
line

:add
print ADD
print The player has an inventory, but the items probably aren't what you'd expect
print The inventory is composed of 'flags', which are really just words
print They're case sensitive, but they don't need to be one word per item
print These items don't have mass, quantities, qualities, or any other properties
print You're just adding a word or a series of words to a collection
print Example: "add Divine Sword of Fire"
line
go :makeChoice
line

:remove
print REMOVE
print Once an item has been added to the inventory, it can also be removed
print To do this, you simply type REMOVE followed by the item in the inventory
print It's case sensitive like ADD, so make sure you're spelling this correctly!
print Example: "remove health potion"
line
go :makeChoice
line

:if-
print IF
print IF statements, in this engine at least, only check that an item is in your inventory
print If you have the item, the next line will run as usual
print If you don't, you'll skip that line instead
print You might think that one line isn't enough to work with, and you're probably right
print However, you can easily extend this by following up with a go statement
print This allows you to run a series of lines, and you can return where you left off if you like
print It may take a bit of planning, but it's not difficult
print Example: "IF FIXED SWORD"
line
go :makeChoice
line

:not
print NOT
print Sometimes you'll want to check for an item, sometimes you want to check that an item isn't present
print If you want to do something only when the player doesn't have an item, use NOT
print NOT might sound unintuitive, but it's just as easy to use as IF
print Example: "not undead"
line
go :makeChoice
line

:choice
print CHOICE
print A game wouldn't really be a game without interaction, would it?
print To make a game, you'll need to use a CHOICE
print Choice doesn't ask a question or provide responses, it just takes the player's input
print For that reason, I highly recommend that you make it clear what their input is for
print Once you've typed CHOICE, you'll have one line from the user
print The line is ended by a press of the enter key
print This is useless on its own, but when paired with an OPTION you can allow the player to make decisions
print Example: "ChoIcE"
line
go :makeChoice
line

:option
print OPTION
print To allow the player to make decisions, you'll need to use both CHOICES and OPTIONS
print CHOICE will get the player's input, then OPTION will make use of it
print Similar to IF, the next line will only run if the provided specified option matches the player's CHOICE
print That means that you need to provide a line of text for their choice to match
print OPTION isn't case sensitive, so you don't have to worry about capitalisation
print If you really want, you could just use the numbers 1-9 to make choices
print Example: "OPTION get sword"
line
go :makeChoice
line

:go-
print GO
print GO allows you to go to a specific line in the story
print Specify a word or phrase and you'll go to the first line that starts with this
print This isn't case sensitive, but any spaces will be taken into account
print Personally, I recommend using a specific symbol for this
print That way, you can start a line with :print and avoid accidentally going to the first PRINT line
print You must make sure that you're using at least 4 characters, otherwise you can type whatever you like
print Example: "go :place"
print          ":place"
line
go :makeChoice
line

:line
print LINE
print LINE is definitely the simplest command at your disposal
print What does it do? It prints a new line to the console
print This is extremely helpful for formatting and making the story look pretty
print Example: "LINE"
line
go :makeChoice
line

:pause
print PAUSE
print You may need, or at least want, to wait for the player to confirm they're ready to continue
print If you need to do this, you could use CHOICE as it would pause for the player's input
print However, if you want to preserve the input you've already got, you'll need to use PAUSE
print PAUSE waits for the player to press enter, then it continues
print Just be sure that you don't try typing something in, because it won't be used
print Example: "pause for a moment" (the program stops paying attention after 'pause')
line
go :makeChoice

:exit
print If you like, you can play a little demo which uses these different commands
print Would you like to play? (yes/no)

---------------< End of choices, prompt for game demo

choice

option exit
go >end

option yes
go >dungeon start

option no
go >I don't want to play

print Sorry, please only type yes or no.
line
go :exit

>I don't want to play
print Okay, I hope you have a good day!
go >end

----------< Start of adventure demo

>dungeon start
print Good! lets play a classic dragon-slaying story, where you play as the brave Sir Knight
print Press enter and you'll be transported to the world of Draconica
print If you see a verb or noun capitalised, you can use them in an action
print The syntax is always NOUN VERB, you'll never need to use words like 'the' or 'a'
print For example, if you see USE and BARS then you can 'USE BARS'
print ...it won't do anything useful, but it's still something you can do
print If you're given a series of choices instead, then just type one of them to pick it
pause

line
line
line
line
print You awaken in a dark, damp dungeon. You're wearing a protective chainmail but your trusty armour is nowhere to be seen
print You feel almost naked, and certainly defenseless. It's unclear how you managed to wake up in a foreign dungeon, you're not on a quest right now...
print -- press enter --
pause

---------------< Starting room
--------------------< Room description

add chainmail
add greaves
add orb
>dull dungeon
line
line
not grate lifted
print Your eyes slowly adjust to the dull interior, and there's nothing but a GRATE on the floor which is producing some pretty foul smells
if grate lifted
print Now that the grate has been removed, there's only a HOLE which you might be able to fall through
print There's no obvious light source, but you imagine that the BARS on the wall are letting some moonlight in
print You have only your CHAINMAIL, your leather GREAVES and a strange ORB in your pocket
print -- verbs available: LOOK, USE --
not grate lifted
print -- nouns available: BARS, CHAINMAIL, GRATE, GREAVES, ORB --
if grate lifted
print -- nouns available: BARS, CHAINMAIL, GREAVES, HOLE, ORB --
print -- awaiting input --

--------------------< Choice redirection

choice

option exit
go >end

option look chainmail
go >look chainmail
option look greaves
go >look greaves
option look grate
go >look grate usable?
option look hole
go >look hole usable?
option look bars
go >look bars
option look orb
go >look orb

option use chainmail
go >use chainmail
option use greaves
go >use greaves
option use grate
go >use grate usable?
option use hole
go >use hole usable?
option use bars
go >use bars
option use orb
go >use orb

--------------------< Invalid selection section

>dull dungeon misunderstanding
line
line
print Sorry, I didn't understand. Please try again
go >dull dungeon

--------------------< Extended choice redirection

>look grate usable?
if grate lifted
go >dull dungeon misunderstanding
go >look grate

>look hole usable?
if grate lifted
go >look hole
go >dull dungeon misunderstanding

>use grate usable?
if grate lifted
go >dull dungeon misunderstanding
go >use grate

>use hole usable?
if grate lifted
go >use hole
go >dull dungeon misunderstanding

>use orb
if grate lifted
go >orb used
go >orb first use

--------------------< Choices

/look actions - dull dungeon
>look chainmail
line
line
print You LOOK at your CHAINMAIL
print This chainmail will shrug off swords, daggers and spears but it's useless against a dragon
go >dull dungeon

>look greaves
line
line
print You LOOK at your leather GREAVES
print Your leather greaves are unremarkable and ineffective, you'd much rather be wearing some iron greaves
go >dull dungeon

>look grate
line
line
print You LOOK at the GRATE
print The grate looks immovable, and you're not sure you want to go down there anyway, but it might be your only escape
go >dull dungeon

>look hole
line
line
print You LOOK where the GRATE once was
print How... how‽ The grate is nowhere to be seen, there's just a hole big enough to fall through
go >dull dungeon

>look orb
line
line
print You LOOK at the mysterious ORB
print It's strange... you feel almost powerful holding this. It might be a wizard's focus, or a magical artifact
go >dull dungeon

>look bars
line
line
print You LOOK at the BARS
print The BARS are definitely too close together and well-built to be a way to escape
go >dull dungeon

/use actions - dull dungeon
>use chainmail
line
line
print You try to USE your CHAINMAIL
print You're already using your chainmail armour it the way it's intended to be used
go >dull dungeon

>use greaves
line
line
print You try to USE your leather GREAVES
print You're already using your leather greaves it the way they're intended to be used
go >dull dungeon

>use grate
line
line
print You try to USE the GRATE
print there's no point in trying to lift the grate; it's fused in place
go >dull dungeon

>use hole
go >down the hole

>orb first use
line
line
print You USE the mysterious ORB
print You hold the orb in the palm of your hand and listen to the piercing silence it produces
print There's a paradoxical sensation which surrounds you, like being at an active volcano in a silent snowstorm
print You blank out for a second, and when you come to the grate has been lifted somehow
add grate lifted
go >dull dungeon

>orb used
line
line
print You try to USE the mysterious ORB
print You've already removed the grate, you would accomplish nothing by tossing it around
go >dull dungeon

>use bars
line
line
print You try to USE the BARS
print Maybe at some point in the future there'll be technology to break these BARS, but not today
go >dull dungeon

--------------------< End of choices

>down the hole
line
line
print You USE the HOLE
line
line
print Now that you have somehow removed the grate, you're free to drop down the opening
print The drop doesn't look too far, but you're not exactly known for your judging of heights
print You don't have another way down, so even if this drop is too far you'll have to drop anyway
print -- press enter --
pause

line
print You fall down the grate for what feels like a minute, but since you're uninjured it must have been under a second
print After dusting yourself off, you give a short sigh - accompanied by the most effeminate scream you've ever made
print Before you is the dragon, larger than you could have imagined despite being only young
print -- press enter --
pause

---------------< Dragon room
--------------------< Room description

>dragon encounter
line
print You wince, expecting the worst, but after a few seconds you find that you've still not been scorched to death
print Upon opening your eyes, you find that the dragon is scared, terrified even, and is cowering away from you
print Its eyes are piercing the orb you've found yourself wielding, not daring to break contact
print If you had to guess, this orb must have some fearsome power. You could probably USE the ORB and defeat the dragon
print As foolish as it might be, you could also just DROP the ORB instead
print -- choices available: USE ORB, DROP ORB --
print -- awaiting input --

choice

--------------------< Choice redirection

option exit
go >end

option use orb
go >use orb on dragon

option drop orb
go >drop the orb

print Sorry, you've only got two options here and that wasn't one of them
go >dragon encounter

--------------------< Choices

>use orb on dragon
line
line
print The dragon's eyes go wide, and then it closes them and looks away from you with a defeated and resigned expression
print The orb feels heavy and hot in your hand, while the hairs on the back of your neck stand up all at once
print You feel a violent surge from your head to your toes, and at the instant it stops you no longer feel the orb in your hand
print The orb is nowhere to be seen, until you see the what little remains of the dragon
print The orb is embedded in what used to be the dragon's skull
print The world feels darker
print -- press enter --
pause

line
print You look at your hand
print The now red orb feels light again
print You feel powerful
print Everything feels... right.
print -- dark end --
pause
go >end

>drop the orb
line
print The dragon is obviously in surprise, and whilst they're still timid and afraid of the orb you can tell that they're relieved
print As seconds pass, the dragon fades into a gentle smile. "Thank you, Sir. I've been hunted these past years more times than I can count"
print The dragon with newfound composure: "Not once have I harmed a human in any way, but I can't catch a moment's reprieve from wizards or knights"
print It pauses, with a trace of worry reappearing. "...the orb. Please, take it with you when you leave. I'll do anything to be rid of its dark magics"
print -- press enter --
pause

>the dragon's choices
line
print "I'm in no position to barter, I'll do whatever it is you wish of me if only you promise not to unleash that power"
print The dragon seems willing to be your SLAVE, which could be a difficult proposition to dismiss
print However, you might sleep better at night with a more compassionate response
print You could simply LEAVE the dragon or you could BEFRIEND them
print -- choices available: SLAVE, LEAVE, BEFRIEND --
print -- awaiting input --

choice

option slave
go >slave dragon

option leave
go >leave

option befriend
go >befriend

print Sorry, you're going to have to make a CHOICE here
go >the dragon's choices

>slave dragon
line
line
print The dragon doesn't seem keen on the idea, but can't refuse as it's fearful that you'd use the orb against it
print Occasionally you'd feel bad about being a slave owner, but they're definitely a hard worker and it's probably worth the moral debate
print Besides, if anyone argues with you then you've got a badass dragon that can light them on fire
print After a few years, you decide to free the dragon. If you hadn't, you get the sense that you might mysteriously disappear someday
print -- dragon lord ending --
go >end

>leave
print The dragon sighs in relief and thanks you with a smile. You get to keep the mysterious orb which could probably sell for a good bit of gold
print Of course, there's always the possibility that some wizard buys it and tries to rule the world with it
print ...or that someone kills you for it before you get the chance to sell it
print But still, you could be rich! Rich and famous!
print -- press enter --
pause

line
print You sell the orb to a magician for a rather sizable sum of gold, but when you get home the 'gold' turns to stone
print When you politely ask why your gold is now a bunch of rocks you start a mild kerfuffle
print By which I mean you start a fight with a wizard now armed with an incredible weapon
print Obviously, you're obliterated in the blink of an eye
print -- dumb end --
go >end

>befriend
line
line
print As a gesture, you smash the orb with your foot. Thankfully, it doesn't explode or kill you, it just smashes like glass
print The dragon is shocked, stunned, then amazed. "You can just do that‽ All this time, you can just smash it‽"
print The dragon smiles, almost laughing, and makes you a sincere offer. "Should you ever want anything from me, just ask"
print The only response is that you'd appreciate having a dragon friend, something that the dragon is keen to accept
print You both become fast friends, defending one another from whomever dares try to slay either of you
print Together, you become a symbol for the unity of dragons and humans
print This enrages some people, naturally, but the world is a much better place now that the two races are joined in friendship
print -- friendship ending --
line

>end

---------------< End of room
----------< End of demo
-----< End of program
< End of file