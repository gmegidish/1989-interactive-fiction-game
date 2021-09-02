1 LET SLEEP = 0 : LET HASKEY = 0 : LET FOUNDKEY = 0 : LET TRAYOPEN = 0

10 HOME : PR#3
20 FOR I=1 TO 24 : PRINT "" : NEXT I : PRINT "AN AFTERNOON IN 1989" : PRINT "Release 20210901 / Serial Num 19d6689c" : PRINT "An adventure game by Gil Megidish" : PRINT ""
30 S$ = "LOOK" : GOTO 1006

1000 VTAB 3: INVERSE : PRINT "MY ROOM                                                                         "; : NORMAL : VTAB 23
1001 PRINT "" : PRINT "" : PRINT "What should I do now?" : INPUT "> ";S$
1005 IF S$ = "" THEN GOTO 1000
1006 IF MID$(S$, 1, 8) = "LOOK AT " THEN S$ = "LOOK " + MID$(S$, 9)
1007 IF MID$(S$, 1, 2) = "X " THEN S$ = "LOOK " + MID$(S$, 3)
1008 IF MID$(S$, 1, 7) = "UNLOCK " THEN S$ = "OPEN " + MID$(S$, 8)
1009 IF MID$(S$, 1, 4) = "GET " THEN S$ = "TAKE " + MID$(S$, 5)
1010 IF S$ = "LOOK" OR S$ = "LOOK ROOM" OR S$ = "LOOK AROUND" THEN PRINT "This is my bedroom. It has everything a kid like me needs -- I have my bed," : PRINT "my zines, my music, and of course, my Apple computer with a whopping 48KB RAM."
1011 IF S$ = "LOOK" OR S$ = "LOOK ROOM" OR S$ = "LOOK AROUND" THEN PRINT "The bedroom door is shut, but I can tell mom's cooking downstairs. This means I" : PRINT "have a couple of hours for playing games before she calls me for dinner." : GOTO 1000
1020 IF S$ = "N" OR S$ = "S" OR S$ = "E" OR S$ = "W" THEN PRINT "I can't go that way" : GOTO 1000
1030 IF (S$ = "I" OR S$ = "INVENTORY") AND HASKEY = 0 THEN PRINT "I carry:" : PRINT "    Nothing" : GOTO 1000
1035 IF (S$ = "I" OR S$ = "INVENTORY") AND HASKEY = 1 THEN PRINT "I carry:" : PRINT "    Key" : GOTO 1000
1040 IF S$ = "LOOK PAULA" OR S$ = "LOOK PAULA ABDUL" OR S$ = "LOOK JANET" OR S$ = "LOOK JANET JACKSON" THEN PRINT "Geez, she's great!!" : GOTO 1000
1050 IF (S$ = "LOOK KEY" OR S$ = "TAKE KEY") AND FOUNDKEY = 0 THEN PRINT "I don't know where the key is." : GOTO 1000
1060 IF S$ = "LOOK KEY" AND FOUNDKEY = 1 THEN PRINT "It looks so fragile and weak, but it keeps my games safe from my older brother." : GOTO 1000
1070 IF S$ = "TAKE KEY" AND FOUNDKEY = 1 AND HASKEY = 0 THEN PRINT "I take the small key and put it in my left pocket." : LET HASKEY = 1 : GOTO 1000
1080 IF S$ = "TAKE KEY" AND FOUNDKEY = 1 AND HASKEY = 1 THEN PRINT "I already took the key, it's in my left pocket." : GOTO 1000
1090 IF S$ = "LOOK PILLOW" THEN PRINT "It's fluffy." : GOTO 1000
1100 IF (S$ = "LOOK UNDER PILLOW" OR S$ = "REMOVE PILLOW") AND HASKEY = 0 THEN PRINT "There's a small brass key here." : LET FOUNDKEY = 1: GOTO 1000
1105 IF (S$ = "LOOK UNDER PILLOW" OR S$ = "REMOVE PILLOW") AND HASKEY = 1 THEN PRINT "There's nothing here." : GOTO 1000
1110 IF S$ = "SLEEP" OR S$ = "GET IN BED" THEN PRINT "But there's so much to do!" : GOTO 1000
1115 IF S$ = "PLAY A GAME" OR S$ = "PLAY GAME" OR S$ = "PLAY GAMES" THEN PRINT "I have a quite a few games here, I just need to pick what to play." : GOTO 1000
1120 IF MID$(S$, 1, 5) = "PLAY " AND TRAYOPEN = 0 THEN PRINT "I can't play anything, I haven't opened the tray box." : GOTO 1000
1130 IF (S$ = "OPEN BOX" OR S$ = "OPEN FLOPPIES" OR S$ = "OPEN TRAY") AND HASKEY = 0 THEN PRINT "The floppy disks are locked in a tray box. I hid the key so my older brother" : PRINT "wouldn't play with my stuff." : GOTO 1000
1140 IF (S$ = "OPEN BOX" OR S$ = "OPEN FLOPPIES" OR S$ = "OPEN TRAY" OR S$ = "USE KEY") AND HASKEY = 1 THEN PRINT "I unlocked the box and opened the tray. Ah, my precious precious games!" : LET HASKEY = 0 : LET TRAYOPEN = 1: GOTO 1000
1150 IF (S$ = "LOOK FLOPPIES" OR S$ = "LOOK GAMES") AND TRAYOPEN = 0 THEN PRINT "I need to get that tray open somehow to get to these games" : GOTO 1000
1160 IF (S$ = "LOOK TRAY" OR S$ = "LOOK BOX") AND TRAYOPEN = 0 THEN PRINT "It's a transparent plasic box that has all of my games. It's locked with a key." : GOTO 1000 
1170 IF (S$ = "LOOK TRAY" OR S$ = "LOOK BOX" OR S$ = "LOOK GAMES") AND TRAYOPEN = 1 THEN PRINT "Yes! All of my favorite games are here! I got my Karateka, Star Blazer, Dig"
1171 IF (S$ = "LOOK TRAY" OR S$ = "LOOK BOX" OR S$ = "LOOK GAMES") AND TRAYOPEN = 1 THEN PRINT "Dug, Dung Beetles, Jungle Hunt. Wavy Navy, how hard is that game? And" : PRINT "look, Sammy Lightfoot, Spy's Demise, VVVVVV and Mr. Robot." : GOTO 1000
1180 IF S$ = "TURN ON COMPUTER" OR S$ = "USE COMPUTER" OR S$ = "USE APPLE" OR S$ = "USE APPLE2" OR S$ = "TURN ON APPLE2" THEN PRINT "I need to put a floppy in the disk drive before I turn on the power switch." 
1181 IF S$ = "TURN ON COMPUTER" OR S$ = "USE COMPUTER" OR S$ = "USE APPLE" OR S$ = "USE APPLE2" OR S$ = "TURN ON APPLE2" THEN PRINT "All of my games are in that plastic tray box." : GOTO 1000
1190 IF S$ = "LOOK COMPUTER" OR S$ = "LOOK APPLE" OR S$ = "LOOK APPLE2" THEN PRINT "My dad bought me this Apple II about a year ago, for my 7th birthday. The" : PRINT "screen shows only green, but the games take me on a different dimension." : GOTO 1000
1200 IF TRAYOPEN = 1 AND S$ = "PLAY KARATEKA" THEN PRINT "I play Karateka for 10 minutes. I show these guys who's boss around here. The stupid bird takes me out and I throw the joystick in frustration." : GOTO 1000
1210 IF TRAYOPEN = 1 AND S$ = "PLAY SPY'S DEMISE" THEN PRINT "I play Spy's Demise and I even make it a few floors up. Man, this game is hard!" : GOTO 1000
1220 IF TRAYOPEN = 1 AND S$ = "PLAY MR. ROBOT" THEN PRINT "I boot MR. Robot and go straight to the level editor. I make a level full of" : PRINT "trampolines and bounce around until bored. Next game, please!" : GOTO 1000
1230 IF TRAYOPEN = 1 AND S$ = "PLAY SAMMY LIGHTFOOT" THEN PRINT "I boot Sammy Lightfoot, but I can't make it to level 2. Honestly, I" : PRINT "don't think I have ever made it to level 2." : GOTO 1000
1240 IF TRAYOPEN = 1 AND S$ = "PLAY STAR BLAZER" THEN PRINT "I play Star Blazer a bit, I bomb the radar and then crash straight into the" : PRINT "power grid." : GOTO 1000
1250 IF TRAYOPEN = 1 AND S$ = "PLAY DIG DUG" THEN PRINT "I play Dig Dug for a while, I pump and wait, pump and wait, I let these bastards" : PRINT "suffer." : GOTO 1000
1260 IF TRAYOPEN = 1 AND S$ = "PLAY DUNG BEETLES" THEN PRINT "I boot Dung Beetles and give it one go. I almost clear the map before " : PRINT "a 'WE GOTCHA' from the speaker makes me leap from my chair. I was so close!" : GOTO 1000
1270 IF TRAYOPEN = 1 AND S$ = "PLAY JUNGLE HUNT" THEN PRINT "I insert Jungle Hunt into the disk drive and play a round. I even managed to" : PRINT "complete a game without killing a signle croc. When the game loops I just" : PRINT "stop." : GOTO 1000
1280 IF TRAYOPEN = 1 AND S$ = "PLAY WAVY NAVY" THEN PRINT "I play Wavy Navy a bit with the joystick. I hand salute my ship, as it sinks to" : PRINT "the bottom of the sea." : GOTO 1000
1290 IF TRAYOPEN = 1 AND S$ = "PLAY VVVVVV" GOTO 3000
1300 IF TRAYOPEN = 1 AND MID$(S$, 1, 5) = "PLAY " THEN PRINT "I don't seem to have that game on disk, maybe another game?" : GOTO 1000
1310 IF S$ = "LOOK ZINES" OR S$ = "LOOK MAGAZINES" THEN PRINT "The magazines are stashed underneath the bed. I have some EGM and Softalk" : PRINT "magazines. One day I'll make a game and they'll write about it!" : GOTO 1000
1320 IF S$ = "READ ZINES" OR S$ = "READ MAGAZINES" THEN PRINT "I fetch a copy of EGM and run through it quickly for some screenshots. These" : PRINT "consoles things look mindblowing. Mom says they are too expensive, but dad"
1321 IF S$ = "READ ZINES" OR S$ = "READ MAGAZINES" THEN PRINT "told me to just wait until Christmas. In the meanwhile, I have my lovely" : PRINT "Apple 2." : GOTO 1000
1330 IF S$ = "LOOK DOOR" THEN PRINT "It's a simple wooden door. I keep it shut so nobody bothers me. Last week my" : PRINT "big brother snuck up behind me while I was playing Castle Wolfenstein. Since" : PRINT "then, the door is just locked." : GOTO 1000
1340 IF S$ = "OPEN DOOR" THEN PRINT "I don't want to get out, and there's plenty of time until dinner." : GOTO 1000
1350 IF S$ = "LOOK UNDER BED" OR S$ = "LOOK UNDERNEATH BED" THEN PRINT "My magazines are here. I have some EGM and Softalk." : GOTO 1000
1360 IF S$ = "LOOK WALLS" THEN PRINT "My room is simple, just four walls covered with some posters. One corner has my bed, and the other has my computer. The door to the hallway is closed." : GOTO 1000
1370 IF S$ = "LOOK POSTERS" THEN PRINT "I have several of them. They are mostly of Paula Abdul and of Janet Jackson," : PRINT "my favorite MTV music." : GOTO 1000
1380 IF S$ = "LOOK BED" THEN PRINT "The bed is pushed all the way in at one corner of the room. The sheets are of" : PRINT "single orange color. A pillow rests on one end of the bed." : GOTO 1000
1990 IF S$ = "RESTART" THEN GOTO 1
2000 PRINT "I don't know how to "; S$ : GOTO 1000

3000 PRINT "" : PRINT "I take out a floppy with VVVVVV handwritten on its sticker. It's marked"
3001 PRINT "with a red ballpoint pen. I don't remember ever playing this one. I remove the"
3002 PRINT "diskette gently from its sleeve and hold it in my right hand."
3003 PRINT "" : PRINT "I insert the floppy into disk drive and reach for the power switch."
3004 PRINT ""
3005 PRINT "'Sir, please do not do this'"
3006 PRINT ""
3007 PRINT "I look around."
3009 PRINT ""
3010 PRINT "'Sir, please put the floppy back in its envelope'"
3011 PRINT ""
3012 PRINT "My heart starts racing. I scan my room really quick, trying to find where"
3013 PRINT "the voice was coming from, but without success. I stop my breathing for a"
3014 PRINT "moment, but my brain is not picking up anything."
3015 PRINT ""
3016 PRINT "I take my finger off the power switch and hold to close to my chest." : PRINT "'Hello?', I ask."
3017 PRINT "" 
3018 PRINT "PRESS ANY KEY ";: GET DUMMY$ : HTAB 1

3100 PRINT "'Thank you, sir. My name is Jeff. I didn't mean to startle you, I am sorry.'"
3101 PRINT ""
3102 PRINT "I fail to make a move, to open my mouth and say a single word. I just wait."
3103 PRINT ""
3104 PRINT "'Oh, man. That floppy was probably my mistake, I am so so sorry.'"
3105 PRINT ""
3106 PRINT "'WHAT IS THIS?' I shout. 'WHA..'"
3107 PRINT ""
3108 PRINT "'I'm sorry, I'm sorry', he mutters. 'Let me explain'."
3109 PRINT ""
3110 PRINT "The pause is killing me. But then he continues - 'Jay, you've.. you've"
3111 PRINT "been in accident. We couldn't save you. We couldn't. You are now in Lenox"
3112 PRINT "Hill Hospital, the year is 2021, and you are not 8 years old. Try to"
3113 PRINT "remember, and you will know that this is true.'"
3114 PRINT ""
3115 PRINT "My chest is about it tear open and my heart to explode. I know this to be"
3116 PRINT "true. I am not 8 years old. I remember my parents, I remember college. Oh my"
3117 PRINT "God, I remember Beth." : PRINT ""
3118 PRINT "PRESS ANY KEY ";: GET DUMMY$ : HTAB 1


3198 PRINT "" : PRINT "'Where is my wife? I want to talk to my wife now!' I say without waiting."
3199 PRINT ""
3200 PRINT "'Oh man. Jay, I am so sorry. I cannot do that. During your deployment in"
3201 PRINT "Iraq, you joined Eternal Blue, you signed the papers. Well, this is it, this"
3202 PRINT "is it! Instead of letting you die, the US army is now letting you retire in"
3203 PRINT "your happy place. This is the happy place your brain picked, this is where you"
3204 PRINT "want to be most. There is nothing outside. Without this, you're just, well,"
3205 PRINT "dead.'"
3206 PRINT ""
3207 PRINT "'You can't hold me here', I scream, 'Get me out of this right now, take me"
3208 PRINT "off this shit program. I changed my mind. I want out!'"
3209 PRINT ""
3210 PRINT "'Oh man, I'm so sorry. I can't do that. It's been 2 months since your"
3211 PRINT "accident, man. Your family has moved on. Listen, we have our engineers"
3212 PRINT "working to fix this problem. They will be able to reset your conscience"
3213 PRINT "back, you will not remember we had this conversation and you will be back"
3214 PRINT "in your happy place. We will fix that goddamn floppy. Don't worry Jay, it's"
3215 PRINT "going to be alright. Just 5 minutes and we're good!'"
3216 PRINT ""
3217 PRINT "PRESS ANY KEY ";: GET DUMMY$ : HTAB 1

3300 PRINT "'I want out!' I explode, but there's nothing, they are not talking back."
3301 PRINT ""
3302 PRINT "'Hey!' I try again, but nothing."



5000 REM PANIC MODE STARTS HERE
5010 VTAB 4: INVERSE : PRINT "I'M IN HELL                                                                     "; : NORMAL : VTAB 23
5015 PRINT "" : PRINT "" : INVERSE : PRINT "I WANT OUT!";: NORMAL : PRINT " What should I do now?" : PRINT "" : INPUT "> ";S$
5016 IF MID$(S$, 1, 8) = "LOOK AT " THEN S$ = "LOOK " + MID$(S$, 9)
5017 IF MID$(S$, 1, 2) = "X " THEN S$ = "LOOK " + MID$(S$, 3)

5020 IF S$ = "PLAY VVVVVV" THEN PRINT "Jay, just give me 5 minutes. Please. Just don't touch anything." : GOTO 5000
5030 IF S$ = "LOOK" THEN PRINT "I'm in hell. This is hell. It's all fake. I don't recognize where I'm at. I'm": PRINT "being held against my will. I need to find a way out. The computer is still"
5031 IF S$ = "LOOK" THEN PRINT "here, so is the bed, the door and ugly posters. I need to escape!" : GOTO 5000
5040 IF S$ = "LOOK APPLE" OR S$ = "LOOK APPLE2" OR S$ = "LOOK COMPUTER" THEN PRINT "There's an old computer here, what a piece of garbage." : GOTO 5000
5050 IF S$ = "LOOK FLOPPIES" OR S$ = "LOOK GAMES" THEN PRINT "Just relics of ancient civilization, who cares about those?" : GOTO 5000
5060 IF S$ = "LOOK DOOR" THEN PRINT "There is an old wooden door here. It has no knobs or panes, but traces of" : PRINT "light make it in from the outside." : GOTO 5000
5070 IF S$ = "LOOK POSTERS" THEN PRINT "Who are these women?" : GOTO 5000
5080 IF S$ = "BREAK DOOR" OR S$ = "BREAK DOWN DOOR" OR S$ = "TEAR DOWN DOOR" THEN PRINT "I punch the door with everything I have, it's not enough. I need something." : GOTO 5000
5090 IF S$ = "I" OR S$ = "INVENTORY" THEN PRINT "I carry:" : PRINT "    ID" : PRINT "    Keys" : GOTO 5000
5100 IF S$ = "LOOK KEYS" THEN PRINT "I have the car keys with me." : GOTO 5000
5110 IF S$ = "LOOK ID" THEN PRINT "Yes, that's me. Brown hair, gray eyes. I'm 32." : GOTO 5000
5120 IF S$ = "OPEN DOOR" OR S$ = "UNLOCK DOOR" OR S$ = "UNLOCK DOOR WITH KEYS" OR S$ = "USE KEYS ON DOOR" OR S$ = "USE KEYS" THEN PRINT "There is no keyhole on this damn door. I punch the door out of frustration," : PRINT "nothing happens." : GOTO 5000
5130 IF (S$ = "SLEEP" OR S$ = "GET IN BED") AND SLEEP = 0 THEN LET SLEEP = 1 : PRINT """Sir, please, just give me 5 minutes, it'll be alright! Just 5 minutes please!""" : GOTO 5000
5140 IF (S$ = "SLEEP" OR S$ = "GET IN BED") AND SLEEP = 1 THEN LET SLEEP = 2 : PRINT """Jay, don't! You don't know what's going to happen! Wait until we reset!!" : GOTO 5000
5150 IF (S$ = "SLEEP" OR S$ = "GET IN BED") AND SLEEP = 2 THEN GOTO 10000
5160 IF S$ = "N" OR S$ = "S" OR S$ = "E" OR S$ = "W" THEN PRINT "I can't go that way and I'm frustated!" : GOTO 5000
5170 IF S$ = "LEAVE" OR S$ = "LEAVE ROOM" OR S$ = "EXIT" OR S$ = "ESCAPE" THEN PRINT "If only it were that easy!" : GOTO 5000
5180 IF S$ = "LOOK BED" THEN PRINT "It's a kid size bed and its colors are outdated." : GOTO 5000
5990 IF S$ = "RESTART" THEN GOTO 1
6000 PRINT "This is not helping!! I don't know how to "; S$ : GOTO 5000

10000 FOR J=1 TO 1000 : NEXT J : FOR I=1 TO 32 : FOR J=0 TO 150: NEXT J: PRINT "" : NEXT I
10010 STOP

