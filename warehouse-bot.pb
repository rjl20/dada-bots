/* 
 * Creates warehouse 23 style artifact descriptions.
 *
 * 2018.09.21 -- RJL20
 *
 */

#include <stdmap.pbi>
#include <format.pbi>

// Global variables used:
// v-person		A person associated with the artifact

// main: combo-tv;

Start: "Aisle " digit-nonzero digit+ ", Shelf " digit-nonzero ", Object " objectid>upcase "\n\n"
	[ button-box | photo | deathmask | ordinary |  ordinary | acme | mirror | combo-tv ] ;

combo-tv: 
	"A 13-inch " ["Sharp" | "Sony" | "Toshiba" | "Sorny" | "Panasonic" | "RCA" | "Symphonic" | "Quasar" | "Zenith" | "Emerson" | "Magnavox" | "Panaphonics" | "Magnetbox" ]
	" color TV/VCR combo playing an advertisement for "
	[ "retractable awnings" | "\"pocket\" garden hoses" | "the Pocket Fisherman" | "Ginsu knives" | "Chia Pets" | "spray-on hair" | "Head On (apply directly to the forehead!)" ]
	" on a continuous loop." [ " It does not appear to be plugged in." | "" ] "\n\n"
	[ "You realize you have your phone out and are dialing the number on the screen. Your training kicks in, and you go to return your phone to your locker in the break room, where you could have sworn it was at the start of your shift."
	| "You already have one of those, so why is someone on your phone thanking you for your purchase? Didn't you leave your phone in your locker?"
	| "A hammer is velcroed to the side of the unit below a label which reads \"IN CASE OF INCURSION, BREAK GLASS\"."
	| "You knew your schedule would take you into this section today, so you left your phone in your locker. How you came to be dialing the on-screen number, then, is a question you might want to bring up with your supervisor next time you see " ["him" | "her"] "."
	| "With every repetition, the actors seem a little more desperate."
	| "When your safety badge gets hot enough to melt and release its ammonia fumes, you realize that you have been chanting the sales pitch along with the narrator for the last ten minutes. Your throat is raw, and now you're going to have to spend the last hour of your shift in Decontamination. " [ "Again." | "Damn it." | "" ]
	| "As you approach, you remember your training, and insert your earplugs."
	]
;

button-box:
	"A" [
	    "n ornately carved wooden" | " black plastic" | " beige plastic" | " Bakelite"
	    | "n ebony" | " filigreed silver" | " gilt-bronze" | " black lacquered"
	    | " red lacquered" | "n unremarkable wooden" | " pitted copper" | " tin"
	    ]
	    " box, " [ "roughly" | "approximately" | "about" ] " the size of "
	    [
	    "a box of tissues" | "a pack of cigarettes" | "a deck of cards"
	    | "your fist" | "a matchbox" | "a briefcase" | "a shoebox"
	    ]
	    ", with a " ["discreet" | "prominent"] " " ["red" | "black" | "white" | "round"]
	    " button on the " ["lid" | "front" | "side"] ". " box-label "\n\n" box-action
	    ;

box-label:
	"Its object label reads only \""
	[ "From the collection of " | "Recovered from " | "From the effects of " | "Collected by " | "Recovered by " ]
	person "\"."
	| ""
	;

box-action:
	"You feel an almost irresistible urge to push the button, but you remember what happened last time."
	| "You push the button and feel a flash of happiness. In the next aisle over, a fellow Warehouse worker stubs " ["his" | "her"] " toe."
	| "You push the button. A deep " ["thr" | "h"] "umming surrounds you for " ["approximately" | "exactly"] " five seconds, then stops." [ " You'll discover the other effect tonight, in the shower." | ""]
	| "You push the button. A hollow voice says \"Plugh\"."
	| "You push the button, and suddenly can't recall the " ["name" | "face"] " of your " ["mother" | "father"] ". The box grows almost imperceptibly in size."
	| "You push the button, and the aches and pains of the day melt away. " [ "There is a sharp cry from within the box." | "There is a loud crash from the next aisle over; maybe you should investigate." | "Further down the aisle, you see a coworker grab " ["his" | "her"] " left arm and stumble against a shelf."]
	| "You push the button. The scent of " [flower-smell | flower-smell | other-smell] " fills the air, and the box opens. It is empty."
	| "You feel a strong sense of deja vu as you reach out to push the button" [", and draw your hand back." | ""]
;

mirror: [
	"A cheap plastic hand mirror"
	| "An ornately-framed full-length mirror"
	| "An ornately-framed mirror, about three feet tall"
	| "An ornately-framed mirror"
	| "A clamshell compact mirror"
	| "A polished bronze mirror"
	| "An antique polished bronze mirror"
	| "A polished silver hand mirror"
	| "An antique polished silver hand mirror"
	| "An ordinary glass hand mirror"
	| "A silver serving plate, polished to a mirror finish"
	| "A wide, shallow bowl filled with mercury"
	]
	". Your reflection seems ordinary, but "
	[ 
	"instead of the Warehouse behind you, you see "
		[
		"the stars."
		| "stars. The constellations are all wrong."
		| "stars and the moon. A moon, anyway."
		| "the moon and stars."
		| "a forest."
		| "the desert."
		| "the ocean."
		| "a swirling mist."
		| "a perfectly maintained English garden."
		| "the Eiffel Tower."
		| "the midway of the World's Columbian Exposition."
		| "a brightly-painted canvas circus tent."
		]
	| ["peering" | "peeking" | "glaring" | "staring" | "looking" | "watching"] " over your " 
		["left (or is that right?)" | "right (or is that left?)"] " shoulder is "
		person ". "
		[
			"When you try to move on, " person-subject " "
			[ "tugs at your sleeve" | "grabs your wrist" | "grabs at you" ]
			" and you find yourself unable to look away."
		|	person-subject>upcase-first " seems to be trying to warn you about something, but you can't hear " person-object "."
		|	person-subject>upcase-first " waves sadly, takes one more look, and slowly fades."
		|	person-subject>upcase-first " shouts, or laughs -- it's hard to tell without sound -- and you begin to see the shelving through your hands."
		|	"You quickly shut your eyes, as the training video said to do, but you can still hear " person-object " whispering."
		|	""
		]
	]
;

acme:
	"A" [" wooden crate" | " cardboard box" | "n aluminum case"] " with \"ACME " 
	[ "INFLATABLE " inflatable-thing | "PREMIUM " acme-thing | "PORTABLE " portable-thing ]
	"\" stenciled on the side."
	" " acme-extra
;

inflatable-thing:
	"SUBMARINE" | "NUCLEAR SUBMARINE" | "SATURN V" | "STEAMROLLER" | "BLACK HOLE" | "BATTLESHIP" | "BOULDER"
	| "ANVIL" | "BOXING RING" | "BRIDGE" | "GARBAGE TRUCK" | "DUMP TRUCK" | "CANNON" | "HOWITZER" 
	| "ELEVATOR" | "BATHYSPHERE" | "HOT TUB" | "BOMB SHELTER" | "FALLOUT SHELTER"
;

acme-thing:
	"JETPACK" | "ROCKET SKATES" | "JET SKATES" | "HANG GLIDER" | "BATSUIT" | "DIVING BELL" | "CANNON" | "ANVIL"
	| "GUILLOTINE"
;

portable-thing:
	"BLACK HOLE" | "ELEVATOR" | "ESCALATOR" | "HOLE, ONE GROSS" | "BOMB SHELTER" | "FALLOUT SHELTER" | "TELEPHONE BOOTH"
	| "NUCLEAR DEVICE" | "PARTICLE ACCELERATOR" | "BREEDER REACTOR" | "BANK VAULT"
;

acme-extra:
	"It is empty, " ["except" | "save"] " for " acme-leftover "." 
	[ " A " ["crowbar" | "pry bar" | "sledge hammer" | "hammer" | "dull box cutter"] " is on the floor nearby." | "" ]
	| "It appears to be unopened."
	| "You didn't know they made those!"
;

acme-leftover:
	"a tuft of brown fur" | "a tuft of white fur" | "a single feather" | "a " ["handful" | "scattering"] " of ball bearings" 
	| "a small pile of bird seed" | "an undisturbed set of instructions" | "an assembly diagram" | "a few spiders"
	| "an illegible business card" | "a sign on a stick which reads: " [ "HELP" | "!!!" | "NOT AGAIN" ]
	| "... are those toenail clippings? Ew" | "a half-completed RMA form, " ["scorched at the edges" | "crumpled into a ball"] | "a " ["surly" | "confused" | "startled" | "molting"] " pigeon"
;

ordinary: 
	"A" ordinary-object ". " 
	ordinary-description
	["\n\n" generic-extra | "\n\n" generic-extra | "\n\n" generic-extra | ""]
;	

ordinary-object:
	"n eggbeater" | " wire whisk" | " whisk broom" | " dustpan" | " salad fork" | " pencil case"
	| " paintbrush" | " leather wallet" | "n apple" | "n orange" | " lime" | " tomato"
	| " magnifying glass" | " Nokia 3310 cell phone" | " first-generation iPod" 
	| " copy of yesterday's newspaper" 
	| " glass Coke bottle" 
	[
		", empty" | ", half-full of still-fizzing Coke" | ", capped but empty" 
		| ", beads of condensation just forming on its surface"
	]
	| "n issue of the magazine \"" [
		"Ranger Rick" | "People" | "Us Weekly" | "Tiger Beat" | "Life" | "Time"
		| "Reader's Digest" | "Cricket" | "Cosmopolitan" | "Vogue" | "Men's Health"
		| "Sports Illustrated" | "Popular Mechanics" | "Women's Health" 
		| "Martha Stewart Living" | "Good Housekeeping" | "Woman's Day" 
		| "National Geographic" | "GQ" | "Rolling Stone" | "TV Guide" ]	"\""
	| "n athletic sock" | " microwave oven" | [" Bakelite-handled" | " plastic" | " wooden"] " hairbrush"
;

ordinary-description:
	"A " ["yellowing paper" | "small" | "prominent" | "discreet"] " " ["label" | "tag"] " reads: " generic-label "."
	| "Perfectly ordinary" [", as far as you can tell." | ", as far as you know." | ". Probably." | "."]
	| "Nothing to write home about."
	| "There's something " ["pleasant" | "unpleasant" | "aesthetically pleasing" | "disturbing"] " about it; " ["you aren't sure what." | "you can't quite put your finger on it."]
	| ["Why's that in here?" | "What's that doing here?"]
	| ""
;

deathmask:
	"A " ["plaster" | "wax"] " death mask of " person 
		[ " and a pair of plaster hands" [ "." | hands-damage | hands-damage ]
			[
			" If those were cast from " person-possessive " hands, they're " [ "smaller" | "larger" ] " than you would have expected." 
			| ""
			]
		| ". The amount of detail is startling; " person-possessive " eyelashes look almost real."
		| ". It's quite well-made; you can see " person-possessive " every pore."
		| ". There is a tiny bead of moisture in the corner of one eye."
		| ". " person-subject>upcase-first [" looks peaceful." | " appears to be smirking." ]
		| "."
		]
	"\n\n" generic-extra
;

hands-damage:
	" from which the " [ "left" | "right" ] " " [ "thumb" | "pinkie" | "index finger" | "ring finger" | "middle finger" ] " is missing."
;
photo: 
	"A " photo-adjective " photograph of " person person-age 
	photo-action ". " photo-description " " photo-extra
;

person-age:
	""
	| ", around twenty years old,"
	| ", in " person-possessive " youth,"
	| ", near the end of " person-possessive " life,"
;

photo-adjective:
	"vivid color" | "black and white" | "glossy" | "crumpled and smoothed"
	| "4x6" | "small square" | "" | "" | ""
;

photo-action:
	" looking straight at the camera"
	| " looking confused"
	| " eating a sandwich"
	| " holding a" held-thing
	| " holding a glass of wine" [ ". Probably wine. It's red, anyway" | "" ]
	| " pointing " person-possessive " finger at something out of frame"
	| " standing in " standing-place
	| " standing in " standing-place
	| " standing in " standing-place
	| " sitting on a" sitting-place
	| " sitting on a" sitting-place
	| " sleeping in " person-possessive " bed" [ ". Probably sleeping. Definitely sleeping" | "" ]
;

held-thing:
	" wombat on a leash" | " bouquet of roses" | "n iPod" | " crystal goblet" | " map"
	| "n upside-down map" | " small sculpture of astonishing ugliness" 
	| " bottle of Champagne" | " slim book of poetry" | " wooden stake" | " hooded falcon"
	| "n apple" | " pineapple" | " watermelon" | " silver scepter" | " wooden oar"
	| " sprig of holly" | " kitten" | " puppy" | " bunch of grapes"
;

photo-description:
	"One corner of the photo has been torn off."
	| "One corner of the photo has a small tear, patched with yellowing tape."
	| "The photo has been torn in half and reassembled with cellophane tape."
	| "The photo has been torn into three uneven pieces and taped back together."
	| "Someone has set their coffee on the photo, and it is marred by pale brown rings."
	| "" | "" | ""
;

photo-extra:
	"\n\n" generic-extra
	| "\n\nIf you look at it long enough, " person-subject " winks at you."
	| "\n\nIf you look at it long enough, " person-subject " makes a rude gesture."
	| "\n\nIf you look at it long enough, " person-subject " turns " person-possessive " back to you."
	| "\n\nIf you look at it long enough, " person-subject " sticks " person-possessive " tongue out at you."
	| "\n\nYou take a second look at it and are pretty sure " person-subject " has moved slightly."
	| "\n\nAs you touch it, there is a flash of light and a loud pop, as from an old-fashioned flash bulb, and " [ "someone shouts at you in a language you do not understand." [ " They don't sound happy." | "" ] | "you get a splitting headache." ]
	| person-subject>upcase-first " reminds you " ["strongly" | "very much" | "vaguely"] " of your " @person-gender>gender-parent ", although they look nothing alike."
;

generic-extra:
	"It draws your attention, and you find that you can't look away. Well, you probably could, but you don't want to, "["just now" | "yet" | "for the time being"] "."
	| "You try to lift it, but it will not budge."
	| "A small label nearby reads " generic-label "."
	| "From the look of the dust on the shelf, someone has recently tried to put this back exactly how they found it."
	| ["Going" | "Judging"] " by the built-up dust, nobody has touched this in years."
	| "You reach out to touch it, then think better of it."
	| "As you pick it up, the light " ["dims" | "flickers" | "flares" | "sputters"] " and you briefly smell " [ other-smell | other-smell | flower-smell ] "."
	| "It smells faintly of " flower-smell " and " [ other-smell "." | "... " other-smell "?"]
	| "Looking at it fills you with an unfocused sense of dread."
	| "It is entirely unremarkable." [ " Entirely." | "" ]
	| "You want it. More than you have ever wanted anything." [ " Despite the visible security cameras, you are strongly considering stealing it." | "" ]
	| ""
;

flower-smell:
	"honeysuckle" | "lavender" | "roses" | "wisteria" | "gardenia" | "jasmine" | "hyssop" | "mint" | "hyacinth"
	| "primrose" | "clematis" | "ylang-ylang" | "lemon" | "lime" | "orange" | "lilac" | "freesia" | "vanilla"
;

other-smell:
	"motor oil" | "pepper" | "wood smoke" | "burning tires" | "WD-40" | "bacon" | "grandma's house" | "sneeze"
	| "cough syrup" | "pizza" | "horse" | "old tobacco" | "gunpowder" | "copper" | "wet dog" | "curry powder"
	| "garam masala" | "silage" | "spoiled milk" | "christmas tree" | "pine" | "cedar" | "armpit"
;

digit-nonzero: "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;
digit: "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "0" ;
a-f: "a" | "b" | "c" | "d" | "e" | "f" ;
hexdigit: digit | a-f | a-f;
objectid: hexdigit hexdigit ":" hexdigit hexdigit ":" hexdigit hexdigit ":" hexdigit hexdigit ":" hexdigit hexdigit ":" hexdigit hexdigit;

document-id:
	digit-nonzero
	digit+
	"-"
	digit+
	"/"
	a-f
;

generic-label: 
	"DO NOT EXPOSE TO DIRECT SUNLIGHT"
	| "NOT FOR EXTERNAL LOAN"
	| "SEE CIRCULAR " document-id " FOR " [ "SAFE HANDLING" | "DISPOSAL" | "CONTAINMENT" ] " INSTRUCTIONS"
	| "CAUTION: RADIOACTIVE"
	| "DO NOT REMOVE FROM CASE. You do not see a case"
;

sitting-place:
	"n ornate chair" | " plain wooden chair" | " picnic blanket" | " large horse" 
	| " small horse" | " stone lion" | " marble swan" | " woodworking bench"
	| " three-legged stool" | " Turkish rug" | " stack of books"
;

standing-place: 
	"a field of clover" | "a crowded bar" | "a featureless open plain" 
	| "the middle of a small" [", angry-looking" | ""] " crowd"
	| "a country lane" | "a clearing in a dense forest" | "a flower market" 
	| "a produce market" | "a field of poppies" | "a field of wildflowers" 
	| "a queue of people" | "a cemetary" | "a church yard" | "a doorway" 
	| "an otherwise empty room" | "a muddy path" | "the lobby of a movie theater" 
	| "an empty warehouse" 
;

person-last: v-person<<person-lastname;

person-first: @person-last>firstname;

person: person-first " " person-last;

person-gender: @person-last>gender;

person-possessive: @person-gender>gender-possessive;

person-subject: @person-gender>gender-subject;

person-object: @person-gender>gender-object;

firstname:
        ".*" -> "$"/"-first"
;

gender:
        ".*" -> "$"/"-gender"
;

person-gender:
	person-last>gender
;

male-parent: "father";
female-parent: "mother";
gender-parent: 
	".*" -> "$"/"-parent"
;

male-possessive: "his";
female-possessive: "her";
gender-possessive: 
	".*" -> "$"/"-possessive"
;

male-subject: "he";
female-subject: "she";
gender-subject:
        ".*" -> "$"/"-subject"
;

male-object: "him";
female-object: "her";
gender-object:
        ".*" -> "$"/"-object"
;

person-lastname: 
	"Newton" | "Einstein" | "Dee" | "Victoria" | "Curie" | "Hitler" | "Edison" 
	| "Houdini" | "Feynman" | "Leibniz" | "Blavatsky" | "Crowley" | "LaVey"
	| "Smith" | "Blake" | "Kahlo" | "Tesla" | "Lamarr" | "Churchill" | "Wilson"
	| "Robert-Houdin" | "Lovelace" | "Hopper" | "Shakespeare" | "Teller" | "Bathory"
	| "Borden" | "Oswald" | "Harrison" | "Carrington" | "Varo" | "Turing"
;

Newton-first: "Isaac";
Newton-gender: "male";
Einstein-first: "Albert";
Einstein-gender: "male";
Dee-first: "John";
Dee-gender: "male";
Victoria-first: "Queen";
Victoria-gender: "female";
Curie-first: "Marie";
Curie-gender: "female";
Hitler-first: "Adolph";
Hitler-gender: "male";
Edison-first: "Thomas";
Edison-gender:"male";
Houdini-first: "Harry";
Houdini-gender: "male";
Feynman-first: "Richard";
Feynman-gender: "male";
Leibniz-first: "Gottfried Wilhelm";
Leibniz-gender: "male";
Blavatsky-first: "Helena";
Blavatsky-gender: "female";
Crowley-first: "Aleister";
Crowley-gender: "male";
LaVey-first: "Anton";
LaVey-gender: "male";
Smith-first: "Pamela Colman";
Smith-gender: "female";
Blake-first: "William";
Blake-gender: "male";
Kahlo-first: "Frida";
Kahlo-gender: "female";
Tesla-first: "Nikola";
Tesla-gender: "male";
Lamarr-first: "Hedy";
Lamarr-gender: "female";
Churchill-first: "Winston";
Churchill-gender: "male";
Wilson-first: "Robert Anton";
Wilson-gender: "male";
Robert-Houdin-first: "Jean Eugene";
Robert-Houdin-gender: "male";
Lovelace-first: "Ada";
Lovelace-gender: "female";
Hopper-first: "Grace";
Hopper-gender: "female";
Shakespeare-first: "William";
Shakespeare-gender: "male";
Teller-first: "Edward";
Teller-gender: "male";
Bathory-first: "Elizabeth";
Bathory-gender: "female";
Borden-first: "Lizzie";
Borden-gender: "female";
Kellogg-first: "John Harvey";
Kellogg-gender: "male";
Oswald-first: "Lee Harvey";
Oswald-gender: "male";
Harrison-first: "William Henry";
Harrison-gender: "male";
Carrington-first: "Leonora";
Carrington-gender: "female";
Varo-first: "Remedios";
Varo-gender: "female";
Turing-first: "Alan";
Turing-gender: "male";
