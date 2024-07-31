> [!NOTE]
> FOLLOW UP ACTIONS
> 
> 1. get the base normal chessboard rendering in svelte with 2 player support
> 2. confirm piece ideas, send to nichole and specify required filetype (probably png i think)
> 3. decide cost of each piece

# Ideas

## Product

* Web frontend
    * comprises the following
        1. 2-player WIGOC board 
            * board *(consider making the board flip, assuming 2 players are playing from different ends of the SAME phone)*
            * counters for pieces with abilities
        2. Wiki
            * introduces the pieces
            * introduces how to play WIGOC *(gamestate eg. piece drafting in buying phase, gameplay phase)*
    * in Svelte or Vanilla JS, HTML and CSS

## WIGOC gameplay

### General

* Locations comprise the board and the graveyard
* Active pieces are played on the board
* Captured and dead pieces are sent to the graveyard

### Game states

1. Drafting phase: players are provided a fixed X amount of currency, which are used to buy up to 16 pieces *(similar to the buy phase in CS and Valorant)*
    * contested pieces are decided based on the highest bidder
    * equal bids are settled with a [diceroll](https://g.co/kgs/HuKNXmL)
2. Gameplay phase: played like normal chess with new pieces

### Pieces

* Some pieces have abilities
* Abilities are of three kinds
    1. *Passive* abilites are always active
    2. *Rechargable* abilities recharge over X number of turns 
    3. *Non-rechargable* abilities have a fixed number of uses per game and don't recharge

## WIGOC pieces

1. Prawn
    * moves and captures like a Pawn
    * Pawns are now called Prawns *(and are drawn as prawns)*
2. Knight
    * operates the same as in regular Chess
3. Rook
    * operates the same as in regular Chess
4. Bishop
    * operates the same as in regular Chess
5. King
    * operates the same as in regular Chess
    * **definitively** checkmating the enemy King results in victory
    * note there is **no Queen** in WIGOC because she died in regular Chess, which created a power vacuum resulting in the chaos of current WIGOCI
6. Carp
    * moves and captures as pictured [here](https://www.reddit.com/r/chessvariants/comments/1ealacv/custom_chess_piece_idea_the_carp/)
7. Time Lord
    * moves and captures like a Rook + Bishop
    * ability activates every 10 turns
        1. Pre-move to a square 5 moves
        2. Disappear from the board presently after going ahead in time
        3. Appear on the board at that square 5 moves later after reaching the chosen time period
            * If square is currently occupied, Time Lord is randomly displaced to 1 of the surrounding 8 squares
            * If all surrounding 8 squares are also occupied, Time Lord dies
8. Reverse Prawn
    * moves and captures like a Pawn, but it can only move backward
    * once it reaches the home row, it promotes to a normal Prawn *(Pawn)*
9. "This Is Fine" dog
    * moves like a King
    * cannot capture other pieces conventionally
    * 1-time use ability
        1. Calls a meteor that strikes its current square and the surrounding 25 squares 
        2. Any pieces caught with that blast radius are captured
        3. "This Is Fine" dog dies immediately after
        4. Ability cannot checkmate the enemy King
10. Weeping Angel
    * moves and captures like a Bishop
    * passive ability
        1. Opponent is not allowed to see this piece move
        2. If opponent asks what piece was moved / where your piece moved, refuse to tell them if you moved the Weeping Angel
        3. Best used when your opponent is not paying attention
11. Cthulhu
    * moves and captures as pictured [here](https://www.reddit.com/r/chessvariants/comments/192pqea/new_chest_piece_idea_the_mutant/)
12. Mr. Meeseeks	
    * passive ability
        1. Moves and captures exactly the same as the last piece moved by the opponent
        2. Applied at Mr. Meseeks' current square
13. Teleporting Pacifist 
    * passive ability
        1. Moves to any unoccupied square
        2. Cannot capture other pieces, can be captured
    * primarily used to block checks and prevent castling
14. Contrarian 
    * moves like a Pawn
    * passive ability
        1. Can only capture enemy pieces which cannot make any moves
15. Opportunist
    * passive ability
        1. Can move as any enemy piece that the opponent has not yet moved
        2. After all enemy pieces have been moved, Opportunist moves and captures like a knight
16. Hypnotist
    * moves like a knight
    * cannot capture other pieces
    * passive ability
        1. Can move enemy pieces in the surrounding 8 squares as if they are your own *(according to their movesets)*
17. Avenger
    * moves and captures like a Pawn
    * passive ability
        1. Moves and captures like the most recently captured friendly piece
18. Orphan
    * moves and captures like a Pawn
    * passive ability
        1. Moves and captures like any enemy piece that can currently capture the Orphan *(in the next turn)*
19. BFF
    * moves and captures like a Pawn
    * passive ability
        1. moves and captures like any friendly piece that is currently safeguarding it *(in the current move)*
20. Alfred Hitchcock
    * moves like a Bishop 
    * cannot capture other pieces
    * passive ability 
        1. Cannot move until X amount of turns have passed
        2. Player is awarded X coins during the drafting phase if they choose to buy Alfred Hitchcock
        3. X has a maximum value of 20
21. Bishop Kicker
    * moves and captures like a King
    * passive ability
        1. When next to a Bishop, the Bishop Kicker can spend 1 turn moving that Bishop to an adjacent square 
22. Communist
    * moves and captures like a Bishop
    * 1-time use ability
        1. Instantly kill the Communist for the cause
        2. For the next 3 turns all pieces besides the King move like a Pawn 
        3. This is because all pieces are equal
23. Jurong West Block 498
    * moves like a Rook
    * cannot capture other pieces
    * 1-time use ability
        1. With both player's consent, end the game of WIGOC and decide the winner through a fist fight
        2. If not, both players play 1 round of [chopsticks](https://en.wikipedia.org/wiki/Chopsticks_(hand_game)), the winner is awarded 1 Bishop Kicker
24. Sumo Wrestler
    * moves up to two squares orthogonally or diagonally
    * cannot capture other pieces conventionally
    * passive ability
        1. Push enemy pieces 1 square in the direction they're moving
        2. If the Sumo Wrestler pushes an enemy piece off the edge of the board, that piece is captured
25. Count Olaf
    * moves like a Knight
    * cannot capture other pieces conventionally
    * ability activates every 5 turns
        1. Throw an incendiary into an unoccupied square with the range of a Rook
        2. Squares set on fire burn for 3 turns 
        3. Enemy pieces that pass through or land on a burning square are captured
        4. Count Olaf cannot throw their incendiary if there is already a burning square on the board set by any friendly Count Olafs
26. Royal Guard
    * passive ability
        1. Cannot be moved at all once it is placed down
        2. Has a 'health' of 2 captures *(opponent's capture attempt will be reversed)*
27. Spider
    * moves like a Pawn
    * cannot capture other pieces
    * passive ability 
        1. Prevents all surrounding friendly and enemy pieces in the surrounding 8 squares from moving 
28. Covid-19
    * moves and captures as pictured [here](https://www.reddit.com/r/chessvariants/comments/193o4de/new_chess_piece_idea_the_dungeon_crawler/)
29. Alligator
    * moves and captures as pictured [here](https://www.reddit.com/r/chessvariants/comments/1bgj3p7/new_chess_piece_idea_the_smiler/)
30. Hayao Miyazaki
    * moves like a King
    * cannot capture other pieces
    * passive ability
        1. When Hayao Miyazaki has an orthogonal or diagonal sightline of your King, your King **cannot** be killed by 1 single checkmate
        2. Automatically capture the piece checkmating your King 
        3. Hayao Miyazaki dies immediately
31. Kumar (the Singaporean comedian)
    * moves like a King
    * cannot capture other pieces
    * passive ability
        1. Activates when Kumar is putting the enemy King in check
        2. Player playing Kumar tells the opponent a joke 
        3. If the opponent laughs, the check becomes an instant checkmate and they lose the WIGOC game
        4. If the opponent doesn't laugh, the opponent then gets to tell the player a joke
        5. If the player laughs in response, its an instant death and they lose the WIGOC game 
        6. If the player doesn't laugh in response, nothing happens
        7. Kumar immediately dies
32. Stockholm Syndrome
    * moves like a Pawn
    * cannot capture other pieces
    * passive ability
        1. When this piece is under immediate threat of capture, this  ability activates
        2. If Stockholm Syndrome can stay within threat of being captured but evade actual capture for 5 turns, the last piece threatening it is captured automatically

> add further 

37. Amazon Prime
    * moves like a queen
    * can only move and capture when it is to a sqare on the edge of the board, otherwise cannot move at all
38. Suicide bomber
    * looks like a pawn
    * when captured, it takes out the piece that captured it
39. downtown line
    * piece that can only move up and down a row square after it is first placed (imagine a rook with movement limited to either horizontal or vertical)
      * horizontal or vertical is determined by the player when DTL is first moved
    * a max of 2 pieces can BOARD the downtown line at any given time
    * it is 1 move to mount and 1 move to dismount the downtown line
    * the downtown line itself is invulnerable to any attacks
    * pieces cannot be attacked while mounting or dismounting the downtown line since that is a war crime
    * the King cannot ride the downtown line because mrt is for lower SES
40. spy
    * moves like a knight
    * cannot capture
    * can sacrifice this piece and replace it with any other piece you own
41. jailer
    * moves and captures like a queen up to X number of squars, where X is equal to the number of captured enemy pawns
    * can't move at all at the start
43. redditor
    *  While all the other pieces go out and take part in the game, this piece studies the blade. If the opponent's king is in a position where there is an empty space directly behind it, you can immediately teleport this piece to that space and place them in check. 
44. the lawyer
    * moves like a bishop but 1 square only
    * a just say no // uno reverse card
    * this piece can dispute any move made by your opponent and have them undo the move
    * it can only use this power 5 times per game
    * only your opponent's other Laywer piece can remove your lawyer from the board
45. sniper from switzerland
    * moves like a king, captures like an archer
    * initially only able to capture pieces like a rook
    * after killing 5 pieces, it makes a tower out of the bodies of the dead and can capture pieces like a rook and bishop
    * after killing 10 pieces, it can now deliver piercing shots that capture 2 pieces if they are lined up diagonally or ortogonally (see above)
    * cannot checkmate the king because he is swiss
46. russian hacker
    * moves like a pawn
    * every 3 turns it can hack any friendly or enemy rooks in the same row or column (no direct line of sight needed)
    * those rooks become bishops for 5 turns
47. ant
    * moves like a king
    * instead of moving, can choose to place an egg on any unoccupied square next to the ant outside of enemy home row 
    * eggs canot move
    * if an egg isn't captured in 3 turns, it promotes to a pawn
48. Astin (transmissible spongiform encypholytus)
    * moves like a queen 
    * cannot capture conventionally
    * ability activates every 3 turns
      * captures by marking any piece within the queen's capture zone 
      * marked pieces are captured after 5 turns 

49. victim olympics
    * a.k.a the scapegoat
    * moves like a king
    * cannot capture
    * if the opponent can capture the scapegoat, they MUST capture it


8. zarya from overwatch
    * can place a bubble on any piece within her direct line of sight (of a rook)
    * bubble tanks 1 fatal hit and prevents that piece from being eaten in that move
    * effectively invalidates opponent's last move
    * has 3 uses of her ability, recharges 1 more use when she reaches the opponent's home row and promotes to cutting zarya (she is now cutting)
12. mushroom
    * shameless ripoff from https://www.reddit.com/r/chessvariants/comments/18yw0pn/new_chest_piece_idea_the_mushroom/
13. the gambler
    * shameless ripoff from https://www.reddit.com/r/chessvariants/comments/192tjbs/fairy_piece_idea_gambler_2nd_draft/
19. archer
    * shameless ripoff from https://www.reddit.com/r/chessvariants/comments/7w77oy/new_chess_piece_idea_the_archer_details_in/
    * does not move when it captures
    * captures with a limited range

42. aoi todo
    * boogie woogie
    * moves like a knight, captures like a pawn
    * special ability activates every 3 turns
      * transports one friendly piece to it's previous location 3 turns ago
9. gojo zatoru
    * freezes time
    * functionally moves like a king
    * can choose to move this piece two turns and skip the opponnents next turn
    * ability available every 20 turns
5. zuguru geto
    * consume monster
    * functionally moves like a king
    * choose ONE of the 2 abilities below every 20 turns
      * finds a piece from the graveyard for FREE and brings it back to their hand
      * best of three scissors paper stone with the other player, if win, gets a piece from the otehr player's unplayed hand and brings it to their hand
6. zhoko ieri
    * reverse cursed technique
    * can reverse the side of any piece on either team for 5 moves, after which that reversed piece reverts to its original side
    * can use ability every 10 turns
    * ability's area of effect is the surrounding 9 squares
    * otherwise functionally just a pawn
50. gege akutami
    * moves like a king
    * when your king is mated, you can switch the position of gege akutami and the king
    * you have plot armour
15. shogi gold general
    * basically moves like a shogi gold general 
    * which is like this https://shogi.fandom.com/wiki/Gold_General
16. shogi silver general
    * basically moves like a shogi silver general 
    * which is like this https://shogi.fandom.com/wiki/Silver_General

53. Punggol Block 131A
    * moves
    * passive ability
        1. WIGOC becomes chinese chess for 5 turns
        2. 