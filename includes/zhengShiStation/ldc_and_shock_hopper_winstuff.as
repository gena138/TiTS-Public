//PC Victory
public function victoryOverShockyHoppy():void
{
	clearOutput();
	showName("\nVICTORY!");
	author("Savin");
	output("The latex-clad lieutenant stumbles back against the edge of the heart-shaped bed, panting and gasping from your confrontation. " + (enemy.lust() >= enemy.lustMax() ? "Her chest is heaving under the tattered front of her suit, ripping away the shredded rubber to reveal two full mounds of blue-furred breasts and stiff black nipples.":"She’s gasping for breath, teeth grit against the pain of defeat."));
	output("\n\n<i>“I can’t... take any more,”</i> the Hopper groans. <i>“H-hey, L.D.C., you gonna help or?”</i>");
	output("\n\nThe bunny boy reclining on the bed laughs nervously, looking between you and his lieutenant. <i>“Uh, y-yeah, maybe we could just... y’know... talk this one out, huh?”</i>");
	output("\n\nThe Hopper gives him one last reproachful scowl over her shoulder before slumping onto her knees, the last of the fight gone out of her. The black bunny, so-called L.D.C., grimaces and turns his attention to you. <i>“Okay, tough " + pc.mf("guy","bitch") + ", you’ve made your point. If you can trounce my XO, you can probably put me over your knee pretty easy too. So what’re you doing barging in here? What do you want from us; what gang are you working for?”</i>");
	output("\n\nYou " + (pc.isBimbo() ? "giggle and ":"grin and ") + "tell him that you’re here looking for a Steele Tech probe. Unless it fell into the sun, it pretty much has to be somewhere in this damn station.");
	output("\n\nThe bunny boy blinks. <i>“Y-you’re kidding, right? No, you’re not. Okay, well uh, tell ya what. I think I know what you’re talkin’ about: big black space probe, ‘bout yea big? Yeah it’s down in the cargo hold. Tell ya what, how about I give you my access codes and you can just go get it, huh? No hard feelings!”</i>");
	output("\n\nOh, really?");
	processTime(5);
	//[Take It] [Save Them] [Dom His Butt] [Fuck Hopper] [Ride Hopper]
	//[Get Worshiped] [Threesome] [Drain Bunnies]
	clearMenu();
	addButton(0,"Take It",,undefined,"Take It","");
	addButton(1,"Save Them",,undefined,"Save Them","");
	addButton(2,"Dom His Butt",,undefined,"Dom His Butt","");
	addButton(3,"Fuck Hopper",,undefined,"Fuck Hopper","");
	addButton(4,"Ride Hopper",,undefined,"Ride Hopper","");
	addButton(5,"Get Worshiped",,undefined,"Get Worshiped","");
	addButton(6,"Threesome",,undefined,"Threesome","");
	addButton(7,"Drain Bunnies",,undefined,"Drain Bunnies","");
}

//Take It
//Just take the access codes and leave the bunnies alone.
public function takeTheAccessCodesAndProbes():void
{
	clearOutput();
	author("Savin");
	flags["ZHENG_SHI_CODE"] = String(rand(10)) + String(rand(10)) + String(rand(10)) + String(rand(10));
	output("You nod, and the L.D.C. breathes a sigh of relief. <i>“Okay, okay, great. No need to get all up in arms here, look; the code’s " + flags["ZHENG_SHI_CODE"] + ". Got it? Okay, well, me and the girls will just uh, get out of your way then...”</i>");
	output("\n\nAssuming he’s telling the truth, then yeah, you got what you need. But then again, he’s talking about leaving <i>with</i> all those collared slave-girls. This might be your one and only chance to save them.");
	processTime(2);
	clearMenu();
	addButton(0,"Save Them",,undefined,"Save Them","");
	addButton(1,"Leave Them",,undefined,"Leave Them","");
}

//Leave Them
//Fuck ‘em, you just need the probe.
public function leaveThemSluts():void
{
	clearOutput();
	author("Savin");
	output("You nod again and turn to leave. A few moments after you’ve slipped out of the captain’s quarters, you hear a number of wet footfalls padding out in the corridor, quickly receding away. Well, none of your concern; you turn your attention to the cargo hold and your inheritance.");
	pc.addHard(5);
	output("\n\n");
	//9999 track ending resolution
	CombatManager.genericVictory();
}

//Save Them
//Oh no, you’re not letting him walk off with all these innocent women.
public function saveThemSluts():void
{
	clearOutput();
	author("Savin");
	output("You rest your hand on your [pc.weapon] and explain to the L.D.C. that no, he’s not just taking all those girls with him. You’re freeing his slaves here and now.");
	output("\n\n<i>“O-okay,”</i> the dark bunny says, trying to suppress a grimace. <i>“That’s cool. Uh, yeah, sure, no problem. Babe, why don’t you hit the release button?”</i>");
	output("\n\nThe Hopper groans and grabs a rod off her belt. She punches a button on it, and with a metallic <i>chunk</i>, the collars all fall off the slaves’ necks. There’s a moment of disbelief on all the girls’ faces, a few seconds of wide eyes and fingers brushing bare skin around their necks, before a cheer of glee erupts from one of them. The others join in soon after, whooping and crying and leaping out of the bed. A few of them hug you or kiss your cheeks on the way out, but every last one of them is quick to make her escape from the pirates’ bed chamber.");
	output("\n\nWhen the slowest of the slaves has left, you back out of the bedroom and close the door behind you. Time to go find your inheritance.");
	processTime(5);
	output("\n\n");
	//9999 track resolution
	CombatManager.genericVictory();
}

//[Fuck Hopper]
//Bend the blue dickbunny over and give her a good fuckin’ as punishment.
//Requires a dick or strapon.
//Savin
public function fuckTheHopper(x:int):void
{
	clearOutput();
	author("Savin");
	output("How about you give the L.D.C.’s lieutenant something <i>hard</i> to feel instead?");
	output("\n\nYou set your [pc.weapon] aside and start stripping your gear off. While the Hopper is still reeling from your " + (enemy.HP() <= 1 ? "beatdown":"lustful techniques") + ", you grab the the neon pink mohawk between her lapine ears and shove her onto her knees. Your [pc.cockOrStrapon " + x + "] falls onto her lips a second later, followed by a command to <i>“Suck it.”</i>");
	output("\n\n<i>“H-hey, come on now,”</i> the black-furred laquine grimaces. <i>“There’s no need for that.”</i>");
	output("\n\nYou just cut your gaze between him and the collared slave girls sprawled all around him. Yeah, he’s got no room to talk. You tighten your grip on the over-sexed shock-bunny and push her down your length. Her mouth opens obediently, almost slack-jawed as the first inches of your [pc.cockOrStrapon " + x + "] slide through her lips. The bucking of your [pc.hips] pushes her back against the side of the bed, wedging the Hopper between your thighs and the mattress. Some of the slave girls giggle, pawing at her with hands you’re sure have been wrapped around the Hopper’s dick plenty of times before. This time, they pinch and yank on her ears until the shock-rabbit is moaning whorishly around your cock.");
	output("\n\nYou grin down as her lengthy tongue curls around your crown, telling her she’d better get you nice and wet. Despite that, she’s mostly a passive participant in this position, an oral cocksleeve that you thrust into to your heart’s content. Before long, thick ropes of glistening saliva are matting the fur around the bunny-girl’s chin and unmistakably linking her mouth to your dick. Now that’s a pretty sight!");
	output("\n\nToo bad it’s just the appetizer.");
	output("\n\nYou step back, dragging your dick back out through her throat before reaching down and pulling her up onto the bed. Her back hits the mattress between two of the slave girls, and her dick bounces against her belly, leaving a white smear over her fur" + (enemy.HP() <= 1 ? " as the two slaves rip her bodysuit off her for you":"") + ". You grab her weighty balls in both hands, hefting the fuzzy orbs up and out of the way to reveal the dusky lips hidden underneath them. Her azure fur nearly hides them, save for the growing circle of sultry excitement emanating from the reddening folds.");
	output("\n\nNow that’s a prime target if you’ve ever seen one. You hand off the Hopper’s cock and balls to some of the slave girls, letting them hold the laquine’s equipment out of your way while you line your [pc.cockOrStrapon " + x + "] up with the entrance to her pussy.");
	output("\n\nRather than continue his half-hearted protests, the L.D.C. rolls onto his knees just above where his lieutenant’s fallen and hefts up his monstrous cock, only to flop it down right on the Hopper’s face, nestling the crown between her tits. You have half a mind to stop him, but... well, the way his dick’s been throbbing at the sight of you orally fucking his Hopper, you don’t think he’s going to last long - and if you stopped him, he’d probably just geyser all over you both!");
	output("\n\nSo you just focus on your most recent conquest, spreading her furry legs in your hands and grinding the crown of your cock against the little hooded bulb at the top of her cunt. One good is enough to make her squeal, legs struggling against your hands... and her dick almost jumps straight up before one of the slave girls catches it and pins it back down just in time for a trickle of white to leak out and mat itself in her belly fur.");
	output("\n\nOh, that’s sensitive! You tease her about the L.D.C. never having found it before, the way she leaks all over herself every time you rub the tip against her clitty... and that only seems to make her harder and wetter. The black bunny huffs, but the Hopper’s mouth working on his balls quickly hushes him. You can only see the working of her tongue through ripples in the L.D.C.’s cum-swollen balls, but she’s soon cut off by her boss thrusting the length of his dick down her throat.");
	output("\n\nNow that’s an example worth following. As soon as you see what the pirate boss is up to, you follow suit, letting the bottom of one thrust against the Hopper’s clit carry you straight back in between her pussylips. You’re rewarded by a shriek, muffled by her mouthful of dick, and then you’re sinking into the silken chasm of her quim.");
	if(x >= 0) pc.cockChange();
	processTime(20);
	pc.lust(50);
	clearMenu();
	addButton(0,"Next",fuckTheHopper2,x);
}

public function fuckTheHopper2(x:int):void
{
	clearOutput();
	author("Savin");
	output("The Hopper isn’t tight - there’s no way she would be, close as she is to the L.D.C. and his mammoth dick - but damned if she doesn’t clench down hard as you ease yourself home. ");
	//Victory by Lust: 
	if(enemy.lust() >= enemy.lustMax()) output("You aren’t halfway buried in the Hopper by the time her dick shoots a thick stream of white across her chest, splattering her tits with pearly white.");
	else output("Her dick throbs too, leaking watery white pre across her belly as her body accepts your victorious dick.");
	output(" The sight just gives you motivation to keep going, driving yourself " + (pc.balls > 0 ? "ball":"") + (pc.balls > 1 ? "s":"") + (pc.balls > 0 ? "-":"") + "deep into the Hopper’s gaping pussy.");
	output("\n\nSome of the slave-girls titter, delighted by seeing their former mistress getting what she deserves - and watching her cream herself from pleasure in the process. A few slender hands grope and squeeze her balls, keeping them pinned against her thighs and belly and out of your way. They’re clearly well trained, and eager to turn that training against their captors given half a chance. Good girls!");
	output("\n\nAll you have to do is concentrate on pounding that sweet laquine pussy. The sheer wetness of her snatch makes the job all too easy, and her muffled cries of pleasure urge you to keep ramping up the force of your fucking. Pussyjuice squirts out around your [pc.cockOrStrapon " + x + "] with every thrust, mirroring the growing lake of bunny-cream spreading across the Hopper’s belly and breasts. God, this blue bunny’s getting soaked!");
	output("\n\nYou lean in, planting your hands " + (pc.isTaur() ? "and forelegs ":"") + "on the bed around the Hopper, letting the angle bring you in deeper and harder. ");
	var longy:Number = 9;
	if(x >= 0) longy = pc.cocks[x].cLength();
	//PC has a big dick: 
	if(longy >= 18) output("You watch with a smile as the Hopper’s belly bulges around the sheer mass of your monstrous cock, her body distending to accept your breeder’s pole.");
	else if(longy < 6) output("You know you don’t have much to work with, certainly compared to the two hyper laquines, but damned if you aren’t making the most of what your momma gave you. Lucky you, her clit’s easy to rub on even from the inside!");
	else output("You might be pitching your hot dog down a veritable hallway here, but that doesn’t seem to be hampering the Hopper at all - or you, thanks to the way her slick walls ripple all around with with the throbbing of her cock.");

	output("\n\nJust as you’re really getting into it, you hear the L.D.C. grunt, and then the Hopper’s back goes rigid. Doesn’t take a genius to figure out what’s happening, what with his dick throbbing and balls clenching... and then the Hopper’s stomach starts positively <i>swelling</i> with the sudden deluge pouring down her throat. She groans, dick wobbling helplessly in the slave girls’ hands while her boss feeds her what must be a gallon of pent-up laquine seed.");
	output("\n\nThe Hopper’s body jiggles with pregnant weight, and her pussy clenches hard around your [pc.cockOrStrapon " + x + "] while her dick finally erupts in a shower of her own cream. Guess there was too much coming in to keep it all in! Hey, that gives you an idea...");
	output("\n\nYou take the reins on her dick from the slave girls, angling it up towards the L.D.C. He has just enough time to recoil before the first arcs of steamy white cum marr his coal-hued fur.");
	output("\n\n<i>“Argh, fuck! Not cool!”</i> the Jumper boss howls, waving his arms to ward off the next cum-blasts. Too bad for him. You keep the Hopper’s hose aimed right at the L.D.C.’s face, turning them into a veritable orgasmic ouroboros - one that you’re very near to adding to, yourself. You can feel that urgent, nagging pressure welling inside you, that incessant need to release the content of your [pc.balls] deep inside this evil slut.");
	output("\n\nAfter all the slaves she and her boytoy here have abused, she certainly deserves a taste of Steele-brand justice" +  (x >= 0 ? " delivered directly to her womb":"") + ".");
	output("\n\nA few more thrusts and you feel ready to burst. You grip the Hopper’s furry thighs, using them as leverage to slam yourself ");
	if(pc.balls > 0) output("ball" + (pc.balls > 1 ? "s":""));
	else if(x >= 0 && pc.hasKnot(x)) output("knot");
	else output("hilt");
	output("-deep into the bloated bunny’s cunny. A moment later and you’re over the edge, ");
	//hardlight: 
	if(x < 0) output("hammered in all the right places by a discharge of neurons. The hardlight strapon around your nethers transmits all the feeling of a hard-won orgasm right to your brain, making you howl with pleasure.");
	//Small cum vol.:
	else if(pc.cumQ() < 200) output("drooling your wad into the cavernous channel of the Hopper’s abused cunt. You’re not sure she even noticed, given the absolute flood already sloshing in her stomach.");
	//med. cum vol.: 
	else if(pc.cumQ() < 1000) output("shooting your goo straight down the gaping chasm of the Hopper’s horsecock-molded cunt. She gasps, moaning forcefully enough to send a streak of pearly spunk drooling down her chin while the L.D.C.’s still hilted down her throat. Jeez, how’s she even breathing around that thing?");
	else if(pc.cumQ() < 25000) output("slamming your hips against the Hopper’s and emptying your [pc.balls] into her. Geysers of [pc.cum] lurch from deep inside you, shooting through throbbing dickflesh and filling her belly with steaming seed. Her belly, already gravid with the L.D.C.’s load, swells to a positively pregnant size as your inhuman orgasm goes on and on.");
	else output("[pc.cock " + x + "] erupting in a torrential deluge of [pc.cum]. Spooge flows in an unending tidal wave, swelling the Hopper’s already cum-stuffed belly. Her gut stretches, trying to make room for the sheer volume of your orgasm" + (!pc.hasKnot(x) ? " even as half of it squirts back around your dick":"") + ". Halfway through your nut, it gets so bad that the Hopper gags on the L.D.C.’s cock and chokes out a waterfall of his cum, making room for your much bigger wad.");
	output("\n\nWhen the mind-blanking climax finally passes by you, you pull out and stumble back against the bulkhead, surveying a bed and two bunnies utterly drenched in three orgasms’ worth of spooge. That’s what they deserve for all of... all of this piracy and slavery all bundled up together around your stolen probe. Speaking of which, you grab the Hopper’s belt device off the floor, click the button, and tell the slaves to get going while the getting’s good.");
	output("\n\nYou’ve got a probe to go find.");
	processTime(30);
	pc.orgasm();
	enemy.loadInCunt(pc,x);
	output("\n\n");
	//9999 track resolution, slaves freed.
	CombatManager.genericVictory();
}

//[Ride Hopper]
// Tooltip: Hop on that pillar of bunny mean and show the L.D.C. how to <i>really</i> pleasure an oversexed futa slut like the Hopper.
public function rideHopperSlut(x:int):void
{
	clearOutput();
	author("Savin");
	output("You know, you could just take the bunny baron’s code and go, but... where would the fun be in that, exactly? You’ve got no illusions that if things had gone another way, you’d be lucky to only be collared and forced into their fuck-slut harem. You figure you’ve got every right to take advantage of the Hopper’s reeling state. You " + (enemy.lust() >= enemy.lustMax() ? "grab the tattered remains of her jumpsuit and rip them away, letting her weighty tits fall into your hands":"shove the over-endowed bunny back and grab the front of her rubber jump suit, yanking its zipper down hard enough to make her furry tits bounce out into your hands") + ". She gasps, a whine trilling in her throat while her equine-like erection sways towards you, rubbing against a thigh.");
	output("\n\n<i>“H-hey, that’s my job,”</i> the L.D.C. huffs, watching helplessly as you take his lieutenant in your arms. You grab her cock in one hand, stroking it slowly from sheath to medial, while a hand plays its way across her breasts. You push her, slowly at first, then forcefully backwards. She goes tumbling onto the bed hard enough to knock the wind out of her, and the second she lands, the once-submissive harem sluts dive on her with a lustful furor. Hands grab at her tits and ears, pulling and tweaking until the Hopper’s squealing and her cock is throbbing hard.");
	output("\n\nThe pillar of lapine horse-meat wobbles under its own weight, swaying unsteadily as you mount the bed after her. You shuck your gear and sit your [pc.butt] directly on the Hopper’s belly, rubbing your cheeks back against her stiffening tool until you’re satisfied that it’s as stiff as it’s going to get. For your part, you’re " + (pc.hasVagina() ? "as wet as can be, soaking with anticipation. It’s not every day you get to sample equine majesty of this sheer size while its owner is a submissive mess of overstimulation between your thighs.":"burning with desire. Your [pc.asshole] opens with a force of will, parting its perpetual clenched as it presses against the haft of the Hopper’s cock.") + " Slowly, savoring every moment of it, you shift your weight up so that the blunt, flared breeching end of her oversized dick is pressing into the waiting " + (x >= 0 ? "lips":"ring") + " of your [pc.vagOrAss " + x + "].");
	output("\n\nYou lock eyes with the L.D.C. and give him a wink as you spear yourself on his lieutenant’s member, gasping with pleasure as your [pc.vagOrAss " + x + "] is stretched open by the Hopper’s huge member.");
	if(x < 0) pc.buttChange(enemy.cockVolume(0));
	else pc.cuntChange(x,enemy.cockVolume(0));
	output("\n\n<i>“Ohh, fuck! You’re so ");
	var loosie:Number = pc.ass.looseness();
	if(x >= 0) loosie = pc.vaginas[x].looseness();
	if(loosie < 3) output("tight");
	else if(loosie < 5) output("perfect");
	else output("loose");
	output("!”</i> the electro-bunny moans, biting her lip. Her hands wander to your hips, trying to pull you down, but some of the slave girls surrounding her decide that after who knows how long of helplessness, it’s time to show the Hopper to get a taste of her own medicine. They grab her wrists and pin them down around her shoulders, leaving you free to decide your own pace without interference from your defeated foe.");
	output("\n\n<i>“That’s more like it,”</i> you grin, giving the slave-girls an appreciative nod. They titter and grin, hunger in their eyes - not necessarily for sex (though there are plenty of stiff nipples and wet cunts on display), but for the show you’re about to put on for their benefit.");
	output("\n\n... And they’re not your only audience. The L.D.C. is still sat right where you left him at the head of the bed, eyes wide and massive dick turgid with voyeuristic glee. Despite what his dick’s telling you, he looks positively crestfallen watching you slowly start to slide down the stiff shaft of his subordinate’s schlong.");
	output("\n\nMaybe he’s just feeling left out!");

	//PC has a cock, 6+ inches
	var y:int = -1;
	if(pc.hasCock()) y = pc.cockThatFits(enemy.analCapacity(0));
	if(y >= 0)
	{
		if(pc.cocks[y].cLength() < 6) y = -1;
	}
	if(y >= 0)
	{
		output("\n\nWell, you can sure help him feel what you’re feeling. You reach over and grab the L.D.C.’s hips, yanking the laquine twink over and shoving his face down into the Hopper’s bosoms. He squeals and squirms, thrashing around in a way that makes the bigger bunny’s tits quake and sets his plush, furry ass to wiggling oh-so-enticingly. That’s more like it.");
		output("\n\nTime to get him in on the action - and punish this wayward bunny the best way you know how. You wrap your hands around your [pc.cock " + y + "] and press the crown into the fluffy crevasse between the L.D.C.’s cheeks, letting him feel the pressure rubbing on his pucker.");
		output("\n\n<i>“W-wait a second,”</i> he gasps, sputtering into the Hopper’s rack. <i>“Look I’m sorry about whatever and shit but don’t-”</i>");
		output("\n\nHis voice transitions to a wordless screech as you thrust your [pc.hips] forward, shoving your [pc.cock " + y + "] directly into the L.D.C.’s tailhole. His little bunny tail shoots straight out behind him, and his mammoth cock squirts all over the Hopper’s belly.");
		pc.cockChange();
	}
	else
	{
		output("\n\nYou cast a quick glance over the collection of sexed-up slave girls, and alight on the ideal partner for the bunny twink: there’s a bubbly kaithrit girl lounging on the bedside, idly stroking a sizable canid cock that’s already leaking and eager to be called to action. " + (9999Been to NT ? "Between her leaking faucet and a pair of pearly handlebars growing from her brow, it’s a safe assumption to say she’s a Treated gal. Maybe even one of the elusive cum-cows!":"") + " <i>Perfect</i>.");
		output("\n\nYou crook a finger and beckon her over. She’s as compliant as can be after her time in the bunny harem, but when you tell her just where you need her sexual services, she’s all eager smiles and stiff erection. With her simple instructions installed, you reach down and grab the L.D.C. off his pillows and pull him over face-down on top of the Hopper. He squeals and squirms, but in his hyper-aroused state, there’s not much he can do but submit when his face is pressed into the lieutenant’s tits and his ass is hiked in the air. You lean back, taking the Hopper’s dick a few inches deeper in the process, and make room for your kitty-cow compatriot to snuggle in between your [pc.hips] and the pirate’s plush, fuzzy behind.");
		output("\n\n<i>“W-wait,”</i> the L.D.C. mumbles, spitting up chest fur. <i>“This ain’t how it’s supposed to-”</i>");
		output("\n\n<i>“Go!”</i> you command, giving the cum-drooling cat a slap on the ass. She hoots with glee and thrusts forward into the defenseless boy’s puckered hole. You’re rewarded with a shrill screech, and then the resounding slap of flesh on flesh.");
		output("\n\nThis cat’s pretty good for a proxy dick!");
	}
	processTime(30);
	pc.lust(50);
	clearMenu();
	addButton(0,"Next",rideHopperSlut,[x,y]);
}
public function rideHopperSlut(args:Array):void
{
	clearOutput();
	author("Savin");
	var x:int = args[0];
	var y:int = args[1];
	output("Now that the L.D.C.’s properly plugged, you’re free to return your concentration to what’s really important here: the thick horse dick spearing your [pc.vagOrAss " + x + "]. You let loose a little sigh of contentment as you resume your downward course. It’s a positively electric sensation, feeling that thick pole slide deeper and deeper inside you. Every couple of inches and the Hopper’s member spasms, swelling and leaking pre before your muscles compact it back down and you’re able to wiggle down a little further.");
	output("\n\nIt feels like an eternity of bliss before you finally nestle your [pc.butt] against the laquine’s thighs. Your stomach is bulging around the sheer mass of bunny-dick sitting inside your [pc.vagOrAss " + x + "], giving you such a wonderful stretch that it’s hard to breathe. You grip the L.D.C.’s butt and use it as leverage to push yourself back up, dragging that veiny cock right back out until the medial ring is nestled in your " + (x >= 0 ? "lips":"ring") + ", still just deep enough to give your stomach a nice paunch, before letting gravity slowly sink you back the way you came.");
	if(y >= 0)
	{
		output("\n\nEvery bounce makes your [pc.cock " + y + "] wiggle inside the L.D.C.’s tight boypussy, thrusting a little deeper until your [pc.knot " + y + "] is pressing against his tight hole.");
	}
	else output("\n\nEvery time you move, the futa kitty in your lap thrusts a little deeper in the L.D.C., letting you guide just how hard she fucks the pirate lord’s poor behind.");
	output(" The dusky bunny squeals in protest, but you watch with a smirk as his oversized breeding pole squirts with every thrust, covering the Hopper’s chest in musky cream. Thick rivers of spooge bubble up from between her breasts, right up until one of the rowdier slave-girls in the harem grabs the Hopper’s head and forces it forwards. The shock-bunny’s lips curl around her lover’s crown, arresting the flood of pre by guzzling it all down.");
	output("\n\nYou start moving a little faster now, enjoying the fruits of your victory and the shameful submission of the entwined fuckbunnies. The crowd titters and jeers, groping at fluffy butts and tits while you enjoy your victory lap.");
	output("\n\nAll good things must come to an end, though, and you can feel the Hopper already getting close to climax. Her dick pulsates with need, swelling inside you and ready to discharge its creamy load. With a harsh pinch of a nipple, you bid her to wait; no cumming unless you say so.");
	output("\n\nThat just has the opposite effect. The Hopper’s body goes rigid a moment, following by a whimper of pleasure and a sudden rush of warmth shooting into your [vagOrAss " + x + "]. Damn it, woman. You twist her nipple harder as punishment, but you can’t deny how good it feels to be filled by all that virile bunny-spunk. But you’re not quite done... not yet.");
	output("\n\nYou dig your fingers into the pirate leader’s ass and push up, ridding that thick bunny-cock even faster than before. And she’s so damn sensitive now, over-stimulated in the tail-end of her orgasm, that she’s whimpering and squirming under you by the end of the first bounce. More movement milks more spunk from her clenching balls, swelling your " + (x >= 0 && !pc.isPregnant(x) ? "womb":"stomach") + " with cum. At the same time, you shift your attention to her commander and the dick wedged in his tight little hole. You " + (y >= 0 ? "thrust yourself deep in, probing for the sensitive ass-clit hidden in there. It doesn’t take long to find it, and when you do, you’re greeted by a howl of pleasure that echoes through the captain’s quarters.":"urge the futa cat to thrust deeper, to find the most tender places hidden away in the bunny’s butt. She’s eager to please - you and the L.D.C. both! Her hips buck and wiggle, probing around until she finally hits on that sweet little ass-clit hard enough to make the black bunny scream.") + " And stars does he cum from it.");
	output("\n\nThe Hopper is blown straight off his cock by the first geyser, plastered on the blankets by a wad of white cream, and then the rest is flooding through her fur in great gouts of steaming seed. Watching that degenerate show is just the last little bit of stimulation to push you over the edge. Your breath catches, loins tightening as your [pc.vagOrAss " + x + "] squeezes hard around the Hopper’s thick dong" + (y >= 0 ? "; your [pc.cock " + y + "] pushes deep before release, busting your nut hard into the dusky bun’s behind. He shudders, still leaking from his own orgasm, limply allowing you to fill him as his lieutenant did to you":"") + ".");
	output("\n\nThe cascade of spooge, flowing from body to body, lasts for a good long while before you’ve finally taken the whole of the Hopper’s load. When she’s finally finished, you roll heavily off her and onto your side, shivering with pleasure as white cream leaks down your thighs. The two bunnies are two busy humping at each other once you’re gone to pay you any mind as you slowly clean yourself up and grab the slave baton from the Hopper’s sundered uniform. One tap and the harem sluts are free to exact their sexual vengeance on the Jumper leadership while you get ready to go find your inheritance.");
	processTime(30);
	//9999 track outcome and slavegrill freeing
	pc.orgasm();
	if(x >= 0) pc.loadInCunt(enemy,x);
	else pc.loadInAss(x);
	output("\n\n");
	CombatManager.genericVictory();
}

//[Dom His Butt]
// Tooltip: Give the bunny-boy a taste of his own medicine before anything else.
// Tooltip, no dick: You can’t pound his ass without a penis of some kind!
// Requires Penis/Strapon
// Supports all body-types.
// William
public function domTheLDCsAss(x:int):void
{
	clearOutput();
	author("William");
	output((pc.hasKnees() && pc.legCount == 2 ? "Putting him over your knee sounds like a wonderful idea.":"The dusky laquine is the master to his commander, is he? Well then. You don’t have a knee to bend him over, but you’ll figure it out.") + " You don’t intend on claiming your prize <i>just yet</i>, not when that dick-burdened boytoy looks like he needs a good, <b>hard</b> lesson.");
	output("\n\nYou discard your [pc.weapon] to the corner" +  (!pc.isCrotchExposed() ? " and strip yourself down to refreshing nakedness":"") + ", rolling your arms and stretching your [pc.legOrLegs] like you’re bracing for a hundred-meter dash. The way in which you do all of this has the harem girls swooning at what’s on display, the pastel Hopper chewing her moist lip and the inky bunny shuffling nervously on the bed. " + (pc.tone >= 70 ? "Your well-defined body catches a few lustful eyes, though y":"Y") + "our [pc.cockOrStraponFull " +  x + "] is the real attraction, its " + (x >= 0 ? "[pc.cockType " + x + "]":"hardlight") + " shape thrumming in raw, ready tumescence. You [pc.walk] forward, [pc.eyes] locked on the Jumper’s helpless boss.");
	output("\n\n<i>“Woah, hey uh, what are you doing? T-there’s no need for, I mean there’s plenty of others here! Take your pick!”</i> Frantic words tumble out of his mouth; the " + (enemy.HP() <= 1 ? "beaten":"debilitatingly aroused") + " " + (silly ? "energizer":"shock") + " bunny whimpers and lurches in your direction.");
	// PC not taur
	if(!pc.isTaur()) 
	{
		output("\n\nYou hop on the large bed, fabric crimping and folding in your crawl towards the once-relaxed bunny-boy. The multiracial slaves part like stage curtains to let you past, giggling or slapping the petite boss’s legs encouragingly until you’re face-to-face with your prize. You ");
		if(pc.isBimbo()) output("giggle");
		else if(pc.isBro()) output("chuckle");
		else output("grin");
		output(" when his breath catches, when he realizes how much control <i>you</i> now have. You take one of Zheng Shi’s captains by his tiny shoulders and flip him around, dragging him closer to your lap until he’s propped " + (pc.legCount == 2 && pc.hasKnees() ? "over your knee":"up on all fours") + ".");
		output("\n\nBesides, it’s not like he could run with that hunk of expanding manmeat weighing him down.");
	}
	else
	{
		// PC taur
		output("\n\nThe bed loudly creaks in protest to your imposing and exotic form trodding atop it. The multiracial slaves part like stage curtains as you near the once-relaxed bunny boy, giggling or slapping his plump legs encouragingly. You step over him, ");
		if(pc.isBimbo()) output("giggling");
		else if(pc.isBro()) output("chuckling");
		else output("grinning");
		output(" when his breath catches as you grab him by his tiny shoulders. You can’t quite bend the diminutive pirate lord over your knees like this, but he’s in no position to resist.");
		output("\n\nBesides, it’s not like he could run with that hunk of expanding manmeat weighing him down.");
	}
	// Merge
	output("\n\nIt’s trivial to manhandle that shimmering ass of fuzz and cottontail into the air and bury his lapine muzzle into the sex-scented sheets. Quite frankly you’re wondering if this smug bun has a bit of a sub streak... the way his equine club engorges, the way it throbs powerfully enough to vibrate the bed; his nuts, two hand-smothering cantaloupes of sloshing laquine seed churn out bubbling gushes of pre, wads half the size of his lipstick-marked spunk-tanks. <i>“D-dammit, get off me, asshole!”</i>");
	output("\n\nThe girls nearby bend their animalistic ears to appreciate their master’s mewling, humming contently when he yelps or moans. The sounds only ");
	if(pc.isHerm()) output("shunt more blood and heat to your [pc.cocks] and [pc.pussies], your mixed genitals radiating a warmth you’ll want to share soon");
	else if(pc.hasVagina()) output("make your [pc.pussies] flex eagerly, inner walls clenching close enough to touch needily");
	else if(pc.hasCock()) 
	{
		output("strains your [pc.cocks]; [pc.cumColor] ");
		if(pc.cumQ() < 100) output("strings");
		else if(pc.cuQ() < 5000) output("spurts");
		else output("streams");
		output(" of preseed ooze onto the dirty bed");
	}
	else output("make you hornier");
	output(".");
	output("\n\n");
	if(pc.isBimbo()) output("<i>“A’ight, we, like, talked it out so it’s time for some fun!”</i> you sing, unable to avoid sinking a few fingers into his fuzzy sack before planting a hand on his plump butt.");
	else if(pc.isBro()) output("<i>“We talked it out, so it’s time to seal the deal,”</i> you smile, squeezing his fuzzy sack before gripping his plump butt.");
	else if(pc.isNice())  output("You run a hand over each plump butt cheek, laughing to yourself. <i>“We talked, and I’ve decided you need a lesson. Then our negotiations will conclude.”</i>");
	else if(pc.isMischievous()) output("<i>“Hard to believe the big man on this rock was actually a little man who, by the looks of it,”</i> you rub a hand over his plump butt, <i>“needs his little ass pounded.”</i>");
	else output("<i>“Just like the rest of your crew,”</i> you grunt, running a heavy hand across his plump ass cheeks, gripping hard enough to make him squeak. <i>“A slut. But one that needs a good stretching himself to really... <b>fit</b> the role.”</i>");
	processTime(10);
	pc.lust(30);
	clearMenu();
	addButton(0,"Next",domTheLDCsAss2,x);
}

public function domTheLDCsAss2(x:int):void
{
	clearOutput();
	author("William");
	output("One [pc.hand] bends into the air with enough liquidity that your rapt audience would be forgiven for thinking you’re a puppet on a string. They’re reminded that the only fuckpuppet here is the one squeaking after your hand rebounds off his dark-furred ass. <i>“Ow! The hell is this for!?”</i> he exclaims. <i>“If you wanted a fuck just get it over with, " + pc.mf("dick","slut") + "!”</i> One of the girls leans in to pinch on her debased master’s floppy ears. The laquine-leader bites down on the sheets with a whimper, his supple body rippling and rattling in the aftermath of your dominant touch.");
	output("\n\n<i>“S-stop that-”</i> the enforcer-bun crawls up on the bed only to be pushed down on the comfy mattress by three well-endowed girls. They pin and molest the Hopper thoroughly, ignoring the hard and still-swelling horse-boner between her legs. When that pink shaft reaches full mast, it twitches so hard it looks like it’s trying to fuck the ass of its straddler." + (enemy.lust() >= enemy.lustMax() ? " And it does, in a way. A lasso of white shoots into the air and lands square in the groove of that collared ausar’s derriere, those massive melons for nuts already brewing up a fatter load to follow it.":""));
	output("\n\nLeporine musk aerosolizes and blankets the bedroom, a visible fog of alien horniness thickening on every strike. It does its part to get you ready for leaving your mark in a better way than smacking and smacking away at a quivering butt - which, really, is kind of fun when you think about who he is, what you went through to get here. The big bad pirate ‘king’ of Zheng Shi has his reddening rear in the air and he’s making no attempt to draw it away. <i>“If you keep this up I’m gonna break your ass in-”</i> <b>Slap!</b> <i>“S-shit!”</i>");
	output("\n\nTraces of pleasure color the space between his reactive wails; the <i>claps</i> of [pc.skinFurScalesNoun] against fur strike like a whip crack. <i>“Shit! Get on with it would- Ugh!”</i> Yeah, you’ll get to the sex alright, you’re just giving him fair warning of what to expect. <i>“F-fuck, would you... Would just- Ouch! You fucker!”</i> The too-sadistic tug on L.D.C.’s ears probably didn’t help his train of thought. You shoo the buxom kaithrit away, putting an end to her fun for now while glancing to the domme-rabbit behind you.");
	output("\n\nThe once insuperable XO squirms and reaches out to you, her tiny rabbit paw looking much less threatening without a lightning gun in it. Those arms are pressed down while a sexy slave scythes the side-shaved bun’s head and spears her hot, juicy cunt on the mistress’ parched muzzle. With a face full of bare, glistening twat, the big-balled bunny-bitch’s convulses and surrenders to that dripping crease, lamely licking and suckling at it like a trained whore herself.");
	output("\n\nThe collective body heat and carnal stimulation in the air alone is enough to wring sweat from your brow.");
	output("\n\nSatisfied with your warmup, you knead the dark bunny’s jiggly butt and slide towards his asshole, the sphincter tensing and relaxing. You look around to see his monstrous endowment spurting steaming pre up to his lips, bathing him in his own supply of sense-muffling libido. It’s no wonder how he keeps that blue-bun in line, his musk has a potent effect even from this position, to say nothing of the size. It’s as thick as a log!");
	output("\n\nIf any of the slaves were interested, they could make him blow himself. Might not be a bad idea, actually...");
	var longii:Number = 9;
	if(x >= 0) longii = pc.cocks[x].cLength();
	if(!pc.isTaur())
	{
		// PC not taur
		if(pc.legCount == 2 && pc.hasKnees()) output("\n\nYou slide the sissy-boy off your knee, ");
		else output("\n\nYou ");
		output("grip his hips" + (pc.legCount == 2 && pc.hasKnees() ? ",":"") + " and pull him into your crotch; you grind your [pc.cockOrStraponFull " + x + "] between his cheeks, thrusting once in a spike of selfish desire. The way his fur massages your cum-vein is exquisite enough to make you swell to familiar capacity, but that pink-rimmed butthole is aching for a plowing, and that’s just what you’re going to do to it. You reach over - not under - to get at his twin-ringed horse cock. Your fingers brush against the flat head of his equine endowment, coming away with the warm, viscous bunny-lube necessary to make that entrance pleasurable for you.");
		output("\n\n<i>“N-no fucking way, that’s what you were... You skank! I’ll get you for this one way or the other, you will regret... ahh...”</i> Threats turn to moans as your fingers glide easily through his ass, the vulnerable flesh loosening up surprisingly well. ");
		if(longii < 7) output("<i>“Not like I’ll feel whatever <b>that</b> is you’ve got!”</i> he laughs defiantly. His taunts mean nothing with his ass spread right in front of you" + (x >= 0 ? ", fur matting under the dribbles of pre falling from your [pc.cockHeadNoun]":"") + ".");
		else if(longii < 13) output("<i>“You think you’re big? Why don’t you turn me over, I’ll make you my new lieutenant, easily!”</i> He stumbles all over his threat unable to hide just how arousing he finds all this." + (x >= 0 ? " His pitch heightens as pre dribbles onto his butt.":""));
		else output("<i>“Y-you think I’m scared of a dick like that? You won’t make me your bitch. Turn me over though, I’ll show <b>you</b> how to keep a bitch in line.”</i> You can only grin" + (x >= 0 ? " as pre dribbles onto his butt":"") + ".");
		output("\n\nYou heft");
	}
	// PC taur
	else
	{
		//fix parsers for hardlight
		output("\n\nYou pull the bitch-boy back and stand again, the bed depressing just to handle all the weight you’re putting on it. The slave girls not preoccupied with the electro-slut anxiously crowd under you, whispering and murmuring that they’ll help you make the most of this. Several pairs of hands roam the pulsating length of your " + (x < 0 ? "glow-cock":"[pc.cocks]") + ", tracing the " + (x < 0 ? "veins on your [pc.cockType " + x + "]":"artificially rendered veins on your hardlight") + " shaft while pointing it at the pink-rimmed butthole that’s just aching for a plowing." + (pc.balls > 0 ? " A few pairs of lips end up on your [pc.sack], expertly smooching the roiling contents of your virile pouch and pumping out another few persuasive globs of preseed.":""));
		output("\n\n<i>“N-no fucking way, you can’t be... You fucking skank! You’ll pay for this one day, you’ll regret-”</i> another slap to his very sore ass silences him. The naked pleasure-girls wipe up his dick-drool" + (x >= 0 ? " and some of yours":"") + ", giddily smearing his pucker under your belly. <i>“F-fuuuuck, this is...!”</i> L.D.C. whines when his anus is audibly stretched and your " + (x < 0 ? "projected crown":"[pc.cockHead " + x + "]") + " is brought straight to the well-lubed ring.");
		output("\n\nThe slaves heft");

	}
	// Merge
	output(" your " + (x < 0 ? "faux-":"") + "dick and let the ");
	if(longii > 12 && longii < 30) output("mammoth ");
	else if(longii >= 30) output("crushing ");
	output("weight of your " + (x < 0 ? "holographic ":"") + "cockflesh fall on his ass. It’s the last non-verbal suggestion he’s going to get. " + (!pc.isTaur() ? "You align":"The girls align") + " your crown with his hole and you simultaneously put force to your [pc.hips], pressing the [pc.cockOrStraponHead " + x + "] to the horse-bunny’s tantalizing entrance.");
	output("\n\nThe force, the intense pressure, and <i>the loudness</i> of his asshole popping nearly makes you cum.");
	if(x >= 0) pc.cockChange();
	output("\n\n<i>“Fu... Fuck!!”</i> the bunny boss squeaks, a strand of cum plastering his lips, another ultra-thick cord whirling past his upjerked chin and barely open eyes. Goo-webbed blankets are tugged and nude bodies slide. You burden his distending asshole with more of your raging " + (x < 0 ? "faux-cock":"[pc.cockNoun " + x + "]") + ", pumping your [pc.cockOrStraponFull " + x + "] further into his wet cavern until it seems like his entire body tightens around it. The gyrations of your waist press the slick, hard tip into sensitive clusters that have him lurching forward involuntarily, changing the color of his puddled place on the sheets from chalky to milky.");
	if((x >= 0 && pc.cockTotal() > 2) || (x < 0 && pc.hasCocks())) output(" Your extra shafts slide over his wobbling rump, painting his curves with cock-juice that his fur soaks up like a sponge worth its price.");
	else if((x >= 0 && pc.cockTotal() > 1) || (x < 0 && pc.hasCock())) output(" Your extra shaft slides over his wobbling rump, painting his curves with cock-juice that his fur soaks up like a sponge worth its price.");
	output("\n\nCute ‘oohs’ and ‘ahhs’ follow your inaugural movements" + (!pc.isTaur() ? ", the voices raising when you grab the twink-slut’s hips":", the voices raising when you clench your fists and plant your many feet"));
	output(". <i>“T-that’s big" + (longii < 7 ? " enough":"") + ", oh fuck me...”</i> he mutters in a mix of apprehension and curiosity.");
	output("\n\n<i>“That’s the plan,”</i> you say. <i>“");
	if(pc.isAmazon() || pc.isHard()) output("You’re gonna be wailing to the room how much you love being a sissy in his place.");
	else output("You can’t hide how much you love it, making a mess like that. Don’t hold your voice back!");
	output("”</i>");
	output("\n\nThe gratifying buzz of dominance equalizes your ever-nearing orgasm. The first outstroke is a piercing excess. His lean hips and muscles squeeze around your phallus like a vice; another few streamers of laquine spooge shoot past his thrown-back head: <i>“Ach, shit! You b-b-" + pc.mf("bastard","bitch") + "!”</i> Even the slowest and most frictious movements make him fire, you’re noticing. You twist, he twists, his giddy cock churns out a shot of nut-butter.");
	output("\n\nThe realization strains your jaw into the widest smile in the universe: your [pc.cockOrStrapon " + x + "] is the pick to his guitar strings. You hammer the fuck boy’s hole, spreading it to the limits of your bowing girth");
	if(x >= 0 && pc.hasKnot(x)) output(", grinding your [pc.knot " + x + "] to his hole");
	output(". ");
	if(longii >= 15) output("The sheer amount of dick you’ve forced him to take is evident in the " + (longii >= 20 ? "huge ":"") + "bulge against his flat tummy.");
	output(" The slaves laugh gleefully, telling you to hit ‘em harder. Who are you to deny them that?" + (pc.balls > 1 && pc.isHard() ? " You pull back and slap so hard that your balls clap right off his own, rebounding to sink into his overfull sack and engulf the fingers of the sluts surrounding you":"") + ".");
	// PC suula dick / aphrodisiac genitalia
	if(x >= 0 && pc.cocks[x].hasFlag(GLOBAL.FLAG_APHRODISIAC_LACED)) output("\n\nThe venom-bearing stingers lining the [pc.cockHead " + x + "] of your lust-bearing rod make sure that the subby, hip-jerking bunny is enjoying this, and will be enjoying this hours afterward. You feel every sting of those waving tendrils against his rectal walls, his small body flailing and thumping in the aftershock. The veins around his vibrating prong bulge so obscenely they look like they’re about to explode. His urethra is more dribble-happy than before, which is a shock considering the size of his rubbery spunk-tube - it’s not just dribbling like a hydrant, it’s rushing like a river now!");
	// Merge
	output("\n\nLurid slurps have you checking over his shoulder. The formerly cocksure L.D.C. is sucking himself off, lamely rolling a thick tongue all over the wide, mouth-stretching tip of his chocolate tool. It makes you wonder if he’s trying to distract himself from being your cock holster, or he’s just decided to make it better for himself." + (pc.isBimbo() ? " You can’t blame him for that! Dick always tastes great!":""));
	output("\n\nNoticing this, another slave grips both upright ears between her hands and forces him down on his dick, handling them like she would a lever. L.D.C.’s fat, cumbersome maleness doesn’t care where the action comes from, happy to reward its master with a nice, thick spurt of goo. Faint squeals leave you wondering if the freshest taste his nuts brewed up is to his liking or not. You’re giving him plenty more to think about with each harsh, pressuring draw of your [pc.hips].");
	output("\n\nKnowing there’s a little thing between the black and blue slut-buns, you turn your head to see the Hopper now on her side, bodysuit torn off, eating pussy and sucking clit like a champ; her horny pink eyes drift towards you occasionally, filled with too many emotions to identify. You tell the sweet thing on her face to move. She shifts obligingly, giving you a little show. All that matters is the zap-rabbit has a better view of how you’re wearing her captain like a sheathe.");
	// PC cunt tail
	if(pc.hasCuntTail()) 
	{
		output("\n\nYour tail’s parasitic passions stir when it senses that bitch-inflating rod of equine delight, squirming unloved, unattended, begging for any kind of interaction above the monstrous ballsack powering it. It " + (pc.isAss() ? "pleases":"satisfies") + " you on a higher level that you’re holstered in her little lover and there’s nothing she can do about it but get drained by the cum-hungry alien organism snaking towards its conquest.");
		output("\n\nJoy arcs through your spine like the bouncing of firework sparks. Your irrepressible partner spreads its squishy, slime-drooling lips and inhales the Hopper’s flaring tip. A storm of pleasure cyclones up your spine, corkscrewing around every vertebrae; your [pc.cuntTail] sucks her cock to the base, fully intent on draining those fuzzy nuts and sharing its happiness with you in doing so.");
	}
	// PC cock tail (and tentacle dicks in general? Back tentacles? Also, add on to cunt tail)
	if(pc.hasCockTail())
	{
		output("\n\n");
		if(pc.hasCuntTail()) output("It’s not just your cunt tail getting in on the action, your arboreal appendage" + (pc.tailCount > 1 ? "s also want":" also wants") + " to play.");
		output(" You will your " + (pc.tailCount > 1 ? "one ":"") + "verdant cocktail to the hopper’s splayed crotch, a slave lifting those enormous nuts out of the way to reveal the head jumper’s clownishly agape pussy, stretched permanently by L.D.C.’s cunt-breaking rod. " + (pc.tailCount == 1 ? "It slips in easily enough, of course, and wastes no time rubbing its nerves against her well-fucked walls.":"One slips in, then another, and those tendrils waste no time pumping her gushy honeypot, grinding their most sensitive nerves against her long-conquered walls."));
		enemy.loadInAss(pc);
	}
	// Merge]
	output("\n\nThe slaves concentrate their efforts on you as you savagely piston in and out of the pretentious pirate, skewering and stretching him with every ravishing thrust. They grope your [pc.ass], caress your [pc.hips]");
	if(pc.balls > 1)
	{
		output(", and focus exclusively on your [pc.balls], kneading and cupping the virile orbs floating in your seed-filled pouch with trained reverence");
	}
	output(". Lipstick residue marks clearly the nerves that give you the greatest thrum when peppered with kisses.");
	output("\n\n<i>“F..f...f... Ugh...”</i> L.D.C.’s throaty gurglings are almost as audible as that in his twitching nuts, dumbly firing off rope after rope with every balls-deep thrust into his upraised, cock-milking ass. You’re practically rearranging his pelvis on every ecstatic railing");
	if(longii >= 16) output(", to say nothing of leaving his rectum as wide as his LT’s bitch-hole!");
	output("\n\nYou can’t stifle your laughter anymore, running a hand " + (!pc.hasHair() ? "over your sweaty head":"through your sweaty [pc.hairs]") + ", finding new ways to pound him, new ways to bump and grind through his contracting interior" + (pc.hasCockTail() || pc.hasCuntTail() ? " while the Hopper moans slack-jawed to your rear":"") + ". You plant a [pc.hand] on his head and pull back, straining his neck and adding to the stimulation of his reaming. Longer and longer ropes of laquine nut surge to the front of the bed");
	if(x >= 0) output(" while ejaculate-diluted pre flows freely through your inflating urethra" + (pc.cockTotal() > 1 ? "s":""));
	output(".");
	
	output("\n\nHe’s taken his pleasure from others for so long, you can only imagine what it’s like for him to be on the receiving end, having his asshole abused, his prostate sawed in half while he gushes in response. It’s that imagination that propels your rapidly shuddering hips back into kneading him dry.");
	output("\n\nL.D.C.’s palate is showered with cock-drool; cum seeps from his lips between the submissive cries. Your prick glides in and out of his gloving orifice until his anal entrance is just your personal cock-ring. You jackhammer him with the belief that his ass will cling to you, that nobody else will be able to make use of it, and that he’ll secretly love the memory of being your cock-socket. Beneath his body, the boss boy’s massive dick swells to greater tumescence, enough to prop him up through sheer phallic strength. The sultry girls nearby all look to you with quirked eyebrows.");
	output("\n\nHe’s cumming; the flaring of his stallion schlong is ample proof. But something tells you it’s going to be <i>much more than that, given his size</i>. The sadistic slave girl tries to keep him forced down on his own dick, but the need for oxygen beats her weaker grip.");
	output("\n\nLimp-kneed thrusts replace the erstwhile rhythm you had in fucking this butt-boi into his own sheets, the pressure on your [pc.cockOrStrapon " + x + "] growing with the dragging of his tortured backdoor. You shimmy forward as ");
	if(pc.balls > 0) output("you feel one shot of [pc.cum] pulled from your well-massaged nut" + (pc.balls > 1 ? "s":""));
	else if(pc.hasCock()) output("you feel one shot of [pc.cum] pulled from your [pc.cockNoun " + x + "]");
	else if(pc.hasVagina()) output("you feel a " + (!pc.isSquirter() ? "drizzle":"squirt") + " of [pc.girlCumNoun] spray from your [pc.vaginas]");
	else output("your [pc.asshole] clench and wring itself in a flash of anticipatory ecstasy");
	output(". That small orgasm triggers the real one" + (pc.hasCuntTail() || pc.hasCockTail() ? ", spurred on by the hypnotic tensions rhythmically undulating through your extra genitalia from the now-detonating Hopper":"") + ".");
	output("\n\nYou hilt your " + (x < 0 ? "holo-":"[pc.cockType " + x + "] ") + "club in him and let your body handle it from there." + (x >= 0 && pc.hasKnot(x) ? " You’re careful not to slide your [pc.knot " + x + "] in lest you be stuck here for longer than you’d like.":""));

	if(x >= 0)
	{
		// PC low cum
		if(pc.cumQ() < 150)
		{
			output("\n\nYour orgasm is nowhere near as virile and powerful as the laquine’s. The ecstasy of release is there, but his balls do more than churn, they <i>pump</i>, and they’re pumping his pool with industrial strength and entirely useless loads of rabbit-jizz that concuss the bulkhead of the ship you’re standing in.");
			output("\n\nThe dribbles and terran-typical ribbons of [pc.cumVisc] [pc.cumNoun] you fill his ass with are nothing compared to the turgid lines of bunny nut " + (silly ? "cheerios":"cream") + " splashing against the wall, his chin, and whatever the hell else is in the way until he’s practically swimming in his own feracity. L.D.C.’s climax does eke out the most of your load, however, and you’re sure the warmth of your [pc.cumColor] seed is to his liking" + (pc.cockTotal() > 1 ? ", particularly those lines you’ve drawn across his pre-soaked ass":"") + ".");
		}
		// PC plenty of cum
		else if(pc.cumQ() < 4000)
		{
			output("\n\nYour ecstasy-imbued orgasm is only half as mighty as the laquine’s, but it’s enough that you’re right there with him, howling as his girthy nuts churn, no, <i>pump</i> with industrial strength" + (pc.balls > 0 ? " just beneath yours; testes clench and quiver against one another":"") + ". Rabbit-jizz concusses the bulkhead with lurid effect, entirely wasted and impossible for him to handle.");
			output("\n\n[pc.Cum] splashes every nerve cluster inside the bunny-boy’s ass as turgid lines of laquine nut-cream splatter the walls, his chin, and whatever the hell else is in the way until he’s practically swimming in his own feracity. The chattering and cute groans coming out of his mouth only make the filling of his bowels more pleasurable" + (pc.cockTotal() > 1 ? ", to say nothing of the thick lines of [pc.cumNoun] drawing shapes of across his back and ass":"") + ".");
		}
		// PC lots of cum
		else if(pc.cumQ() < 25000)
		{
			output("\n\nWhen the bunny-boy geysers, you do much the same. The strength at which lapine nut-batter concusses the walls and whatever else is in front of his flared horse-dong is the same at which you ecstatically pump him full of [pc.cumVisc] [pc.cumNoun], the sheer volume flowing through your cum-vein prying his anxious ass apart to make room for its capacious inflation.");
			output("\n\nIf you were fucking a pussy, he’d be pregnant ten times over. As it is, you’re giving him a spunk-bump that’s gonna leave a trail of [pc.cumColor] cum that’ll lead you right back to him for round two.");
			if(pc.cockTotal() > 1) output(" Your extra cock" + (pc.cockTotal() > 1 "s deposit their":" deposits its") + " fat wads and ropes over his back and butt, blanketing him with [pc.race] cum.");
		}
		// PC monstrous cum
		else
		{
			output("\n\nThere’s an utterly sublime moment when you cum, when you slip into pure ecstasy. It’s the titanic eruption in your [pc.cock " + x + "]! It’s earth-quakingly monumental, it’s got the weight of a mountain... and it’s all flooding inside this twink pirate’s bowels. Not one bone in his body isn’t concussed by the undeniable power of your [pc.cumVisc] enthusiasm.");
			output("\n\nYour cum-vein bulges obscenely, not caring on whit for his body’s attempt to reset. What L.D.C’s blasting is impressive, but his laquine load’s almost nothing compared to yours. Your virility fires with the augmented buildup of a railgun and hits hard enough to scar a planet.. After the second oh-so-noticeable pump of your [pc.balls], you’ve splattered your groin with [pc.cumNoun], the [pc.cumVisc] spunk backwashing down your [pc.thighs], your [pc.hips], your [pc.legOrLegs]... gosh, it’s everywhere... it’s even spilling from his mouth and nostrils.");
			output("\n\nAs for your fuckpuppet, he’s got himself a fine cum-bump that’ll be leaking for hours, and that trail will lead anyone straight to him for another round.");
			if(pc.cockTotal() > 1) output(" Hell, with how thoroughly your extra dick" + (pc.cockTotal() > 2 ? "s have":" has") + " splattered him, you’ll be able to smell your way back to him!");
		}
	}
	// PC hardlight cum (Vagina and Neuter)
	else
	{
		output("\n\nYour feminine orgasm is divine in its own right next to the L.D.C.’s powerfully pumping testicular tubing. ");
		if(pc.hasVagina())
		{
			output("Your cunt" + (pc.totalVaginas() > 1 ? "s grind":" grinds") + " so tightly around something not there that you’re able to feel the caress of muscle against white-hot vaginal muscle as [pc.girlCum] ");
			if(pc.wettestVaginalWetness() < 3) output("dribbles from your deliciously glazed slit" + (pc.totalVaginas() > 1 ? "s":""));
			else if(!pc.isSquirter()) output("runs in thick streams from your beautifully drenched puss" + (pc.totalVaginas() == 1 ? "y":"ies"));
			else output("squirts with convulsing impact");
			output(" into the waiting mouths of ever-helpful harem sluts. ");
		}
		output("The mind-bending transmissions of lust from his body to yours riddle you with multiple aftershocks.");
		if(!pc.hasVagina()) output(" The ever-helpful harem sluts slide tongues and fingers into your own pucker, stroking roughly to get you off, to help you soar higher on that cloud of bliss.");
	}
	// Merge
	output("\n\nYou catch your breath in deep gasps and prickling blinks. It almost hurts to swallow in the wake of your overwhelming climax. It’s like every drop of liquid in your body was wrung out by the torrid wave of euphoria you just landed.");
	output("\n\nIt’s exhausting just freeing your [pc.cockOrStrapon " + x + "] from the slut-boy’s rear, the ring of his ruined asshole " + (longii < 12 ? "slightly agape":"gaping like a chasm") + " in the wake of your assertive lovemaking." + (pc.hasVagina() ? " You deposit another few loads of [pc.cumNoun] on his anus in parting.":"") + (pc.hasCuntTail() ? " Your cunt-tail sends a signal to your brain, one that bids you look back to see its lips caked with the dazed XO’s seed. Good girl.":""));
	output("\n\nYou stand and collect your gear, all the while thinking of what you should do now as the lawless echelon slowly rouse. One thing’s for sure: you’ve left that bunny-boy little more than a shuddering lump of " + (pc.hasCock()) output("[pc.cumNoun]-splattered ":"") + "coal.");
	output("\n\n");
	processTime(35);
	if(pc.hasCuntTail()) feedCuntSnake(enemy);
	enemy.loadInAss(pc);
	pc.orgasm();
	CombatManager.genericVictory();
}

//[Get Worshiped]
// Tooltip: Those two bunnies are the ones <i>mostly</i> in charge of Zheng Shi. Get ‘em on their knees and servicing you.
// Tooltip, no Genitals: You can’t receive real oral service without a dick or pussy!
// Requires Penis and/or Vagina.
// Offer the PC a choice between cock and vagina if herm.
// William
public function getWorshippedByBuns(var cockUse:Boolean):void
{
	clearOutput();
	author("William");
	var x:int = 0;
	if(cockUse) x = pc.biggestCockIndex();
	if(pc.isAss()) output("You’ve got King Dick and Queen Bitch of Asshole Mountain right there, the shock jumper on her knees and L.D.C. sitting back in comfort. You’ll move on <i>after</i> putting them to work.");
	else output("L.D.C. and his lieutenant watch you with some resignation, biting their lips as you linger there flushing with arousal. Nope. You can’t resist! You’re putting those two on their knees their faces in your crotch!");
	output("\n\nBesides, it’s not every day someone gets two pirate bosses on their knees and worshiping their ");
	if(cockUse) output("[pc.cocks]");
	else output("[pc.pussies]");
	output("! Harem girls grope and idly undulate, wondering just what you have planned ");
	if(!pc.isCrotchExposed()) output("as you shuck your [pc.crotchCovers] and ");
	//notTaurCock: 
	if(!pc.isTaur() && cockUse) output("stroke your [pc.cocksLight] ‘til " + (pc.cockTotal() == 1 ? "a wad":"wads") + " of pre bead at the tip" + (pc.cockTotal() > 1 ? "s":""));
	//notTaurVag:
	else if(!pc.isTaur()) output((pc.balls > 0 ? "heft your [pc.sack] to ":"") + "brush a [pc.hand] across your [pc.pussyNoun] and [pc.oneClit].");
	else if(cockUse) output("expose your swelling [pc.cocks]");
	else output("expose your [pc.pussies]");
	output(". Your glistening endowment" + (pc.cockTotal() + pc.totalVaginas() > 1 ? "s are":" is") + " attractive enough to earn a few cute ‘oohs’ from the naked audience, though your choice of partners fidget.");

	// PC not taur
	if(!pc.isTaur())
	{
		output("\n\nYou [pc.move] towards the bed and hop up, a terse look boring into the object of your lust. The multiracial slaves lean and slide back as you crawl over to the dark bunny boy and grab him by the legs, dragging him away from his commanding position. <i>“W-what the fuck? Hey, get off me, asshole!”</i> the cock-burdened rabbit whines. His Hopper groans, instinctively (and pitifully) trying to stop you despite her " + (enemy.HP() <= 1 ? "thorough trouncing":"intense arousal") + ".");
		output("\n\nL.D.C. falls off the mattress and flops to his knees with a grunt. His fat equine dick smacks the floor hard enough to shake the room and make him wince. You grab his LT by her bubblegum mohawk and pull the zap-bunny right next to her debased captain. All the oversexed duo can do is look up and cross their eyes in proximity to your ");
		if(cockUse) output("pre-coated prick" + (pc.cockTotal() > 1 ? "s":""));
		else output("juice-drooling slit" + (pc.totalVaginas() > 1 ? "s":""));
		output(", huffing in a mix of awe and resentment.");
		output("\n\nYou, for your part, simply relish the idea of two big bad pirates presented like common sluts waiting to be used, nothing to do but inspect your [pc.crotch].");

		if(pc.isBimbo()) output("\n\n<i>“Hope, like, you two love " + (cockUse ? "cock":"pussy"!) + "”</i> you wink. <i>“Let’s see how good your tongues are!”</i>");
		else if(pc.isBro()) output("\n\n<i>“I’ll think about what to do after you get those tongues on my " + (cockUse ? "cock":"cunt") + ",”</i> you say, rubbing your " + (cockUse ? "[pc.cockHeadNoun " + x + "]":"[pc.clit]") + " into their heads.");
		//kind:
		else if(pc.isNice()) output("\n\n<i>“Maybe I’ll forgive you... <b>after</b> you treat me with your mouths.”</i> You " + (cockUse ? "stroke yourself to full hardness":"spread your vulva") + " and step closer.");
		//misch:
		else if(pc.isMischievous()) output("\n\n<i>“I’ve got a <b>real hard</b> feeling, and you two are gonna help me with that.”</i>");
		else output("\n\nYou slap the Hopper and her disobedient captain, tugging them forward. <i>“Suck. Then maybe I’ll think about letting you go.”</i>");
	}
	// PC taur
	else
	{
		output("\n\nYou [pc.move] towards the beaten bunny and position yourself " + (cockUse ? "above her, nearly slapping her with your [pc.cocks], dripping with virile passion":"in front of her, turning to expose your [pc.pussies], leaking passion and potent musk equally") + ". <i>“Why don’t you girls do me a favor,”</i> you motion towards L.D.C. and crook your finger. Giggling, they set upon him near instantaneously. The big dicked boy is yanked by his cute little feet and pulled from the bed, his enormous horse-shaft smacking lewdly into the floor with enough force to make him wince and the room shake.");
		output("\n\n<i>“W-what the hell? Girls, get the fuck off me! What do you think you-”</i> the cock-burdened rabbit whines before he is scooched next to his " + (enemy.HP() <= 1 ? "thoroughly trounced":"intensely aroused") + " LT - right in the path of your exposed and powerfully " + (cockUse ? "throbbing":"tingling") + " genitalia. You fold your arms and " + (pc.isBimbo() ? "giggle airheadedly":"snort") + ", stepping " + (cockUse ? "forward":"backward") + " to rub your " + (cockUse ? "[pc.cockNoun " + x + "]":"[pc.pussyNoun]") + " into their faces and relish the idea of two pirate leaders in such a position.");
		output("\n\n");
		if(pc.isBimbo()) output("<i>“Alright, you two get to work " + (cockUse ? "down":"back") + " there and, like, put those tongues into it!”</i>");
		else if(pc.isBro()) output("<i>“Good fucktoys use their tongues. I expect the best from the best of the slut-bunny crew.”</i>");
		else if(pc.isNice()) output("<i>“You run a crew of sex-loving rabbits. I expect you both to know how to use your mouths.”</i>");
		else if(pc.isMischievous()) output("<i>“First, you get me off. When I’m satisfied, I’ll think about letting you go. Until then, give your girls a show to remember!”</i>");
		else output("<i>“Your pet sluts will appreciate their masters following a few simple instructions I’m sure. " + (cockUse ? "<b>Suck</b>.":"<b>Lick</b>."));
	}
	// Merge
	// PC cock small
	var longii:Number = 0;
	if(cockUse) 
	{
		longii = pc.cocks[x].cLength();
		if(longii < 7) output("\n\n<i>“Huh, you get this far and you don’t have much to show for it, do you?”</i> the black rabbit snarks, and a slave girl smacks him on the back of the head, shoving his nose into your modest girth. L.D.C. recoils and shakes his head, <i>“Fine, fuck! Whatever, we’ll do it!”</i>");
		// PC cock big
		else if(longii < 16) output("\n\n<i>“You can’t seriously expect <i>me</i> to fit that in my-”</i> L.D.C. begins, only to be silenced by a shuffle of your hips and a slap of your dick to his face. The Hopper chews her lip and the collared slaves titter while he shakes his head, <i>“Son of a... Just... Fuck! Fine! We’ll do this, and only once!”</i>");
		// PC cock bigger
		else if(longii < 22) output("\n\n<i>“You’re joking aren’t you? You want a hugjob? I’m sure I can find a skank with a throat that can handle this, lemme just-”</i> Before he moves another inch " + (!pc.isTaur() ? "you":"a slave") + " stop" + (pc.isTaur() ? "s":"") + " him; " + (!pc.isTaur() ? "you grip":"she grips") + " the recalcitrant rabbit by his upraised ears and smash your [pc.cockHead " + x + "] into his face. He will do it. <i>“Damnit, fine, fuck’s sake... Don’t need to be a prick about it!”</i>");
		// PC cock biggest
		else output("\n\n<i>“Fuck me, you really went all in on the drugs didn’t you? You’re more hung than... I’m sure you understand you ain’t fitting that in one of us! Let me see if I can’t get you a-”</i> You respond by hefting your [pc.cockType " + x + "] obelisk up and letting the hammer fall, putting L.D.C. in his place with a wet smack of cockflesh and cummy pre against his muzzle. There’s no better way to remind the unruly bunny-boy who’s in charge. <i>“Fucking... Ugh, whatever, you’ve made your point, f-fucker!”</i>");
	}
	// PC pussy 
	else
	{
		// PC pussy Feline
		if(pc.vaginas[0].type == GLOBAL.TYPE_FELINE) output("\n\n<i>“Damn, I like that pussy. Kaithrit cunts are just so pretty and suckable..." + (pc.vaginalPuffiness(0) >= 1 ? " And I love chubby muffs,":"") + "”</i> the bunny-boss swoons, his charade dropping as he inches himself closer to your [pc.pussy]. <i>“This thing’s almost too cute to want to stretch,”</i> he grins. <i>“" + (pc.vaginas[0].looseness() < 4 ? "</i>Almost<i>":"But someone already did that for you") + ".”</i>");
		// PC pussy Equine
		else if(pc.vaginas[0].type == GLOBAL.TYPE_EQUINE) output("\n\n<i>“Mmm, I’d never mistake that scent. That ripe and thick smell of horse-pussy! And yours is looking beautiful, beautiful,”</i> L.D.C. compliments, sounding like he’s forgotten what’s going on. He can’t keep his hands away from your swollen and chubby cunt, eager for a taste of the mounting arousal shimmering along your rubbery exterior. <i>“Not a bad flavor at all,”</i> he smacks his lips, <i>“I’ll definitely enjoy this!”</i>");
		// PC pussy Gryvain
		else if(pc.vaginas[0].type == GLOBAL.TYPE_GRYVAIN) output("\n\n<i>“Huh... I don’t think I’ve ever tasted dragon-pussy before,”</i> L.D.C. murmurs, tilting his head at your draconic slit. Thin streams of lubricant drool from your [pc.pussyColor] labia, all but begging him to savor the nubby exterior. <i>“Those protrusions, they’re inside and outside your cunt aren’t they? Heard they feel as good as a clit when they’re massaged. This’ll be easy...”</i> He licks his lips, somehow so confident!");
		// PC pussy Suula
		else if(pc.vaginas[0].type == GLOBAL.TYPE_SUULA) output("\n\n<i>“No, that’s...”</i> L.D.C. stops and shakes his head. <i>“You’ve got one of those venomous twats, I don’t want that stuff near me!”</i> You move that cilia-lined cunny closer. Soon, he’s not gonna have much of a choice. You can’t wait to see how much of a geyser he is when those stingers get their feelers on him! <i>“S-s-shit... This... Fuck everything...”</i> he grimaces in resignation.");
		else
		{
			//(for cunnilingus; anything not specifically referenced)
			output("\n\n<i>“Yeah, I guess it could be worse. Just eat this out huh?" + (pc.puffiestVaginalPuffiness() >= 1 ? " I love [pc.boyGirl]s with chubby cunts.":"") + "”</i> L.D.C. remarks, licking his lips at the sight of your wonderfully moist [pc.pussyNoun]. <i>“Should let me put it in.");
			if(pc.vaginas[0].looseness() < 3) output(" A [pc.guyGirl] like you? You’d love a good stretch. Mmf, the sounds you’d make!");
			else output(" You may be as loose as a " + (pc.laquineScore() >= 5 ? "broodmother":"laquine") + ", but with my size that won’t matter!");
			output("”</i> You roll your eyes and usher the pair closer.");
		}
	}
	// PC chose cock, not taur
	if(!pc.isTaur() && cockUse)
	{
		output("\n\nUnsurprisingly, the Hopper is the first to leap into action. Her fuzzy paws rest on your [pc.thigh] (almost hugging you) while her mouth slurps at the crown of your [pc.cock " + x + "]. Glossy, spit-slick lips stretch around your [pc.cockHeadNoun " + x + "], the halting suctions against your dilating cumslit more than pleasurable - L.D.C. has a wildly talented cocksucker at his beck and call!");
		// Suula Dick
		if(pc.cocks[x].cType == GLOBAL.TYPE_SUULA) output("\n\nThere’s some concern in that coal-black bun’s eyes the more he follows the sways of the cilia on your venom-phallus; toxin-bearing stingers apply their pleasure-seizing loads to the Hopper’s mouth seconds after she squirms you inside. A waterfall of spit froths and flows down her lapine chin, hardening her needy-looking dick to its fullest. You can see vibratory ripples in her cream-furred nutsack, gumballs of laquine-pre spurting from her twitching tip.");
		// Merge
		output("\n\nThe horny hare hungrily jerks her head forward, taking your [pc.cock] to the back of her throat in one lewd and lavish motion. ");
		if(longii < 7) output("With how little you’re packing, it’s no issue for the azure bun to grind her nose into your loins. Your [pc.cockNoun " + x + "] luxuriates in the full service of her mouth");
		else if(longii < 22) output("The azure-bun gargles and sputters the more of your girth she tries to inhale, and she only makes it halfway down your [pc.cockNoun " + x + "]");
		else output("Tears well at the corners of her glazing eyes trying to fit even a quarter of your " + (silly ? "pounder":"[pc.cockNoun " + x + "]") + " in");
		output(". One fuzzy, vigorous hand latches onto ");
		if(pc.balls > 0) output("your [pc.sack]");
		else if(pc.hasVagina()) output("[pc.oneVagina]");
		else output("your [pc.base " + x + "]");
		output(" as a thick tongue rolls around your pole." + (longii >= 22 ? " She may not be able to suck it all down, but that obedient bun is doing exactly what she needs to.":""));
		output("\n\nA slave girl helpfully pushes the Jumper’s big (little) man into action.");
		output("\n\nHis fluttery nose is embedded in your ");
		if(pc.balls > 0 ? "[pc.sack]");
		else if(pc.hasVagina()) output("[pc.pussyNoun]");
		else output("[pc.base " + x + "]");
		output(" - L.D.C. gasps for air, drawing his tongue across your overheating loins before coming to rest near the blue-bun’s happily wriggling mouth. Blue bunny-lips stretch and hollow across the inches of your [pc.cockNoun " + x + "], keeping it shined with spit. Pockets of pooling pre are slurped up by his stubborn mouth, and he he finally brings one of his tiny paws to your [pc.cockNoun " + x + "] at the ");
		if(pc.isBimbo() || pc.isBro()) output("horny");
		else if(pc.isNice()) output("gentle");
		else output("not so gentle");
		output(" urging of your [pc.hand], accepting his position.");
		if(pc.cockTotal() > 1) 
		{
			var otherDikk:Number = 0;
			if(otherDikk == x) otherDikk++;
			output(" Your extra cock throbs demandingly " + (pc.cocks[otherDikk].cLength() < 7 ? "above":"atop") + ", squirting your salty lubricant onto his head.");
		}
		output("\n\nBoth Jumpers are now in full swing, licking and sucking your [pc.cocksLight] like they’ve discovered a new favorite sweet. Enthusiasm drips like every rope of cummy saliva from their mouths. Your [pc.toes] curl and dig into the deck as the beginnings of euphoria swim throughout your body. Lissome paws wander between your [pc.thighs]");
		if(pc.balls > 0)
		{
			output(", fondling the ");
			if(pc.ballDiameter() < 3) output("weighty");
			else if(pc.ballDiameter() < 5) output("heavily swinging");
			else output("sloshing");
			output(" cum-sack respectfully");
		}
		else if(pc.hasSheath(x)) output(", teasing the innards of your sheath");
		else if(pc.hasVagina()) output(", teasing out a [pc.clit] from your vaginal hood before rubbing it in smooth circular motions");
		else if(pc.hasKnot(x)) output("ringing the bulge of your breeding bulb");
		else output("caressing the flat of [pc.skinFurScalesNoun] where phallus meets groin");
		output(".");
		output("\n\n’Candied’ is an appropriate description of the Hopper’s mouth around your [pc.cocks]" + (pc.cockTotal() > 1 ? " and especially L.D.C.’s! That little suckling wonder is working magic around your multiple endowments, jerking your rods with innate expertise and honing in on the tenderest places":"") + ".");
		output("\n\nAnother so-helpful servant pulls " + (enemy.lust() < enemy.lustMax() ? "down the XO’s zipper":"tears off what’s left of the XO’s bodysuit") + ", revealing the vanilla-flavored mounds of her luscious chest which heave with inattentively whorish moans. More girls move in from behind, trained hands darting for bright, jutting nipples and flaring boners. Those stimulations cause the oral rhythms you enjoy to fall apart into phallus-obsessive frenzy. Bunny ears lilt and energetic muzzles forgo sensuality to slide back and forth, over and around with unrestrained kinetic fervor to savor the tastiest fluids, coaxing out hotter loads from your [pc.cocksLight]" + (pc.balls > 0 ? " with squeezes to your [pc.balls]":"") + ".");
		output("\n\nOne particularly cute kaithrit girl shuffles behind you, purring and nuzzling her warm cheek to your [pc.ass] and working on whatever she can find from there. Her full-body-rumbling on your ");
		if(pc.balls > 0) output("taut ballsack");
		else if(pc.hasVagina()) output("ambrosial slit");
		else output("[pc.cockType " + x + "] hardness");
		output(" feels heavenly.");
		output("\n\nAs pleasing as this scenario is, you’re not totally blind to what’s going on below. The shock-bun’s sizeable slab of herm-cock is nothing compared to the elephantine mast between her lover-boys legs. Every time that lurid tower of laquine meat pulses it grows just a bit bigger, snaking up at an angle that’ll soon overshadow him and be pressing at your own. It’s soon pressed down and aimed between your legs, though its defiant throbs bounce it skyward.");
		output("\n\nMost of the pleasure building comes from the whiskered mouths of the two bunny-pirates polishing your [pc.cocksLight], but the comfort-girls deserve a little recognition too. Warm and tender hands massage your [pc.legOrLegs], focusing on your love handles and [pc.ass]. When your conquests aren’t fondling something, the slaves take over, treating your extremities like they would anyone else’s: with love.");
		// PC cunt tail
		if(pc.hasCuntTail()) 
		{
			output("\n\nMental and emotional flashes of parasitical passion indicate that your [pc.cuntTail] senses the feast arrayed before it, and it transmits to your mind its inability to choose from the two magnificent cocks available. You squint and fire off a thought back to it, suggesting that it take from the most meaty source available: the L.D.C. You’re not sure if the response was a ‘thank you’ or ‘with pleasure’, but the cum-seeking organism spreads its drooling alien lips wide around the Jumper boss’ pillar, stretching wider than they ever have before just to secure itself around his flared tip.");
			output("\n\nThrough your nerve-melded relationship, you feel the frictious texture of its attempts to pull in more of that tremendous horsecock, and you already feel the searing pre spurting into its unknowable depths. You almost can’t wait for him to cum, to be privy to that raw detonation of delight. Sure, the Hopper’s got the bigger balls (literally and figuratively), but feeling that dick going off inside... Oh man.");
		}
		// Merge
		output("\n\nThe slovenly shock-bunny pulls your [pc.cock " + x + "] from her mouth, gasping for air and bouncing from the pulses in her own gently stroked dick. She falls into you muzzle-first, face overlapped by your juice-glistening prick" + (pc.cockTotal() > 1 ? "s":"") + ", licking the undersides like a voracious slut while pawing " + (pc.cockTotal() == 1 ? "its":"their") + " full length" + (pc.cockTotal() > 1 ? "s":"") + " with the adoration and visage of a born cocksleeve. That kind of dedication deserves a reward, and you ensure the underperforming L.D.C. watches as his LT is rewarded with a scritch behind the floppy ears and another mouthful of [pc.cockType " + x + "] meat. <i>“Maybe I’ll keep this bunny. You’ve got her on a good leash, and she’s good at at lip service.”</i>");
		output("\n\n<i>“F-fuck, no! Don’t be that kind of pr-!”</i> L.D.C. whines, but you merely shove him back into your sweat-caked surface, moaning in mounting bliss as his tongue runs over your crotch all over again.");
		output("\n\nIt’s not just the feel of that thick muscle that has you clenching your [pc.thighs] together, it’s that you can feel his consternation behind it - that little bit of resistance tickles your dominant side, and it makes his hand-smothering balls lurch closer to orgasm. The " + (silly ? "ink-ribbun":"ink-bun") + " wants to mouth off and act tough, but he also can’t admit he fucking loves being your bitch. You can see that subby side no clearer than when you grab him by his tall ears and rein him in.");
		output("\n\nYou guide the imperious pirate down your girth until he’s kissing her right around your swollen tip");
		if(pc.cockTotal() > 1) output(", the other slaves rubbing your extra dick" + (pc.cockTotal() > 2 ? "s":"") + " into their smooth foreheads, making sure these oversexed rabbits are thoroughly lathered in your cascading " + (pc.isHerm() ? "herm-":"") + "goo");
		output(".");
		output("\n\n<i>“Then show me why I shouldn’t,”</i> you say, glowering at the cowed boi and commanding him to <i>“Open wide.”</i>");
		output("\n\nHe grits his teeth, doing as you command seconds later. There’s no time for him to have second thoughts, because you shove your [pc.cock " + x + "] right into the jizz-flecked hole" + (longii >= 13 ? ", battering his throat just a second later":"") + ". The laquine slobbers all over you with his wriggling tongue. Perhaps that squirming flesh is begging you to fuck his face. Perhaps it’s just a desperate and inelegant attempt to get you off before you do that.");
		output("\n\nIt works - you fire off one then two shots of [pc.cumNoun] into his maw, growling to contain the sudden pleasure");
		if(pc.cockTotal() > 1)
		{
			output(", your extra dick" + (pc.cockTotal() > 2 ? "s shoot":" shoots") + " a rope " + (pc.cockTotal() > 2 ? "each ":"") + "over his head, making him look just a bit messier");
		}
		output(". You shove back and hammer his mouth, intent on fucking his throat full of the load churning inside.");
		output("\n\nThe pervy hopper stares ruefully " + (pc.cockTotal() == 1 ? "before joining him again, peppering your dripping dong with reverent kisses":"before taking your extra [pc.cockNoun " + x + "] between her lips and giving it the blowjob it’s been waiting for") + ". The black and blue bunch are helpless to attend their own needs, but the slaves are doing that for them. They sit side-by-side, eyes, tongues and lips focused on bringing you to climax. " + (pc.cockTotal() == 1 ? "L.D.C. rubs":"They rub") + " circles into your [pc.hips]");
		if(longii < 7) output(", moaning");
		else if(longii < 16) output(", gargling");
		else output(", choking");
		output(" as you thrust a few more unrelenting inches into " + (pc.cockTotal() == 1 ? "him":"them") + ". The slut-bun’s cheeks hollow in loud and submissive suckles" + (pc.cockTotal() > 1 ? ", the trained throat of his militant bottom-bitch contrasting well with his virgin neck":"") + ".");
		output("\n\nPraise for the cock-burdened bunny’s aggressive fellatio tumbles out of your mouth. He manages to keep his mismatched eyes open the whole time even while his head is on autopilot and focused on tending your [pc.cock " + x + "]. You slam into " + (pc.cockTotal() == 1 ? "his face":"their faces") + " with stunning strength, the helpful harem keeping the libidinous laquine" + (pc.cockTotal() > 1 ? "s":"") + " steady so that you might admire your prizes better. Thick and hot air hisses through their lips, making the veins on your [pc.cocksLight] distend. You’re all too happy to reciprocate the energy, now scratching both of their heads as your pace falls apart into wanton glee.");
		output("\n\nThe blue-bun’s eyes cross and seal shut. Her whole body squirms and humps in the throes of orgasm - the herm-boss’s cock has taken full control of her brain. A powerful gout of cum squirts into the air and rains down on a few slaves. That brace of girl-dick is aimed away from you by the slaves who ease out the modded-up loads churning out of her scent-billowing maleness in long gouts of familiar stickiness.");
		output("\n\nL.D.C. isn’t too far behind, but it’s the unique cock-pleasing spasms of his throat that leave it up to galactic forensics to decide who shot first. " + (pc.cockTotal() == 1 ? "The bunny boy is":"Both bunnies are") + " shoved down onto your " + (pc.cockTotal() == 1 ? "[pc.cockNoun " + x + "]":"[pc.cocksLight]") + " ");
		if(pc.balls > 0) output(pc.cocks[x].cLength() <= 16 ? "balls-deep":"nearly balls-deep");
		else output(pc.cocks[x].cLength() <= 16 ? "hilt-deep":"nearly hilt-deep");
		output(" just before your spunk-tanks begin to drain.");
		output("\n\nA torrential ocean of bunny batter fires ");
		if(!pc.hasCuntTail()) output((pc.legCount > 1 ? "between your [pc.legs]":"down") + ", splattering the kitty-girl behind you and painting a wide cone of the room white with laquine virility");
		else output("into the depths of your [pc.cuntTail] to places unknown, distending the green-skinned alien with the virile treat it so desired. Until it’s shot right off his dick and left disgustingly obese with rabbit-seed");
		output(".");

		// PC low cum
		if(pc.cumQ() < 25) 
		{
			output("\n\nAlthough the mouth" + (pc.cockTotal() > 1 ? "s":"") + " around your [pc.cocks] suck with the power of a pussy, your [pc.balls] " + (pc.balls > 1 ? "don’t":"doesn’t") + " have the necessary amounts of [pc.cum] to adequately reward your cocksucker" + (pc.cockTotal() > 1 ? "s":"") + ".");
			output("\n\nYou’re not certain if " + (pc.cockTotal() == 1 ? "he notices":"they notice") + " though, not with their eyes rolling back as they blow their own mighty loads onto the floor. Your numb manhood" + (pc.hasCocks() ? "s":"") + " churn out terran-typical ropes of spunk into " + (!pc.hasCocks() ? "his":"their") + " throats, the [pc.cumVisc] loinfruit trickling into their stomachs until you’re all out - which doesn’t take long.");
			if(pc.hasCocks()) output(" Your extra member" + (pc.cockTotal() > 2 ? "s dribble":" dribbles") + " sympathetically over their brows, leaving easily washed or licked off marks.");
		}	
		// PC plenty of cum
		else if(pc.cumQ() < 1000)
		{
			output("\n\nGood cocksuckers get filled bellies, and you’re all too happy to reward the lawless laquine" + (pc.hasCocks() ? "s":"") + " with your [pc.cum]. Hot flashes precede every throat-swelling eruption inside. You’re not entirely sure if " + (pc.hasCocks() ? "he’s":"they’re") + " noticing the streamers of [pc.cumVisc] spooge your tensing [pc.balls] " + (pc.balls <= 1 ? "is":"are") + " unloading into " + (!pc.hasCocks() ? "his":"their") + " throats. There’s enough volume to fill " + (pc.hasCocks() ? "their stomachs and rewrite their":"his stomach and rewrite his") + " sense of taste.");
			output("\n\nThat’d be fitting. Knowing " + (!pc.hasCocks() ? "he’ll":"they’ll") + " probably be tasting you hours after you leave helps put a bit more strength in your rhythmically contracting ");
			if(pc.balls < 1) output("prostate");
			else output("nad" + (pc.balls > 1 ? "s":""));
			output(".");
			if(pc.hasCocks()) output(" They certainly won’t be able to shake your presence with the amount you’re dumping on their heads.");
		}
		// PC lots of cum
		else if(pc.cumQ() < 25000)
		{
			output("\n\nWickedly powerful pangs of pleasure assault your brain. Intense orgasmic pressure forces itself to the forefront of all your thoughts to help you revel in the sheer volume of [pc.cum] you’re pumping into the lawless laquine" + (pc.hasCocks() ? "s":"") + ".");
			output("\n\nThe rhythmic contractions in your [pc.balls] tell" + (pc.balls <= 0 ? "s":"") + " you when " + (!pc.hasCocks() ? "his neck":"their necks") + " bulge" + (pc.cockTotal() == 1 ? "s":"") + " with stomach-filling loads - and " + (!pc.hasCocks() ? "it does":"they do") + " fill out. L.D.C.’s body takes on a spherical shape" + (pc.hasCocks() ? " while the Hopper has a more defined spunk-bump":"") + ". Realizing you’re not stopping, especially as [pc.cumNoun] spurts from " + (!pc.hasCocks() ? "his":"their") + " nostrils, you pull out and shower " + (!pc.hasCocks() ? "him":"them") + " with the rest, painting " + (pc.hasCocks() ? "them":"him") + " [pc.cumColor] with a lasting impression of you.");
		}	// PC monstrous cum
		else
		{
			output("\n\nThere’s a breathtaking... <b>halting</b> feeling of pleasure swirling like a storm inside.");
			output("\n\nLike a wine bottle being uncorked, your [pc.cocksLight] <i>flood</i> " +  (!pc.hasCocks() ? "L.D.C.’s":"the lawless laquines") + " guts with [pc.cum] in ruthless quantities. What you feel in your [pc.balls] is an aggressive tightness that no amount of massaging can quell.");
			output("\n\nOnly a pathetically faint groan seeps between your [pc.lipsChaste] as " + (!pc.hasCocks() ? "his":"their") + " stomach" + (pc.hasCocks() ? "s":"") + " swell to full with [pc.cumVisc] spooge, filling with so much that by the time you recognize you’re on your fifth cumshot it’s squirting back up " + (!pc.hasCocks() ? "his mouth and nose":"their mouths and noses") + ". You drag " + (!pc.hasCocks() ? "him":"them") + " off your virility-blasting dong" + (pc.hasCocks() ? "s":"") + " and give the two a facial they’re not soon to forget, painting their heads and bodies [pc.cumColor] with a blanket of enviable sperminess. Laquines are a musky race, but being that thoroughly basted, you’ve probably rewritten their signature to yours.");
		}
		// Merge
		output("\n\nIt almost hurts to breathe, but you’re calming down well enough. Your orgasm reduces to a few relaxing dribbles. The slaves dutifully clean your [pc.cocksLight] before you collect your things. You’re soon left staring at the sex-coated bunnies who lie back heaving and panting, every hair of fur on their bodies dripping with sweat and " +  (pc.cumQ() < 1000 ? "some":"a lot of") + " spooge. The ones at the top have themselves been utterly claimed.");
		output("\n\nQuite a satisfying conclusion.");
		output("\n\n<i>“That wasn’t bad...”</i> the Hopper murmurs, looking at you with a small twinkle in her subby eyes.");
		output("\n\nL.D.C. scoffs, <i>“Speak for yourself, babe.”</i>");
		output("\n\nYou crane your body and stretch, thinking it’s time to move on and claim your inheritance. Hopefully you’ll get those mouths hopping to action again someday. They make a great team!");
		processTime(35);
		enemy.loadInMouth(pc);
		pc.orgasm();
		//9999 track resolution - slaves not freed
		output("\n\n");
		CombatManager.genericVictory();
	}
	// PC chose vagina, not taur
	else if(!cockUse && !pc.isTaur())
	{
		output("\n\nRegardless of how he feels, you still tug the pussy-loving bunny into action. If he’s feeling perky about this, then he can get his tongue right in there!");
		output("\n\n<i>“Mmf,”</i> he mewls, twitching nose burrowed in your ");
		if(pc.vaginas[0].wetness() < 3) output("juice-glazed");
		else if(pc.vaginas[0].wetness() < 5) output("slathering");
		else output("beautifully soaking");
		output(" [pc.pussyNoun]" + (pc.balls > 0 ? " beneath your lifted ballsack":"") + ". Both of the L.D.C.’s paws wrap around your [pc.thigh], desperate to show how eager he is to lap at your " + (pc.vaginalPuffiness(0) > 0 ? "puffy ":"") + "delta. It’s almost cute how gingerly he applies pressure to [pc.oneClit]");
		if(pc.totalClits() > 2 ? (", and then the rest");
		else if(pc.totalClits() == 2) output(" and then the next");
		output(", pressing down and rubbing in circles of vaginal appreciation. <i>“I could do this and more, ‘ya know!”</i> he grins, speaking in his smooth voice, licking roughly across the surface of your loins. <i>“You’re a big tough [pc.guyGirl], you need a good licker down here. After this you’ll be looking for me to do it again!”</i>");
		output("\n\nCharmer.");
		// Suula Pussy
		if(pc.vaginas[0].hasFlag(GLOBAL.FLAG_APHRODISIAC_LACED)) output("\n\nHis earlier reticence at inhaling your pussy disappears in a few venom-soaked stings from your alien cunt. Powerful and increasingly lusty groans crawl through the cock-rabbit’s throat; a waterfall of frothy of saliva pours down his chin, his brain probably incapable of handling that sensorygasm. So potent is your chemical rush that inches add quicker to his rapidly growing dick.");
		// Merge
		output("\n\nThe Hopper also leans in, anxious to press her glossy lips into pussy-service. She spreads the labia of " + (pc.hasVaginas() ? "one":"your") + " [pc.pussyNoun], planting her tongue beneath the pretty slit to catch the [pc.girlCumFlavor]-flavored " + (!pc.isSquirter() ? "drizzle":"shower") + "; you grip her head and hair for support, yelping when her boss dives in right next to her. The hungry hares kiss and draw a variety of shapes in your [pc.vaginaColor] interior, pushing back against the " + (pc.vaginas[0].hasFlag(GLOBAL.FLAG_NUBBY) ? "nubby ":"") + "walls of your rapidly clenching tunnel - they’re trying so hard to get you to cum");
		if(pc.totalVaginas() > 1) output(", they’re even slipping their thumbs and fingers into the other juicy entrance" +  (pc.totalVaginas() > 2 ? "s":"") + " you have");
		output(".");
		output("\n\nSlack-jawed and incredibly obedient, the blue-bun abates when you grip both upright ears, pulling her to the side so that the rabbit boy can work more of his oral magic.");
		if(pc.balls > 0) output(" You let her play with your [pc.sack] in the meantime.");
		else if(pc.hasCock()) output(" You let her play with your [pc.cock] in the meantime.");
		output("\n\nThe dusky laquine’s muzzle smashes into your nether regions until his cheeks are scissored between the supple fat of your [pc.thighs]. The harder his tail wags, the more inches get added to his mammoth horse cock! <i>“Good boy,”</i> you pet the horned up pirate behind the floppy ears, fingers creasing the soft surface of his head, <i>“you’re gonna be there awhile. Get cozy,”</i> you titter, rocking him back and forth across your ambrosial slit" + (pc.totalVaginas() > 1 ? "s":"") + ", ready to fuck his muzzle properly.");
		output("\n\nHe doesn’t mind one bit.");
		output("\n\nL.D.C.’s tongue spears your cunny again, foraging deeper without his XO vying for space - " + (!pc.hasCock() && pc.balls == 0 ? "you’ve got her":"she’s") + " working on your [pc.legOrLegs] now, diligently massaging and licking around your body with that overwhelmingly pliant tongue.");
		output("\n\nYour [pc.hands] fall away from L.D.C.’s head and you thrust your crotch out into him, an empowering feeling of dominance twisting around your spinal cord. The strength of pleasure you feel is enough to paralyze your limbs, but the helpful harem is there to steady your shaky frame" + (pc.hasCock() ? ", gently stroking your bobbing [pc.cocksLight], maintaining a tentative, blissful balance":"") +".");
		output("\n\nIn the next thrust of laquine tongue, your sense of control is all but lost. The Jumper’s top bun is unconcerned with anything that isn’t playing in the deepest recesses of your tightening twat, drawing out the freshest, tastiest drops of girlish excitement. Grinding cunny walls close in around his aggressive invader, intent on teasing him while he works. Your squelching pussy must be wondering why it’s squeezing a tongue and not that slab of bunny-cock growing and growing below, coming close enough to touch his chin were your [pc.ass] not in the way.");
		output("\n\nYou’re moaning to his mesmerizing motions now, loud when he pushes deeper, and quiet when he slobbers on your exterior. In the moments he catches his breath, you cheekily force him back into it, watching a smile spread across his pussy-drenched face every time. The snickers that rumble up his painted throat are just part of his pleasure package. You practically forget that he’s a pirate of some make, that you probably can’t trust him-");
		output("\n\nWell, that’s not true technically. <i>You can trust him to suck cunt like a star!</i>");
		output("\n\n");
		if(pc.wetness(0) < 3) output("So ravenous is the pirate boss that he keeps your mons glistening with spit and sweat more than your own juices, all slurped up by his greedy mouth.");
		else output("For however ravenous the pirate boss is, even he can’t keep up with the tides of [pc.girlCumVisc] femjuice streaming down your [pc.legOrLegs] and his warm cheeks. You spot a curious look in his eye, one of slight shame, but mostly of incandescent satisfaction at having his head-fuzz impregnated by femspunk.");
		output("\n\nWith a pitiful whine, the cream-colored XO gazes up, nuzzling her head towards your [pc.pussies]. " + (enemh.HP() > 1 ? "She unzips her orange suit":"She pulls the remnants of her suit off") + ", baring her beautiful, creamy breast to you. She suckles at " + (pc.totalClits() == 1 ? "your [pc.clit]":"one clit, then the other") + ", unable to get her lips around " + (pc.totalVaginas() > 1 ? "any of ":"") + "your dripping femininit" + (pc.totalVaginas() == 1 ? "y":"ies") + "." + (pc.clitLength >= 4.5 ? " You consider forcing her down your clitoral fuck rod, but she seems so desperate!":"") + " Their cocks are so turgid that two slaves who’ve snaked behind them are jacking those prideful boners with casual ambivalence, keeping them aimed down." + (enemy.lust() >= enemy.lustMax() ? " However, the azure slut can’t keep it in her gurgling balls, and musky laquine cum shoots weakly or dribbles out of her cock. It’s only a sign of things to come.":""));
		output("\n\nSighing softly, and knowing you’ve got their bed warmers backing you (quite literally), you " + (pc.legCount > 1 ? "hike a [pc.leg] over her shoulder, letting the girls behind you prop and feel you up":"move your [pc.leg] as far back as you can, arched back as if you were reclining in a chair") + ". In this position, your crotch is fully exposed - like this, those lusty laquines can devote themselves to the most pious worship at your altar.");
		output("\n\n<i>“Fucking hell, you taste great <b>and</b> you’re a bit creative too,”</i> L.D.C. compliments, chewing his lip with your [pc.girlCumNoun] plastered over his matted face. <i>“I guess I don’t mind that you’re on top. I’d love to make you scream whenever I want, but this is nice. Of every pussy I’ve had in my face, I think yours is the best.”</i>");
		output("\n\nA giggle lurches up your throat, you can’t really respond far away in bliss as you are. Tongues work their way through your pussy back and forth like rowing oars while noses grind into and deflect off your [pc.clits]. There’s a bit of strain in your back and waist, but those keeping you afloat on your cloud of euphoria massage it away, leaving you to enjoy the obeisant adorations of the Jumper leadership.");
		// PC big clit
		if(pc.clitLength > 1)
		{
			output("\n\nYour so-sensitive [pc.clits] stick" + (pc.totalClits() == 1 ? "s":"") + " out obscenely, and your two pussy-sluts don’t shy away from teasing those engorged bulbs of pleasure. You clench. You can’t help it, you shake so violently when they grip or lick " + (pc.totalClits() == 1 ? "that button":"those buttons") + " of body-convulsing nerves. You like it most when L.D.C. curls his tongue around " + (pc.totalClits() == 1 ? "it":"them") + ".");
			// PC cocksize clit (add-on)
			if(pc.clitLength >= 4)
			{
				output("\n\nYou cum again, another one for the puddle accruing on their faces, when a hand clenches around the pseudo-cock of feminine flesh. That tumescent rod of girlish pleasure, never meant to grow so obscenely, is expertly jerked like " + (!pc.hasCock() ? "a cock":"your [pc.cockNoun]") + " in the paws and hands of those to your front. Lightning strikes of pleasure assault your brain from every direction, only making you lean further back in lurid delight.");
			}
		}
		// Merge
		output("\n\nThe Hopper " + (pc.legCount > 1 ? "shoulders your leg":"holds you steady") + " with all the strength a domme bunny can muster, her tongue swishing with near-mechanical speed. She catches up to her captain’s level of twat-pleasing performance in no time, eager to show you how well she can treat your [pc.pussyNoun].");
		if(pc.balls > 1)
		{
			output("She doesn’t leave your [pc.balls] alone. The zap-rabbit moans louder when she handles those sumptuous spunk-weights that rest atop her furry head, wearing your ");
			if(pc.hasStatusEffect("Uniball")) output("taut");
			else if(pc.ballDiameter() < 3) output("weighty");
			else if(pc.ballDiameter() < 7) output("bloated");
			else output("heavily sagging");
			output(" ballsack like a hat. They’re so swollen they funnel between her twitchy ears, contracting between her upright floppers.");
		}
		output("\n\nInstead of letting your hands fall limp, ");
		if(pc.biggestTitSize() >= 1)
		{
			output("you steal touches at your [pc.breasts]" + (pc.canMilkSquirt() ? ", squirting [pc.milk] into the air, all over yourself and your attendants in a perverse, tasy display":"");
		}
		else output("you reach down and help, grasping for an ear or a clit to rub.");
		output(". Your [pc.pussies] rob" + (pc.totalVaginas() == 1 ? "s":"") + " your entire body of muscle control, trapping " + (!pc.hasVaginas() ? "its":"their") + " invaders in your leaky quim" + (pc.totalVaginas() > 1 ? "s":"") + " and slathering them with new coats of femslime. The moans you’re loosing turn to fevered wails as sweat trickles down your neck in saccharine detail.");
		output("\n\nLaquine pelt soaks up the excess of passion drooling down below as a hotter air consumes your mind. The entirety of your femininity " + (pc.hasCock() ? "and your masculinity ":"") + "is serviced and stimulated; no inch is left unstimulated. All of a sudden it becomes too much to bear - you cry out. The slaves praise your spasms and convulsions, all doing their part to help you ride out the most explosive of your many orgasms." +  (pc.hasCock() ? " Your [pc.cocks] are stroked delicately, sympathetic loads of [pc.cumNoun] eased out into waiting hands and mouths. It’s not nearly as powerful as your real climax.":""));
		output("\n\n[pc.GirlCum] floods out of your tunnel" + (pc.hasVaginas() ? "s":"") + " with such depravity and force that you can’t believe you’ve gotten this wet. ");
		if(!pc.isSquirter()) output("You squirt just a little, the rest coming out in mighty rivers.");
		else output("You squirt, and you do it harder than you have in recent memory.");
		output(" L.D.C. grips you tighty by your [pc.hips] and plays you like an accordion, wringing every drop of aromatic girljuice from your folds in long muscle-bowing motions, molding your cunt to the shape of his pussy-hungry muzzle in the process.");
		output("\n\nThe flaring bunny boy, a veritable fiend for [pc.pussyNoun], works himself into a frenzy to catch everything, cock detonating like a bursting geyser onto his girls - the mohawked rabbit’s blasting just as hard. You cover your face, knowing that every searing hot flash you feel is another " + (pc.isSquirter() ? "wave":"bolt") + " of divine ecstasy you’re spraying out on them, and that no matter what they’re firing back it’s nowhere near as pleasurable as your bliss-infused cumshots.");
		output("\n\nYou cough as you’re set down outside the puddles of white the Jumpers shot out across the room, left to catch your breath under the sultry gazes of the animal-eared girls and their masters... All you can do is sigh happily.");
		output("\n\n<i>“Shit, that was fun,”</i> L.D.C. mutters, looking utterly smug and pleased with himself. He winks when you glance at him, collecting another load of girlhoney and licking it from his finger with a satisfied huff.");
		output("\n\n<i>“Y-yeah... I guess so,”</i> his creamy second-in-command murmurs.");
		output("\n\nWhen you’re able to stand, you smile widely, staring at the [pc.girlCumNoun]-glazed bunnies, glassy-eyed, panting, and almost totally drenched after their service of you. When you gather your things, you do so with renewed strength, and a perfectly clear mind as to the matter of your business here.");
		processTime(35);
		enemy.girlCumInMouth(pc);
		pc.orgasm();
		//9999 track what happen
		output("\n\n");
		CombatManager.genericVictory();
	}
	

output("\n\n[Next]");
output("\n\n// PC chose cock, taur");
output("\n\nYour [pc.cocks], still semi-erect, {has its safety / have their safeties} switched off when one of the pirates grips your ballooning [pc.cockHeadNoun] from either side. You feel a pair of very eager lips clamp down around your cumslit and <b>suck</b>. That word doesn’t do justice to the kind of inhalation taking place - those lungs are dedicated to milking cum!");
output("\n\nIt can only be the taser-bunny. Fuzzy paws run up and down your {prodigious} length as those smooth pillows stretch around your head. The lovely swishing of a tongue follows, tracing all along your [pc.cockType] shape. You fixate on that undulating muscle, grunting and gasping when it coils around your throbbing girth in ever-changing ways. <i>“Nice, you’ve got a good cocksucker for an LT, bunny boy!”</i>");
output("\n\nYou sense the begrudging laquine sidle closer. Perhaps he’s spurred on by the slaves moving in to ensure their cooperation, or perhaps put in his place by the sheer amount of musk you’re outputting. Either way, he’s starting off clumsily. His touches are hesitant, tentative, and he’s not even licking. Still, your dick doesn’t care where the pleasure comes from, it only cares about rewarding its servants with the fat loads inside it.");
output("\n\nThe oily laquine’s cautious and decidedly <i>resistant</i> gropes smear cock-drool all along your blunt hardness. He operates with a degree of care and efficiency you expect from someone who totes around the kind of meat he’s packing. You hear a zipper tear open and the Jumper’s XO moaning around your powerfully spurting prong. The pop of her lips disentangling from your pulsing shaft is audible throughout the room. Arcs of pleasure fire up through your spine, sprinting along your extended ‘tauric-half.");
output("\n\nWith how <i>drenched</i> you feel downstairs, you get the feeling their fur is halfway to being thoroughly rinsed with precum. You order them to suck, to get their tongues on there{, hard: and that you’re not going to ask again}. The beaten and subby Hopper obeys immediately, her jaw stretching wider to better please your manhood{s} {She can’t take your prick all the way, but a good chunk of your dong still pounds the tonsil at the end of her very fuckable mouth}.");
output("\n\n// PC breasts");
output("\n\nYou drag your [pc.hands] over your [pc.breasts], casually fondling those {perky lumps / jiggly melons / mountainous marshmallows} at a lust-fueled pace. You rub towards your [pc.nipples], squealing happily when those sensitive teats react pleasurably to the rhythmic scything of your digits. {No milk squirts from your jugs, but a pleasure girl is all too willing to step forward and help handle your {petite/generous} bosom. / [pc.Milk] squirts out to the floor and the slack sheets, and {multiBreast: two/several} pleasure girls step forward to help relieve you of your sloshing reserve. It’s a service you gladly accept. Getting milked by others is positively divine compared to self-service!}");
output("\n\n[pc.Arms] behind your head, you thrust your boobs into silken hands. Bubbly feelings surface and float away, their passage making you giggle and moan in equal measure. Those fingers sink into your sweat-slick titflesh{, coaxing more [pc.milkNoun] out into waiting mouths}.");
output("\n\n// PC no breasts");
output("\n\nYou fold your arms, huffing and swiveling in delight at  the ministrations taking place below. You run your [pc.hands] your sensitive [pc.skinFurScalesNoun] until a particularly busty pleasure-girl catches your eye by her triangular fox ears. She responds graciously to your request, coming forward to let you play with her chest while she massages your [pc.arms], cooing close to your ear. When you squeeze her teats, strawberry milk flows from her sugary chest into your palms and then into your mouth.");
output("\n\nYou bring her even closer{, height: lowering yourself} to hoist the short and stacked vulpine harem-mate up in your [pc.arms]. She cradles your head to her chest, hands clasped behind your neck, giggling while giving you free rein over her glistening skin and dribbling teats. Her forgiving chest gives way to your [pc.lipsChaste] and [pc.tongue]; refreshing pink cream pools in your mouth between breaths, and you gleefully gulp down every throat-stretching batch.");
output("\n\n// Merge");
output("\n\nYou grunt and thrust forward, your hind-legs planting and driving the crown of your [pc.cock] into a moist cavern. Soft mewls reach your [pc.ears], horny voices curling around your ear-tickled flanks in sultry hisses. The rest of the pleasure girls move in down there, stroking but not sucking, leaving that job to their masters. {Your/An} extra dick is guided to another mouth, likely L.D.C’s, and the bunny boss is encouraged to take what he can.} There is an audible <b>smack</b> down below. <i>“Damnit, fine!”</i>");
output("\n\nFamiliar sensations and wettening stimulations make your [pc.cocksLight] throb angrily. Focus on your top-half disappears in the sublime pleasure of being serviced out of sight. Gentle hands and smooth paws find new and increasingly depraved ways to please you and every vein on your pre-spilling tumescence. {Your [pc.balls] clench and wobble in the shadow of your [pc.cockType] tower{s}, bloating and swelling. Every nut inside and almost every inch of supple ballflesh is kissed and nuzzled with saccharine affection, the residual lipstick like a mark of obedience.}");
output("\n\nThe harem-girls relay what their master and mistress are doing, how they react to a mouthful of your pole, cooing that the two are on their knees and worshiping your blunt hardness as if they were naturally suited to the job. Their voices are lost in the fog of intoxicating laquine pheromones.");
output("\n\nYou slap forward again, tickled by the twitching ears that fold and tilt beneath. The shock-slut’s mouth struggles to handle just a few inches of your [pc.cockType] pole as the temperature rises. The bunny duo trace every bulge when your heartbeat bobs their heads, sucking harder, sucking slower. Your front legs give out and you fall into a mindless rut, rearing back and thrusting in desirous motions. [pc.Hips] swivel, gyrate; they lurch to swab the mohawked rabbit’s mouth with greater quantities of cock.");
output("\n\n// PC cunt tail");
output("\n\nFeverous lust translates desire to your [pc.cuntTail], and it stretches itself almost painfully to reach the dicks below you. Considering L.D.C. has a two-foot dick of delicious horsemeat, its choice is nothing but wise.");
output("\n\nThe spreading of your cum-hungry tail’s alien lips is like the opening of any of your orifices - slow, deliberate, and anticipatory. The amount your cunt-tail drools is born in disbelief that it has such a dick to itself. When it wraps around his flaring tip his scream is muffled by your [pc.cockNoun], and he fires a load or two into your tail. The rhythmic gulping of that cum-lasso only makes you howl in shared pleasure.");
output("\n\n// PC has pussy");
output("\n\nKeen on servicing your feminine half, an adventurous slave girl shuffles to your upraised and slightly thrusting rear end. You look back to see the ausar babe {planting/sinking} her hands {on/in} your [pc.ass] and smashing her face into your [pc.pussy]{, a hand also moving to attend the other slit / those hands moving to attend the other slits}.");
output("\n\nHer long tongue rolls around a needy [pc.clit] at the same time it dives into your [pc.vaginaColor] cunt. Happy for the attention, your silken [pc.pussyNoun] seals around her muscle and rewards her with a fresh stream of [pc.girlCumNoun] that dribbles from her chin in fragrant strings of girlmusk.");
output("\n\n// Merge");
output("\n\nPreseed doesn’t just dribble from your rapidly thumping [pc.cocksLight], it squirts like cum. A gasp for air signals to you again that one of the bunny-pirates below has come up for air to be replaced by the other. During the interim, you can tell from the lurid squelches below that you’re making a big mess on the floor, but especially on them. The wetness of their spongy, cum-slick fur is evident even when your numb and overheating [pc.cocksLight] glance off their lubed frames.");
output("\n\nYour arousal soars while you slump. Slaves and laquines stumble to catch up with your shift in position as you hump away at those mouths and hands. It takes a strong effort to not blow prematurely, trying to build all the arousal you can before you repaint their coats. You grit your teeth, mouths swap; every rope of spit and pre that drips is something you know is happening. The only room and comfort they get is what’s necessary to suck your dick like the whores they keep.");
output("\n\nImagination keeps you going higher and louder. You wonder what the muzzled pirates look like when you distend their throats in sequence or bulge inside their cheeks. There’s so much resistance and a little bit of choking, but you don’t care. You can’t care. All that matters is that this room of people is devoted to one purpose: pleasing you. You and your [pc.cocksLight].");
output("\n\nEverything that isn’t your wriggling [pc.cockNoun] {or your trembling ballsack} doesn’t matter. It’s coming, you can feel it. The pressure inside, your cum-vein - it widens automatically, expecting the first powerful load to surge through it any second now. You let slip a low breath, a pause where the moist sounds of cock-pleasing and girlish simpering fill your [pc.ears]. {Your [pc.pussies] tighten{s} and tense{s}, a rush of [pc.girlCumNoun] flows from your slit{s} in the onset of orgasm.}");
output("\n\n{Your [pc.cuntTail] latched onto L.D.C.’s meat is fed in powerful cumshots from the dark-furred boy, and its body distends obscenely as it wrings out every drop in those massive nuts of his. After the third eruption, it’s blown right off his dick by the sheer volume of his elephantine ejaculation.} It’s all enough to make you cum.");
output("\n\n// PC less cum");
output("\n\nWhen the first rope of [pc.cum] surges through your bulging urethra, you’re not sure whose mouth its going in. More follow{, forced out by your [pc.balls], tensing from every massage and coaxing stimulation}. Numbed by the weight and force of your climax, you get the distinct feeling that your [pc.cocks] are being moved, that while your [pc.cockHeadNoun] spurts and spurts and spurts, your cum-blasts are well aimed.");
output("\n\nYou’ve no doubt filled the L.D.C’s mouth, and that of his lieutenant’s. What it feels like now is all you’ve got being poured out on them, marking them almost permanently with your dribbly spooge. Every shot now, every impelling thrust against their own detonations makes you cry out in ecstasy. It only lasts for a short and so very blissful time, but that sensitivity takes ages to die down.");
output("\n\n// PC more cum");
output("\n\nYou don’t know whose mouth you’re lodged in, but there’s a sharp choke and gargle when the first splash of [pc.cum] shoots into their maw. Laughter follows, and the raw sensitivity of your pulsating dong tells you that it’s being directed. Another pair of lips is forced around the [pc.cockHeadNoun] for only a few seconds, likely the thus far unwilling L.D.C. They cry out in their own orgasms, voices muffled by the continent-devouring spunk tsunami you’re basting them with.");
output("\n\nEvery shot of [pc.cumNoun] and every impelling thrust afterward is wholly dedicated to drenching them, firing off enough spunk to feed a galotian for a week or two. {Your [pc.balls] are massaged, made to clench even harder as you cum hard enough to spasm all over}. Every flash of pleasure and every squeeze in your loins tells you that you’re doing only one thing: hosing the L.D.C. and his favorite blue-bun down until they’re little more than walking spooge-figures.");
output("\n\nFor all that your [pc.cocks] are firing, it seems to last forever. Even when your body soothes to a relaxing dribble, those last ejaculations have the effects of the first. The might of your climax all but demands you rest afterward.");
output("\n\n// Merge");
output("\n\nWhen you’re done unloading on the hapless duo, strength returns to your limbs and you step away from the oral orgy, finally able to take in the crestfallen jumpers.");
output("\n\nOversized dollops of passion leak from their ears, their cheeks and chins. Their own dicks vibrate and bounce in the wake of their unfulfilling orgasms, and all they can do is pant and wipe their faces of your [pc.cumVisc] loinfruit.");
output("\n\n<i>“F-fucking hell,”</i> L.D.C. grouses, <i>“I’m not letting that happen ever again.”</i>");
output("\n\n<i>“Maybe if you helped...”</i> the Hopper whispers almost acidically.");
output("\n\nAfter you gather your things, you look over the two and decide what to do next.");

output("\n\n[Next]");
output("\n\n// PC chose vagina, taur");
output("\n\nDespite his position, the pussy-loving bunny boy is no less eager to begin. You sit yourself down on him, smashing his muzzle into your hind quarters and penetrating yourself on his fuzzy snout. While you spasm in the sudden joy it brings, his legs kick. L.D.C. nearly recoils, struggling to grip your [pc.ass] and steady himself{, though {one paw/his paws} slide into your other slit{s}}.");
output("\n\nYou can hear him slobbering across your [pc.pussy]{, puffy: in awe of how much cunt there is to work with}. His tongue works with near mechanical speed to slurp up all of the slimy drawstrings leaking from your twat{s} across his face like perverse rope.");
output("\n\nThe Hopper’s paw settles over your [pc.clits], rubbing roughly across your sensitive buds and your sodden nethers. You feel that twitching nose of hers settle into your mons, breathing in your rich scent while those ticklish ears of hers bounce back and forth against your backside.");
output("\n\n<i>“Fuck, I don’t think my mouth is good enough for this. Hey, why not let me just put this bad boy in?”</i> You watch him pat the fattening equine club between his thighs. <i>“Really stretch ‘ya, show you the kind of time that a big [pc.guyGirl] like you deserves?”</i> L.D.C.’s motions shift to ginger strokes of vaginal appreciation. When he pinches your pleasure-button you splatter his face with a mini-orgasm, leaving the smear of [pc.girlCumNoun] across his oily brow. Upraised lapine ears flex beads of tangy discharge into mist; he shakes his head, laughs, and dives back in, clearly enjoying the O-face you just made.");
output("\n\nYour cunny, however, seems like it’d really enjoy taking him up on his offer.");
output("\n\n// Suula Pussy");
output("\n\nThe jumper duo’s reticence at tending your alien pussy disappeared a while ago. The venom-bearing tentacles poking like branches through your labial folds assault the furry cunt-lickers with gusto when they close in again. Lustful bellows crawl through their throats; thick ropes of spit and girl juice rain down their chins as they try to work with the liquid lust coursing through their surely-sensitive lips and throughout their bodies.");
output("\n\n// Merge");
output("\n\nGlossy lips are pressed into pussy-service. The now-obedient zap-rabbit who attacked you the moment you stepped in burrows her face into {a/your} [pc.pussyNoun], tongue tracing around the creases and folds of your sopping wet delta. Another wave of [pc.girlCumNoun] is dispensed when she pries apart your lower lips, and her thick tongue is already rolled out to soak it all up. What she doesn’t catch easily mats the creamier parts of her fur or becomes another layer of moisture for her squeaky suit. Their tails wag {with as much ferocity as your own, winding around each other / so happily that they blur and wind around each other}.");
output("\n\nTotally slack jawed, the horny hares work to cup every inch of your drooling box with their mouths. Tongues lance inside, gaining inches as lapine cheeks hollow. Their thick muscles coil and slide across your innermost depths. You feel dizzier and dizzier with every vacuumous suction against your spit-shined mons, and when they pull away, your sensitive [pc.pussyNoun] tingles in the warm-air, already wanting its worshipers back.");
output("\n\nThe hopped up laquines pant in excitement, thrusting themselves further into your roiling loins. [pc.GirlCumVisc] femjuice oozes out in reckless drops, trailing down your [pc.legs] and declaring its presence throughout your body. Tiny beads of moisture having that kind of effect simply rolling down your [pc.skinFurScalesNoun] is a perfect indicator for how sensitive you’ve become.");
output("\n\nCuriously, the rapid twitchings of their noses are never far behind those relaxing crests of sonorous pleasure. You run your hands {over your head / through your [pc.hair], throwing your {bangs out / head back} and gasping, the hew of another small orgasm lifting from your mind and rearing back for another thunderous strike.");
output("\n\nConsumed by bliss you grind your [pc.ass] into the black and blue buns, pushing them closer to the ground and raising their dicks closer to your crotch. L.D.C.’s glorious endowment is already prodding at your underbelly, smearing pre into your [pc.skinFurScalesNoun] and throbbing almost angrily that it’s not fucking {one of/your} ambrosial cunt{s}. <i>“You two get comfy, now!”</i> you cry, hand on your cheek, <i>“It’s only <b>just</b> getting started!’");
output("\n\nThe slaves move in now, divesting the Hopper of her zipsuit to play with her soft tits. The licentious hands not toying with laquine boobflesh are grasping at the dark bunny’s huge member. {pcBalls: When they’re not giggling or teasing their obeisant owners, the slaves plant hot, suctiony kisses all over your {nutsack / quivering ballsack / weighty, swinging nutsack / ground-dragging ballsack}. You’re positive that there’s enough lipstick on those pillowy mouths that submissive marks are being left all over your cum-pouch.}");
output("\n\nThe musk those two give off is so potent that when it wicks through your nostrils you’re getting wetter. Even from there it’s making your head spin {when it mixes with what’s spurting out of your [pc.cocks]}.");
output("\n\n// PC has cunt tail");
output("\n\nA familiar mental force renders in your mind - the parasitic passions of your alien tail. It senses the feast arrayed beneath you, two monumentally endowed laquine dicks.");
output("\n\nYour [pc.cuntTail] begs to slither around your body, for you to give it room to sheath one of those gorgeous laquine cocks inside itself. Acquiescing, you shuffle to grant its request, though it does put you in an awkward position. Your cum-hungry attachment gets what it wants though, able to stretch and weave enough that it closes in on the big-dicked pirate. It shares with you its course of action, and the pleasure it feels too.");
output("\n\nSultry images swaddle your mind while it snakes towards its bounty. A hammer of euphoric fulfillment strikes your spine the moment its lips wrap around L.D.C.’s mammoth member, drawing his double-ringed prick into itself. It’s a strenuous process, and for the duration of it simply sucking in his tip, you’re a spastic mess above.");
output("\n\n// Merge");
output("\n\nAnother sudden realization; another orgasm. An orgasm that makes you {squirt just a tiny bit / that makes you squirt like a twisted rag}. It’s another reminder of how high you’re riding. Your head is in a pink cloud somewhere and the socketed laquines are suffocating on your pheromones. All you do is push back further and further, sitting on them like they’re two halves of a comfortable, fuzzy throne. Their legs and thighs wiggle against yours to find a comfortable position. It’s all in vain. Obscene groans and wails break out of your lungs as you grind your captive lickers into the floor.");
output("\n\n<i>“Fuuuck <b>me</b>!”</i> L.D.C. exclaims, gasping for air. <i>“You taste great and you’re a wicked slut, whoever the hell you are!”</i> The {silly: ink-ribbun / ink-bun} pants, nibbling a [pc.clit]. <i>“I don’t care that I’m under you. Watching you shake to my tongue even though my dick should be pulling your strings is fun. You may not be screamin’ when I want, but I’m gonna savor the taste of the best pussy I’ve ever had.”</i>");
output("\n\nYour response is just to slam your excessively moist muff into his muzzle again. He’s not wrong, you’re at the mercy of his maw and moaning to his highly skilled motions.");
output("\n\nThe feel of his tongue probing into your [pc.vaginaColor] interior while your quavering walls grip his hollowed cheeks is too much. That spear of flesh works its way through your pussy while the bridge of nose grinds against your labial hood, wringing your canal of tasty girl juice. He’s stopped trying to hold on to your [pc.legs] and instead keeps those paws in and around your [pc.pussies]. There’s absolutely no strain whatsoever, leaving you free to enjoy the cunnilingual adorations of the jumper leaders.");
output("\n\n// PC big clit");
output("\n\nYou’re forced to scream - a sensory assault washes over you that showers insanity and threatens to drown you in blissful madness. The laquine captain takes great delight in teasing your [pc.clits], more than satisfied at how large they are. You seize up when he figures out how to strum you by your clitoral button{s}. You can’t help it. Your body loves him for it, and it especially loves when he coils his tongue around {it/them}.");
output("\n\n// PC cocksize clit (add on)");
output("\n\nThe moans of your muff-munching conquests are muffled further by yours when they take turns sucking on your feminine fuck-pole{s}. Tongues adapt to the shape of vaginal distension, and you’re completely dazed by the astonishing pleasure darkening your vision. The frictious sucking tears your mind to pieces, leaving you grasping for something to hold onto. For once you have to pull away. <i>“Ha, couldn’t handle it, eh?”</i> L.D.C. muses, already gripping it again and jerking in his direction.");
output("\n\n// Merge");
output("\n\nYour muscles rattle at the edge of your greatest orgasm. Lurid squelches reverberate off the walls {as you squeeze your [pc.nipples]{, launching a steaming batch of [pc.milkNoun] into the air that splatters on the slaves to your front}. {Your [pc.cocks] bulge obscenely as they dribble uselessly in the moments that follow, unloading the contents of your [pc.balls] into the hands of the waiting harem girls.}");
output("\n\nStrength waning, you fall forward, most pressure still on your back, sensing that the black-furred dildo and his creamy LT are cumming. Your [pc.pussies] feel{s} like {a} collapsing dam{s}. Gouts of [pc.girlCum] squirt and spray into their cum-soaking fur. Vaginally-slimed pelt frigs against the entrance of your fragrance-spurting cunny. The heat generated by those feverous rubs is nothing short of divine.");
output("\n\nEyes nearly rolling back, you embed the slut-buns in your nethers, scissoring them between the floor and your [pc.ass]{, masking them with your ballmusk too}. The jumpers unload onto your underbelly but mostly across their girls {after your [pc.cuntTail] is literally blown off by the high impact cumsplosion that L.D.C. just smacked it with}. The only thing carrying you through your orgasm is the force of lust pounding away at your head with every searing flash of bliss.");
output("\n\nYou’re like a {sprinkler system / a hose on full blast}, every wind up and lurch back depositing another load of girlspunk on your splayed rabbits. What their spongy fur doesn’t collect, the excess runs off of the sides, puddling and spreading further across the floor. All the duo can do is sit hapless, cumming pathetically while you wail happily atop them.");
output("\n\nBy the time it all settles down and you stand again, [pc.hands] pressed to your chest, you breathe. The pain of it all disappears in your next few shudders, regarding the self-appointed lord and lady of Zheng Shi with a smile. Their coats of fur are wholly matted in your juices and their body odors are going to be smelling of you for the weeks to come. L.D.C. doesn’t seem that upset by it either, gurgling and struggling to rise with a stupid grin writ upon his [pc.girlCumNoun]-splattered muzzle.");
output("\n\n<i>“Fuck yeah. Nothing wrong with a good pussy kissin’,”</i> he huffs, looking much too smug about it.");
output("\n\nThe Hopper, slack-mouthed and painted [pc.girlCumColor] whines when a slave jerks her softening dick, brought to an unfulfilling orgasm. She only manages a miserable scowl at her boss.");
output("\n\nWhen you gather your things, the two are finally a bit more lucid. As are you. Clear of mind, you’re ready to chart your next course.");

output("\n\n[Next]");

output("\n\n[Threesome]");
output("\n\n// Tooltip: If all these depraved laquines do is sit around getting laid, they wouldn’t mind one last round together. One you’ll be leading, whether L.D.C. likes it or not.");
output("\n\n// Tooltip, no penis: You’ll need a dick to stuff horny bunny butt with.");
output("\n\n// Requires a penis. No taurs, only real races.");
output("\n\n// Make the Hopper ride LDC vaginally, then fuck the remaining holes. You’ll pound their butts while they fuck, but if you have multidick then it’s even better. Double-stuff the hopper, too, if you’re not gigantic and have a 3rd dong. Laquines have capacious cunts.");
output("\n\n// William");

output("\n\nYeah, that’ll work. The pleasure girls deserve a good show, and your [pc.cocks] deserve{s} a good time.");
output("\n\nNodding, grinning, you {throw off your [pc.gear]} and set your [pc.weapon] to the side, stroking yourself to hardness and horniness while [pc.moving] to the {beaten / aroused} shock-bun. She casts a nervous look to you and starts opening her mouth in the slack expectation of getting facefucked.");
output("\n\n<i>“Nah,”</i> you tell her. {bimbo: <i>“Me, you, and that big boy are gonna have some fun! Why don’t you ride his dick and let me handle the rest?”</i> /bro: <i>“You and me, we’re gonna have some fun. Him too. Let’s go, hun.”</i> /kind: <i>“I wanna see how laquines do it. Show me,”</i> you point to L.D.C. /misch: <i>“Always been curious how hard laquines can fuck. Bet you can take all he’s got, too. Go on, the three of us might have some fun.”</i> /hard: <i>“Ride your boy toy, I’m taking you both at once. Be grateful I’m thinking of your pleasure, too.”</i>}");
output("\n\nBlinking, the azure bunny looks to the bed and then back to you, just in time for you to {hp: unzip and tug off that whorishly tight jumpsuit /lust: pull off what’s left of her body suit}, stealing a grope at her {cum-soaked} tit for good measure. You {hard: slap her across her face, telling her to get going /else: urge her to get up on the bed, lifting her by the arms}. <i>“Right, okay,”</i> she says bewildered.");
output("\n\nThe collared harem part like water for the languid Hopper to approach her reclining captain. {Her bulgy equipment begins to swell the closer she brings herself to L.D.C / Her swaying erection flares in light of your previous strip tease}, dragging across the bed and leaving a trail of too-potent pre. Furry knees and paws sink into the mattress, all the weight in her body cratering her path.");
output("\n\n<i>“You just want to watch us fuck, huh?”</i> the dark bunny asks, one eyebrow raised.");
output("\n\nYou shake your head. You tell him you’re not watching, you’re leading. All he needs do is sit back and relax. You instruct the pleasure-girls to do the same.");
output("\n\n<i>“Aw fuck, are you kidding me?”</i> he whines. <i>“Can’t you just take one of the <i>Viper’s</i> skanks?”</i>");
output("\n\nYou glower straight into his mismatched eyes until he shrinks meekly from your gaze. While the neon-colored laquine kisses and nuzzles his cunt-breaking mastiff into glorious tumescence, the trappy pirate’s quivering irises run across your [pc.cocks]. Whatever’s making him nervous, his hasty inspection does nothing to hamper the growth of a battleship boner being nursed into readiness.");
output("\n\n// PC cock small");
output("\n\n<i>“Heh, like anyone’d feel something that small,”</i> he grins at you, baring the two front teeth on his muzzle while gripping his honey-bun’s mohawk. <i>“I’m going to be splitting her and you’re going to be pretending like you’re having an effect on two laquines.”</i>");
output("\n\n// PC cock big");
output("\n\n<i>“And just what do you think you’re gonna do with that?”</i> the bunny-boss scowls, paw tightening around his honey-bun’s pink mohawk. <i>“She won’t feel a thing, not when I’m pleasing her better than {that/those} little thing{s} could ever hope to.”</i>");
output("\n\n// PC cock bigger");
output("\n\n<i>“You’re not gonna be able to fit in me with that, good luck,”</i> The smug boy croons, gripping his honey-bun by the neon-pink mohawk. <i>“But hey, maybe she’ll feel it. You’ll have to work pretty hard to outdo me.”</i>");
output("\n\n// PC cock biggest");
output("\n\n<i>“Hrm, you’ve got a pretty big dick yourself. I think I might get jealous. Of her. Not you,”</i> the twitchy-eared bunny grips tighter to his honey-bun’s hair. <i>“Having just one is enough for me, but I can’t deny it’s going to be interesting seein’ her getting stretched in both.”</i>");
output("\n\n// Merge");
output("\n\nYou smirk, wondering aloud what kind of sounds he’d be making if you stuck it in him{, especially as you have more than one}. Unable to fire off a witty retort, all the sissy-boy can do is stare reluctantly at your aching member{s}.");

output("\n\n[Next]");

output("\n\nWatching the Hopper work L.D.C.’s dick like a professional stripper works her pole is intensely arousing. {bimbo: You can’t help but get in there too, the ripples of his veins are too hypnotizing! <i>“Oh damn, wasn’t expecting that,”</i> L.D.C. says, wincing when you cup his finger-swallowing sack. <i>“Yeah, you’re just an empty-headed slut aren’t ya? Why don’t you settle in right there, I’ll make you the jewel on my crown.”</i> Er, right, you’re still in charge here! You pinch part of his dick between your lip and teeth to shush him.}");
output("\n\nHis twin medial rings swell out as thick as a bulbous knot, and are surely capable of leave indents in whatever hole he manages to wedge that slab of bunny-cock into. When the flat of the blue-bun’s tongue trails around one veiny side, all the spit left in its wake is smeared down that heaven-piercing rod by her diligent hand. {Yours too! You’re licking that laquine lollipop with all you’ve got!} Her movements demonstrate unerring expertise in ravishing oral service, and you {bimbo: are ecstatic that /libidoLow: are left hornier realizing /libidoMed: are secretly thrilled /libidoHigh: drool uncontrollably, utterly thrilled that} you’ve learned a thing or two about pleasing a dick. {Yum!}");
output("\n\nWhen that hole-gaping horse-boner is fully engorged, resembling an obelisk more than a normal dick, the dark-furred rabbit leans smugly back against the pillows. He sighs heavily with a commanding paw behind the Hopper’s ear. <i>“Nice work, hun. Fuck, you make it easy to forget the difficult things.”</i> {He pets you, too. <i>“You’re not so bad either, I love eager cock-sluts.”</i>}");
output("\n\nThe flat tip of his well-licked {(and tasty!)} erection isn’t just a twitching, sensitive glans. It’s a battering ram of hardened flesh, the kind that would bowl right through a throat, an ass... and especially a cervix. It wouldn’t be necessary for L.D.C. to grow a knot, his flare would form an impenetrable vacuum seal in all but the most whorish orifices.");
output("\n\nThe bunny-twink’s magnificent pillar shines with spit, and soon it’ll be beading pre. Coaxed by the heat and raw sensuality of {her/bimbo: your combined} treatment, fat wads half the size of his ground-dragging nuts collect at the summit. The Hopper slurps her palate-rinsing treat from his turgid head{, and so do you}. {The sounds have your [pc.cocks] crying out that they can be no readier. / The taste of musky laquine makes your [pc.cocks] cry out in readiness, one last desperate attempt to get your slutty mind on track!}");
output("\n\nYou slap the shock-bun on her creamy, brawny ass with enough force to make her round tits jiggle. She purrs as she rises higher and higher over L.D.C., shadowing his muzzle and the too-pleased expression it wears beneath her phallus-dominated form, dripping with potent excitement at the prospect of not just being her boy-toy’s cock-sleeve again, but yours too.");
output("\n\n<i>“That’s right, babe,”</i> he husks while she positions herself above him, <i>“just focus on me, got it?”</i> Her equine endowment stands ready to breed, the tip nestling in the underside of her swelling cleavage. There’re a few sultry moans from the reclining harem when she hefts her gurgling basketballs to expose the permanently stretched lips of her utterly claimed horse-cunt. Lips freckled by fem-slime shine in the ambient light, their dazzling refractions crying out for a tongue to claim them.");
output("\n\nL.D.C. answers the call before it’s made, and he eagerly smushes his face into his electric LT’s folds, the initial touch enough to make her moan in growing need. Her overmodded ballsack, weightier than most bosoms you’ve seen, rests snugly on his tummy.");
output("\n\nPheromones ventilate the room like her chasmic cunt floods the boy-toy’s firm body. Her scintillating emissions next to the sense-fuzzing musk of an over-endowed laquine hit your mind like a freighter - a freighter that’s spilling its cargo of sanity-erasing, hyperactive hormones. Every inhalation of sex-scented air only propagates more of the innate all-consuming desire to breed recklessly, shared across every known race. {Your womb pulses in syncopathic intensity, dilating in expectation of you claiming that divinely-endowed phallic idol for yourself and devoting your body to the purpose. You almost do.}");
output("\n\nThe need to fuck is <i>painful</i>. The atmosphere makes you think that, even after you drain your balls, you’re still going to be fucking the black and blue pirates for hours. {heat: Maybe you will. Maybe you’ll get a few loads in your pussy too. It couldn’t hurt as badly as the aggressive instinct.}");
output("\n\nYou suppress the urges crawling up your spine watching the slut-bun stand and align L.D.C’s cock with her pussy, bliss sparking across her face. A flask is produced from around a large pillow, no bigger than a toothpaste bottle. The Hopper pours a ribbon of goo across her digits, shoving her paw into her loose snatch, shivering and cooing as she works her interior with lube. Come to think of it, that container looks just like {the one you saw at the door... / what you’ve seen Kiro use...}");
output("\n\nThere’s an awed O-shape spreading on your [pc.face] like the glove of laquine cunt around the bunny boy’s enviable manhood. The Hopper’s concentration falls apart into gaspless lust, pre-soaked tongue dangling above her chin as her body sinks down onto the dick it loves most. Irises mold to hearts in a soupy haze of carnal make.");
output("\n\nInch after inch vanishes into her hole, and the lips are forced to spread just a bit wider around the first ring. <i>“Fuck yeah, babe, hold tight.”</i> L.D.C. plants his hands around the dizzied rabbit’s waspish hips, his tiny fingers holding so strong that they disappear into the bristling fur of her waist. He’d be at the typical girl’s womb by now, but cockflesh continues to caress the socket desperate to clench around it. Lurid amounts of marespunk drain from her overused pussy like a leaky pipe, more than usual seeping out thanks to the muscle’s inability to totally clench.");
output("\n\n<i>“Ah!”</i> the lapine woman squeaks, throwing her head back. A fresh rope of cum drips from her cheek - it’s but a drop in the bucket of her eagerly bulging testes.");
output("\n\nThe second medial ring enters, and by now she’s a shuddering wreck. Her legs kick against the bed - they’re hopping. Her cock-distending body’s wriggling those last inches in, bringing her crotch closer to kissing his. You manage a quiet whistle when his spunk-globules press to the derriere splaying towards you. The necessity of her lurching into a comforting moan-filled hug spreads her bubbly cheeks and reveals the candy-colored wrinkle of her asshole.");
output("\n\nL.D.C. peeks around, grinning toothily as you sidle up to stake your claim. <i>“Not to encourage you or anything, but good luck, {dick/slut}. Try not to cum too early, I like when she lasts.”</i> He turns his attentions back to the cross-eyed LT, chewing his lip and groaning with every textured rise and fall of his slut-bun’s waist.");
output("\n\nYou press your [pc.cockHead] to the Hopper’s ass, both pre-matting cheeks firmly in hand. If you’re fucking a laquine, you’ve got to fuck like one: you only do what’s necessary to keep your [pc.cock] from slipping away just before ramming her. You slam your [pc.hips] into hers, hands wrapping around her supple tits, venting all your pent-up fervor with {a slap of your [pc.balls] to her butt-cleavage / a slap of your extra dick{s} to her rump / a slap of your crotch to her colon}.");
output("\n\nThe shock-bun looses a pained wail during a needful arch of her pleasure-dominated spine, surely feeling what you’re feeling: your [pc.cockNoun] writhing against the black-bun’s hyper-sized member through her hyper-graced internals. {Your cum-pouch swings close to his, not quite heavy enough to touch. / Your sagging ballsack collides with L.D.C.’s, sinking into testicular thresh}. You tug and tweak the weapons-grade nipples between your fingers, grinding the unbalanced candy-rabbit’s ass into your personal space.");
output("\n\n<i>“H-hey, don’t you know how to treat a woman?”</i> the bunny-boy quips, but he’s just trying to distract from his inattentiveness - if he practiced what he preached, then he’d have been all over her from the start. That’s something you growl out to him after the next feral thrust into still-stretching anus.");

output("\n\n[Next]");

output("\n\nOn your fourth thrust into the Hopper’s surprisingly accepting rectum, she pleasure-seizes, two long, thick ropes of jizz flying over L.D.C.’s head and plastering the wall. A third whirls through the air when you squeeze her tits hard enough to provoke a scream{, a fourth when her ass is rubbed with the insistent pressure of your [pc.knot]}. The layer of sweat that your body secretes is like a subtle reward. It’s a soothing coolness that helps reverse direction.");
output("\n\nYour [pc.hands] fall to the LT’s waist as she tries in vain to pleasure her petite lover, rising and falling in permanently broken rhythm, both cocks inside like restraints that race to fuck this or that pretty cluster of nerves first. {Even with how small you are, there’s not much room to move with so much of her innards adapting to the double-ringed dong inside. /big: It’s not just a race, it’s a war. Her body has no idea how to handle your thickness in addition to LDC’s.}");
output("\n\nYou lift your [pc.hips] in a slow motion, gyrating forward and up, then back and down - repeat. She clenches, she wriggles, she clenches, she writhes... she’s only moving because of you. When you think about how you’re servicing both of them at once with your elegant ministrations you mentally quip.");
output("\n\n<i>“Tha...”</i> The domme-bunny’s voice is gravelly. A rumbling yowl courses through her when she leans down again, muffling her pleasured sounds. <i>“That isn’t good enough...!”</i> she sneers at you, both ears bouncing unevenly. <i>“Going slow isn’t what we were meant for!”</i>");
output("\n\nAw, and you were trying to be fair! While L.D.C. snerks in your general direction, you swivel up and grab the taunting slut by her chin. Your whole body builds strength as fast as it can, knowing it’s about to fuck like a feral beast again. If she wants it rough, then you’ll give it to her rough.");
output("\n\nHer, and him too.");
output("\n\nA muted growl reverbs inside the shock-bunny’s throat, only audible this close to her nape. Nibbling her neck, you plunge inside her stubborn rectum, unleashing all the need that’s collected inside you. The primal need to fuck claims you; the engulfing need to fuck better than LDC follows close. You press yourself forward on legs powered by laquine musk, filling her asshole with the shape of your turgid [pc.cockNoun].");
output("\n\n<i>“F-fuck!”</i> the cream-bunny shrieks on the next silky thrust, one of those mammoth medial rings deflecting off her clit. Finally getting into it, you see the black rabbit bend his pawed feet and shift to high-gear. Legs bent backwards, sitting on his thighs almost, you take a moment to marvel at the strain on his powerfully flexing muscles as he hammers her pussy in rapid breeding humps.");
output("\n\n<i>“Eyes on- me... babe!”</i> he grits his teeth, expression twisting into one of stress.");
output("\n\n<i>“Yes!”</i> the Hopper cries, L.D.C.’s hands burrowing into her muscles.");
output("\n\nThe slaves surrounding you titter and coo watching the three of you go at it like rabid whores. L.D.C. groans out a few curses and expletives directed at you while you piston in and out of her {dilating cavern, spreading it as wide as her cunt / vein-squeezing cavern, fighting the friction on top of everything else}. Cream-splotched lapine ass ripples divinely, shockwaves surging across her curves like a wave of bliss, transmitting the pleasure of intense sexual aggression right to her cunt-holstered lover-boy.");
output("\n\nAnd his thrusts, short as they are, send signals right back. You’re practically warring to please her at this point, to slake your lusts at the needy officer’s expense. Beautiful and pheromone-laden streams of rabbit-juice pour from her sodden box, sheening L.D.C’s ‘nads in hot passion that splatters onto you with every balls-deep collision. {Your/An} extra [pc.cockNoun] finds purchase in the canyon between her spunk-factories and his burly fuzzbutt}.");
output("\n\nThe way her ring clenches around your rhythmically pulsating [pc.cockNoun] is even more debilitating than the oxygen you’re running on; air so thick with overcharged libido that the passage of your dick illuminates the particles between its pre-slathered shaft and your half-lidded eyes. You spend much too long reveling in this ecstasy, fucking this endurant pirate for all she’s worth right next to her boss, admiring her ability to hold on despite it all.");
output("\n\nThat’s when you realize you can’t let them bask in it, too. <i>This is your show</i>.");
output("\n\n// PC one cock");
output("\n\nSuddenly withdrawing from the Hopper, you see her winking entrance heave without your indelible presence. The jolt of your exit results in her tumbling down into L.D.C.’s embrace, unhooking his legs and throwing him flat on the mattress - exposing his ass to you at the same time. <i>“T-the hell..?”</i> he pants.");
output("\n\n// PC multi cock");
output("\n\nAbruptly pulling back from the Hopper, the [pc.cockHead] of your anal-locked dong {spurts/squirts/streams} pre just past her milking anus before sliding free. Her candied ring protests your absence, gaping as if screaming for your return; the jolt of your sudden exit results in her collapsing atop L.D.C., unhooking his legs and flattening his body to the mattress. The dusky bun’s ass is left totally exposed for {your/an} extra dick to close in on. <i>“W-what the f...”</i> he pants.");
output("\n\n// Merge");
output("\n\nYou let him know with one [pc.hand] on his cheek and the other lifting his cum-pouch. You hoist the hapless Jumpers up to give yourself room to work. <i>“What are you doi- FUCK!”</i>");
output("\n\nThere was only a second for him to panic when {a/your}[pc.cock] prodded at the entrance to his effluvium-moistened pucker, and you thrust in just the same as you did to his honey-bun: skewering him on your [pc.cockType] lance in a gate-smashing thrust. The trappy boy screams in dismay, arms thrashing and hips bucking upwards. The cock-locked skank loses grip on her bottom’s taut tummy, slumping forward only to catch herself on his shoulders {and swing you forward just to keep both dicks inside}.");
output("\n\nThose thick and obscenely swollen nuts of his clench and strain, and you can see a massive swell in what little cockflesh protrudes from her hole. His bloating cum-vein pries apart her interior when it swells with a creamy gout of laquine cum. What splashes her womb spills right back out on the next gut-crunch.");
output("\n\nOn your next thrust he does it again, and then again. You twang him like a fiddle even though he’s spasming around your [pc.cock] so tightly you can feel pre backing up in your shaft. You’re double-teaming them so hard that you’re just fucking his black-pelt nutsack now, the thrust of [pc.cockNoun] hitting all the <i>make this bitch-boy cum</i> buttons in sequence. A slave moves in to hold his those sloshing testes up, coaxing <i>even more</i> into the mistress-rabbit’s rounding gut.");
output("\n\n{oneDick: You pull out and slam back into her /else: You pull out and slam back into them}, forcing out a stream of cream with subsequent hammers of the [pc.hip] while you relive the brutal sensations. Can’t let either of them get used to it - how else are you going to work out your <b>lagonic rut</b>!?");
output("\n\nThe audience is in awe of the way you jackhammer the two, rising higher and higher until they’re both clinging to each other lost at sea. You’re pinning them to their own bed and plowing their asses, making it abundantly clear to any who might stumble in that <i>you own them</i>. {oneDick: Premature shots of [pc.cumNoun] impregnate the Hopper’s ass before you switch. That [pc.cumColor] cord of warmth follows you into L.D.C.’s boi hole / Premature shots of [pc.cumNoun] impregnate the asses of your subs, the wickedly intense heat forcing you to pull out. You drag a [pc.cumColor] cord of seed with you that follows you right back when you catch a hissing breath}. You can feel your heart fluttering as two more splashes of warm cum plaster {his/their} stubborn insides.");
output("\n\nLaquines whine in eruptive orgasm. All the black and blue can do is cum unfulfillingly, wailing in hoarse lust as you maintain a mechanically-precise rhythm. You paw at those chubby nipples again, pulling so hard they’re reddening in pain. Your sexual organ is working in harmony with your hormonally crushed mind; your purpose is to do nothing but fuck, breed, rut. The Hopper’s spooge helicopters through the air while LDC’s slowly but surely gives her a signature cum-bump.");
output("\n\nIn a moment of mischief, you try to slip {a dick / your dick} past L.D.C.’s and squeeze a load off in the mohawked bun’s cunt{, and you manage it! The smarmy punk insulted you earlier! Who’s laughing now? It would hurt if you tried, so you just savor those satiny walls as long as you can! / but you can’t manage it with your prodigious size. That’s fine. She’s going to make a decent exercise ball when this is done!}");
output("\n\nYour knees give out, muscle control robbed by your quickening hips. Your [pc.toes] curl into the soft fabrics as beads of spit and visible puffs of heavy air bellow from your mouth. You’re whining and grunting - you’re giving it all you’ve got. {notLaquine: If laquines go hard, then you’re going harder. /pcLaquine: Laquines go hard, but you’re a shining example of their race right now.} The lurid schlucks of pre, the swelling of two bellies, and the deafening moans of the cumming hopper bring you to that euphoric edge.");
output("\n\nDominating those two {in sequence / simultaneously}, asserting as powerfully as you possibly can on the pirate king and queen of Zheng Shi... It’s fucking <b>hot</b>. Everything is so hot! You can’t feel anything in your seething loins anymore. Keening cries shake what you can perceive down to all that matters: the two bunny butts you’re stretching into loose permanence.");
output("\n\nA nebulous feeling cinches around your neck and conflagrates, a firestorm brightening every nerve below. A whimpering wheeze escapes your lips as your [pc.balls] brew up the last batch of your impending climax. The evenness once present in your biologically impelled movements falls apart midway through a muscle pinching thrust. You reach out to grab onto something, furry ass, sweat-caked arm, dick, whatever can steady you as your testes churn out seed-filled release amidst ear-splitting orgasms.");
output("\n\n// PC low cum");
output("\n\nFor however vigorous your fucking might have been, your [pc.balls] {is/are} not filling the gap as well as you’d like. You spurt a few ropes of [pc.cum] into {the Hopper / the laquines}, finding yourself trapped inside while a spunk-ball begins to weigh her down heavily. {oneDick: You frantically pull out, eager to share what you’ve got left with the ink-bun, spearing yourself into his ass and biting your tongue from the unholy pleasure of it all}. Your virility stops flowing long before theirs does.");
output("\n\n// PC plenty of cum");
output("\n\nA potent wave of masculine release soothes your muscles and calms your being. [pc.Cum] sprays through your bulging-out urethra{s}, splattering the {Hopper’s / laquines’} insides with [pc.cumVisc] spooge. Due to L.D.C.’s orgasm, she’s already swelled with a pregnant bump of laquine love, and thanks to your orgasm {and hasty hole swap}, the dark-furred bunny is experiencing the same sensation of being weighed down by another person’s cum.");
output("\n\n// PC lots of cum");
output("\n\nA cork unpops - you finally unload thanks to the inimitable relief of masculine release. The Hopper’s spunk-bump grows even wider with an ass full of [pc.cum] that surges with such force and volume that it backwashes, splattering your crotch with the excess of your molten-hot passions. {While you pull out of the candy-colored pirate, you’re hosing her, the wall, and the bed down before you spear L.D.C. on your [pc.cockNoun].} The bunny-boss’ stomach fast experiences what it’s like for anyone he wedges on to his dick, and soon both of them are dizzied bearers of tremulous, weighty cum-bumps.");
output("\n\n// PC monstrous cum");
output("\n\nThe air is sucked right out of your lungs when the first geyser of [pc.cumNoun] fires from your [pc.cockNoun]. The Hopper is silenced by the intense wad of spooge searing her innards, and utterly mind-broken by the second.");
output("\n\nHer entire backside swells out with [pc.cumVisc] seed, to say nothing of her massive belly-bump that, when she falls forward, is pressed on, resulting in an obscene backwash - no, explosion - that mixes L.D.C.’s cream with yours. On the fourth cumshot, you notice your [pc.cumColor] seed bubbling out of her nostrils and lips, the domme’s eyes rolled clean back.");
output("\n\n{You beat feet to swap holes, hosing the both of them and whatever the hell else is in the way with unparalleled virility. Spearing L.D.C.’s hole is a physiological need as much as it was a moment of sanity-erasing pleasure.} The sissy-boss groans and gargles hilted on a dick that’s channeling a flood of [pc.cum] through his petite body. You give him a huge cum-belly that wobbles against the Hopper’s, and as your balls continue to drain, your seed soon spurts right out of his slack mouth, fountaining to the incapacitated blue-bun’s lips.");
output("\n\n// Merge");
output("\n\nShudderingly cold breaths shake your mind of the temptations and wriggle you free of jumper ass. You fall back onto the bed to the {cumQuantity: golf claps / roaring applause} of surrounding slaves, feeling tender hands working out the kinks in your very sore limbs. You sputter and crawl off the bed, eager to reclaim your belongings.");
output("\n\nA few minutes pass and the mismatched laquines stir to life{, utterly painted in [pc.cumColor] {pcCumViscCheck: stickiness/creaminess}. They flop off each other, disconnecting like electronic peripherals, burbling and lamely swallowing oxygen.");
output("\n\nWith all said and done, it’s time to decide what you’re going to do next...");


output("\n\n[Drain Bunnies]");
output("\n\n// Tooltip: {pcHighStamina: After a fight like that, what better way to work out your differences than riding both those rabbits to exhaustion? /bimbo: You can’t let that big, juicy dick just walk out of here without a taste! And what about that sexy bunny? Sure she tried to hurt you, but they’re both packing some fine meat, and who knows how much cum?}");
output("\n\n// Tooltip, not bimbo or amazon: You’ll need either the endurance of a galaxy-class porn star or be a much more open-minded and depraved individual to consider this. Super sluts only, ‘kay?");
output("\n\n// Tooltip, no Vagina: {pcHighStamina: You can’t dom these two without a pussy! /bimbo: How can you wring cummies out of bunnies without a pussy!?}");
output("\n\n// Tooltip, not bipedal: You need to walk on two legs for this.");
output("\n\n// Tooltip, incompatible vagina: Your pussy’s not {capacious/elastic} enough to handle LDC’s dick!");
output("\n\n// Requires PC to be a bimbo or amazon, not be a taur and have a vagina.");
output("\n\n// Blow LDC and get DP’d, riding LDC vaginally and getting anal’d by the energizer bunny. Multivag support. They both get super exhausted by PC.");
output("\n\n// When Generic Laquine Pregnancy is implemented, this scene will impregnate the PC if they’re not already carrying. And it will be guaranteed!");
output("\n\n// William");

output("\n\n// Amazon");
output("\n\nHe’s offering you the one thing you’ve already earned, but he’s not offering you what you <i>really want</i>. That big-dicked bunny and his big-balled bottom bitch are hoping you’ll leave without getting a few rounds in. What’s up with that?");
output("\n\nYou grunt, cracking your neck and knuckles {as you worm your way out of your [pc.gear]}. Deepening arousal splashes your face with a shock of red, indicating your readiness from the top while your [pc.pussies] indicate your readiness at the bottom - by squeezing out {trickles/streams/shimmery waterfalls} of [pc.girlCumVisc] femslime {below your throbbing [pc.cocksLight]}. Very few people you’ve met have a dick like that, and you’re not letting it get away from you.");
output("\n\nAnd you’re not letting the sissy-boy it’s attached to get off so easy!");
output("\n\n<i>“H-hold on, what are you-”</i> L.D.C. stammers curiously, but is silenced by your pounce on the bed. The slave girls part like water on your approach {breast: while the bunny-boy’s eyes remain locked to your wildly flopping tits}. You stop short of his dilating semi-erection, catching a strong whiff of his vision-muddling musk. There’s no way that incredible smell came from a mod, it’s all natural laquine pheromone that’s got you salivating in raw anticipation.");
output("\n\nBefore he can say anything else, you shove the twink-pirate down and straddle him, scything his head between your [pc.legs], introducing him to your own very potent scent after resting your [pc.ass] on his face.");
output("\n\n<i>“Where oh where did a little boy like you get such a big boy like this?”</i> you ask, inching your loins closer to his twitchy nose. You take hold of his equine mastiff, marveling at its animalistic shape, its twin-ringed bestial glory. Pre streams from the summit of bunny-cock like a fountain of unceasing desire, carrying his scent right to your taste buds when you give it a lick. Spit flows from your maw unbidden while your cunny plasters L.D.C.’s brow with a smear of [pc.girlCumNoun]. It tastes far better than it smells! <i>“A sissy-boy hung like a stallion, I think you forgot where you place is. To think that that blue-babe couldn’t keep you there is quite somethin’.”</i>");
output("\n\n<i>“W-why don’t you turn around? I’ll show you where my place <b>really</b> is,”</i> he says unconvincingly, struggling to get hold of your [pc.ass] yet getting buried further into your crescent.");
output("\n\n<i>“Yeah, we’ll get to the stretching, but on <b>my terms,</b>”</i> you grip his cock, fighting its defiant pulses with the biting hold of your [pc.hands], masturbating him hard. <i>“{kind: That attitude isn’t going to work on me, horse-boy. Why don’t you use your mouth for something useful? /misch: I suggest you use what air you’ve got to please me rather than annoy me, little boy. From where I’m sittin’, the places seem just right. /hard: Keep talking, I’ll just keep grinding. Be useful, not stupid, little boy. Now get to work down there.}”</i> Moments before obscuring the floppy laquine under your waist, his tongue finds purchase of your [pc.vaginas]{, ignoring your [pc.balls] for undoubtedly spiteful reasons}.");
output("\n\nHis towering erection {height: ascends higher than you, mockingly shadowing you beneath its virile architecture / peaks perpendicular to your lips, the battering-ram of his flare staring you down / is dwarfed even in this position, looking meekly proud before your hungry visage}. His motions downstairs and the musky pheromones swirling around your brain drive you to jack him in ecstatic fashion, to familiarize yourself with every vein on this monster-cock.");
output("\n\nIt’s not what he’s doing that’s making you cream yourself, it’s the passing thoughts of stretching yourself on this beast, claiming it and claiming him for yourself.");
output("\n\nThere’s no doubt that baby-blue-bun over there, with envy and jealousy flaring in her neon eyes, is not happy about this. <i>“Stop, that’s not your...”</i> You stoke those fires with a smug grin, licking all around the tip of L.D.C.’s member to punctuate it. While she crawls over, you avail yourself to the steady surges of salty ooze flicking out onto your lips and the sheets, working casually to coat his cock and finger-swallowing ‘nads with as much pre as you can.");
output("\n\nMeanwhile, L.D.C.’s tongue is working overtime. <i>“F-fucking shlut!”</i> he whines, clapping his weak lapine paws off your unmoving ass. <i>“We’ll shee how... how... fuck!”</i> Desperate for oxygen, he abuses [pc.oneClit] {and then the rest}, drawing fat licks across your {pumped} exterior{s} while biting almost too-hard on your {clitoral bud{s} / feminine fuck pole{s}}. It’s at least enough to throw your head back and flex out another [pc.girlCumVisc] wave. He spreads your twat and packs it with as much tongue and matted fur as he can, grinding his incisors against the hood.");
output("\n\nThe black bun can’t hope to keep you shined with more spit than [pc.pussyNoun] drippings; he’s being bathed and drowned in your amazonian passions. Oh it feels great, and he’s a skilled cunt-kisser worth keeping, but you’re much too in control to be satisfied with anything less than making him your boy toy for the moment. He thrusts limply in fervent, lusty motions, perhaps trying to force his dick past your [pc.lipsChaste]. But pinned as he is, he can only dribble more pre and make a fool of himself.");
output("\n\nSheened by cock-drool, his equine fuck-club swings back and forth between your sticky palms. You tease and play with it, fantasizing about what’ll happen when you sink it in your [pc.pussyNoun]. Your temple thuds with every heartbeat - and every thumbing to your [pc.clit]; you drop a hand to his balls and squeeze one of those trembling testes. A pre-shot twirls out from his flat tip, barely missing the approaching Hopper. <i>“Nice,”</i> you remark, wedging his muzzle further into your crack with a hip-wiggle, <i>“love a boy who shoots on command. Do you really think you’re gonna be leading me around by this? You ain’t in charge, and you can only cum when I let you!”</i>");
output("\n\nThere’s a low, acute, and pleasant hum that thrums across your every vaginal muscle.  He half-groans, half-squeals into your [pc.vaginaColor] tunnel, sounds muffled by [pc.skinFurScalesNoun] and pussy-juice. His spunk-spheres jiggle and slosh between your fingers, swelling his urethra to capacity. You rub your fingers all along the girthy tube, spinning around his medial rings in asymmetrical fashion. A limp orgasm whirls out of him, plastering the sheets in front of and between his plump legs with wasted seed.");
output("\n\nSeeing the opportunity, you wrap both [pc.arms] around his gargantuan dong and thrust your body up and down. Up - you give him some precious air. Down - a rope of bunny-batter fires skyward. Up - your whole body massages his cock, forcing him to whine and squeal against your feminine furnace just before it silences him on the downstroke. Down, down, you giddily cum all over his face, framing him with your rump as {squirter: lances of} [pc.girlCumNoun] {splashes his muzzle /squirter: break on his face in long squirts}. {cock: [pc.Cum] drools out sympathetically, lacquering his tummy and sheath to a [pc.cumColor] color.}");
output("\n\n<i>“F-fuck you...!”</i> he wheezes, finally surfacing below, the slaves laughing and jeering at the floppy-eared laquine. His cock firmly in hand, you slam down against it, launching a comically thick off-white lasso across the room to the audience’s satisfaction. And your own. {silly: Home run!} You tap the side of LDC’s head, grinning at his enduring erection.");
output("\n\n<i>“Ready to be put in your place, bunny boy?”</i> you ask, already shifting positions.");
output("\n\n<i>“G-good luck, you can’t take that! Only s-she can...”</i> he says, desperately trying to maintain a commanding tone.");
output("\n\n<i>“Maybe if you keep talkin’ tough I’ll keep you for myself, I’m not seeing the love ‘tween you two!”</i> you simper, huffing as you hold tight to the bunny’s boner like a stripper her pole.");
output("\n\n// Bimbo");
output("\n\nHe’s offering you the codes to get your probe, but... The probe is nice and all, but that’s not the problem at hand. You scratch your head, trying so hard to think about what’s so distracting. There’s sex in the air, there’s naked girls, and there’s a bunny boy... Wait...");
output("\n\nNow it makes sense!");
output("\n\nYou pout your lips into a firm scowl: you’ve gone through a lot of trouble to get here and this cute as heck rabbit thinks he’s going to waddle out of here with that double-ringed pillar of juicy delicious horse cock!? <b>Who does he think he is</b>, not even offering you a cumshot or three after his bottom bitch tried to zap you? <i>Not on your watch</i>! You’ll get your inheritance (you earned it!) but first you’re getting that mouthwatering slab of horsemeat between your [pc.lipsChaste], and definitely in your [pc.pussy]!");
output("\n\nYou whine and squirm{, shaking yourself out of your [pc.gear]}. [pc.GirlCumVisc] feminine desire trickles down your [pc.thighs], squelching on your purposeful approach to the bed. <i>“W-what are you doing?”</i> L.D.C asks curiously, eyes locked to the {delightful/heaving} bounce of your [pc.breasts].");
output("\n\nYour cheeks flush brighter the closer you come to his distending erection, absorbing every thigh-soaking detail. The girth in its unready state puts smaller dicks to shame, and the flare looks bigger than a knot and quite capable of sealing cum inside a good bitch just as fine! That cunt-destroying battering-ram is waiting right there for you - <i>“Ohh...”</i> you start, voice fading to a sibilant hum of pleasure.");
output("\n\nThe slave-girls spread quietly, giving you the face-to-phallus time you want with the black bunny.");
output("\n\nLoins aquiver and lips atremble, you stop just a few inches away from his thrumming maleness. It’s just... gosh... it’s so fucking hot just being there next to it! Just looking up to it, visually worshiping and humping its blunt hardness presses out all the unimportant stuff! You’ve yet to put your mouth and hands to that unready schlong and you’re captivated by every hypnotically pulsing and bulging-out vein. Your [pc.eyes] dilate with hunger and admiration; the [pc.tongue] falls right from your supplicating mouth. [pc.Hips] wiggling, [pc.ass] raised into the air, you chew your bottom lip, faint squeals build in your throat watching that beast awaken in your needy presence.");
output("\n\nThe laquine’s powerful and undeniably musky aroma quickly courses through your system and achieves essential oneness with your bloodstream. You shiver in phallic veneration, eyes totally fixated on his dick while heavy sheath-stench swirls around your nostrils. The reverence etched on your face is something that turns hims on - it’s getting him hard <i>fast</i>. His mounting arousal only perpetuates the cycle: you get hornier and wetter as its stimulating shadow falls like a mask over your [pc.face].");
output("\n\nKnowing deep down that’s the only part of his endowment that’s gonna ‘fit’, you cream yourself harder.");
output("\n\nThe white-haired twink sits up, squinting bewildered at your prick-infatuated form, and grins. The bunny-boss’d know the look of a born slut anywhere; he’s surrounded by them, and you’re no different. <i>“Like what you see?”</i> he snickers, all too amused by your cocknosis. You nod quickly, licking your lips which never seem to remain unspotted by spit for long. <i>“Want a taste that bad?”</i>");
output("\n\nDO YOU!? {Your [pc.tails] are wagging fast enough to clear the air!} You answer with a very eager nod {that throws [pc.hairs] around} - good [pc.boyGirl]s wait for permission! Sucking dick only when asked to is the best kind of pleasure!");
output("\n\n<i>“Go ahead, slut,”</i> he huffs, <i>“suck it.”</i>");
output("\n\nEvery muscle in your body propels you forward, your [pc.lips] spreading in the lunge. LDC’s cock completes its domination of your mind: the very first thing you do is smooch his squishy cum-vein, already wondering how much bunny-batter can fill its length while delighting about your fingers sinking into its rubbery shape.");
output("\n\nYou plant your [pc.tongue] at the base of his musky member and <b>lick</b>. You lick all the way to the pre-streaming tip of his turgid meat, past the twin medial rings, sucking down a gumball of cock-juice and washing your mouth with his bestial taste - a loud gulp lets him know you’re enjoying this!");
output("\n\nYou descend, tonguing over his oversized balls. The black pelt of his weighty orbs bristles against your muscle on its exploration. Mewls and cock-thirsty moans against the groaning pirate’s smooth and wonderfully engorged sack conjure up thrumming ripples that have him arching back, totally in love with your treatment. <i>“Fuck me, I can see why the others love ball-play,”</i> he sighs happily, packed sack creasing to the worship of your skilled movements. <i>“Right there,”</i> he says, <i>“good [pc.boyGirl].”</i> Testes part in a sea of laquine love when you bury your nose into the center of the yummy boy’s squeezable plushness, intent on polishing his cum-factories to a mirror shine.");
output("\n\n// Long Tongue");
output("\n\nThankfully you got yourself a longer tongue than most! Saliva-soaked flesh coils around the inky laquine’s clenching nutsack with glee, sucking sweat and old pre from his fragrant fur with such force that he’s moaning and looking for a grip on you. <i>“Geez, I’ve heard the girls talking about ball-sluts before, but I never thought it’d feel like this,”</i> he chuckles. Meeting his eyes, you whip your tongue back, watching his balls bounce and jiggle and his head fall backward, a hissing groan of inarticulate bliss brushing past his lips.");
output("\n\n// Merge");
output("\n\nThe black rabbit’s paw lands on {animalEar: your [pc.ear], rubbing around its rim before drawing it into his palm for a more appreciative petting. / your head, {tousling locks of your [pc.hair] / his hand-fur a lovely massage against your [pc.skinFurScalesNoun]!} First you nuzzle into his touch, then his finger-swallowing pouch, and finally against his massive erection. <i>“I said...”</i> his sonorous voice trails off in a cute moan as you slobber over his medial ring. <i>“Aww, fuck, do I need to say anything? Can’t believe this...”</i>");
output("\n\nHe’s smiling, watching you adoringly from mismatched eyes with a thumb propping his cheek. <i>“I’ve got this all taken care of!”</i> you chirp. Handling dick is something you do extremely well, and you’re thrilled at his enjoyment! The Hopper behind you sure sounds jealous!");
output("\n\nYou’re guided upwards to the summit of moistened bunny-cock. So much to suck and so little time! Your [pc.pussies] {has/have} been {streaming/flooding} with ambrosial [pc.girlCumNoun] for so long the sheets are totally stained [pc.girlCumColor] with dispensed girlmusk!");
output("\n\nAll too enthused, L.D.C says <i>“Here’s your treat”</i> before bucking hips and thrusting the flare into your [pc.lips]. You bring yourself closer{, breasts: wrapping your [pc.breasts] around as much of his length as you can /else: pressing your body into his length and jacking it}. {lactate: [pc.Milk] sprinkles out with every knead and rub of your [pc.nipples], splattering his shimmery fur with [pc.milkVisc] [pc.milkColor] droplets of flavorful warmth.} <i>“D-damn, that’s amazing. Let’s see how good that throat is then!”</i>");
output("\n\nYou’re already working that shaft deeper! What’s a gag reflex? [pc.Eyes] locked to his, you hump and hop against two feet of rock-hard horse-dick, drooling and moaning luridly around the shaft you socket deeper into your gut. The heave of his mammoth dong stimulates your erogenous throat in uniquely pleasurable ways, pushing out past your currently existing adam’s apple and becoming a new spine of sorts!");
output("\n\nDeeper and deeper he goes through your throat, and you’re so close to the first ring! Oh... You’re cumming! Girljuice {sprays/squirts} out into a collecting puddle, your eyes rolling back as every inch of bedspread below is wholly soaked to the point it becomes incapable of absorbing your excess of passion. {Snakebyte: In excitement, you work your ribbed muscles around his dick, jaw beginning to stretch obscenely with the growing width of his cock. <i>“Holy shit..! What kind of throat is that!? Did you take some kind of Slyveren mod?!”</i> he cries, inadvertently shoving more savory laquine cock against the threshing of ribbed neck-nerves.}");
output("\n\n// No Snakebyte");
output("\n\nNo matter how desperate your gargling and swallowing you can’t quite reach his second ring. He’s just too wide! You’re not too concerned about that though, you’ve sucked down more of his cock than anyone else in this room could hope to! And besides, it’s not like those sluts can cum buckets from getting face fucked! Wherever the vestiges of your mind are, they’re laughing it up while your body {sprays/squirts} [pc.girlCum] {and dribbles [pc.cum]}.");
output("\n\nBut the best thing about it is that he’s cumming too. You catch a few glimpses of him whimpering and grasping at the sheets. Flare widening, a torrid bolt of cum hits you. Your shoulders flinch upwards in shock. Whatever just hit you felt as thick as the cock in your maw! And there’s so much more racing behind it, all with the ferocity of charging horses on a track!");
output("\n\n// Snakebyte");
output("\n\nThe closer you get to his crotch, the wider his cock becomes. You look for all the world like you’ve holstered a leithan, <i>and you still keep going</i>. Ribbed throat muscles masterfully massage all the prickflesh nestled between them. Your enhanced jaw stretches to accommodate the bottom half of the bunny-boy’s dick; you pass the second medial ring, feeling the pressure of his flare somewhere much too close to your stomach.");
output("\n\n<i>“Oh my f-f-fuck...!!”</i> he howls, tongue thrusting out of his mouth in shock, whipping and lashing the air like a flittering snake-muscle. You’re so close and he’s so close to cumming, but you’ve gotta get it all in there! You know you can do it! The girls around marvel at your cock-stretching form, holding their breaths at this hyper display of oral service. Three inches, watering eyes, two inches-");
output("\n\nOne last inch claimed. Your [pc.lipsChaste], stretched so much that the color fades, are pressed into L.D.C.’s crotch. The rattle in your body is his heartbeat, teasing every fiber of your being while the widening cumslit forces its way through the hole between esophagus and stomach, unloading balls-deep into your cum-hungry core. Torrid bolts of cum strike and spasm your body like lightning, filling your gut and splashing into connecting tubes. The shot makes your limbs curl and spread limp and uncontrolled, strings being thrashed about by his titanic orgasm.");
output("\n\nAfter the third cumshot, all you can really be is happy! The way he flails on the bed is just so cute! His balls clench and jostle against your weight while his body-throbbing dong robs your soul of any non-fellatio related purpose. You can’t taste a drop of it, you can’t smell anything but his masculine stench - you can’t breathe! You’re just a mewling cock holster, <i>and you love every second of it</i>.");
output("\n\n// Merge");
output("\n\nBelly sloshing with laquine cream, the sad part is upon you: dragging yourself off his hotly pulsing dick! By the time you do, at least you’re breathing just fine. You lick your cum-specked lips, cooing loudly from such a potent taste. Your belly is sooo full that it’s rising right back up your throat, and you barely stifle a spunk-scented burp.");
output("\n\n<i>“Nnnggg...”</i> L.D.C. groans breathily, still rock hard and ready to go. <i>“Is that your way of apologizing or earning or... damn...”</i>");
output("\n\n<i>“No, silly!”</i> you wag a finger, pouncing on his body, sultry intent shining in your [pc.eyes]. He looks up to you nervously, unable to settle on any expression besides confused. <i>“That’s my way of getting started!”</i>");

output("\n\n[Next]");

output("\n\nSaddling yourself on LDC was easy, but fitting him inside is going to be a challenge. Of course you’re up to it!");
output("\n\n// PC not capacious/elastic enough (no new PG)");
output("\n\nBut you’re going to be smart about this. You’re not taking that balls-deep without a little help. You glance around, and a pleasure-girl helpfully offers you a small toothpaste-sized bottle. The logo is faded, but the ‘elasticizing lube’ part isn’t. You dump the contents into your palm and smear it all throughout your [pc.pussies], the cold sensations fading into rubbery warmth. You flash your boy-toy a toothy smile.");
output("\n\n// PC is capacious/elastic enough (no new PG)");
output("\n\nAnd so is your [pc.pussy]. There’s almost no cock that you <i>can’t</i> take. You wave off a helpful harem girl offering a bottle of elasticizing lube, making LDC regard you with no small amount of shock and nervousness. You flash the waiting boy-toy a proud, toothy smile, only able to fantasize about what’s going through his mind right now.");
output("\n\n// Merge");
output("\n\nYou rise higher, draping your well-moistened cunt over the peak of LDC’s meaty mountain. The haze of laquine musk subsumes you, ironing out any remaining hesitation, leaving you well and deliriously aroused. Perfect for shimmying down on that pirate lord’s prong. You exhale, craning your neck to grin {zon: proudly /bim: lewdly} at the Hopper behind you. The candy-bun’s being held back by the slaves who are already looking for ways to play with her. {hp: That growing boner looks really fun... /lust: Her throbbing boner looks like it needs a place to go. Badly.} Maybe...");
output("\n\n{amazon: Maybe you can let her get off too. LDC’s already putty in your hands! Taking on two laquines at their own game sounds like the perfect end to this day! /bimbo: Maybe she can join too!? Oh hell yes! Looking at those painfully full balls, she needs to cum sooo badly!}");
output("\n\n<i>“{amazon: Hold up, I want her too. But first... she can watch just a little longer. /bimbo: Ooh, wait, I want her too! Just gimme a sec...}”</i>");
output("\n\n{zon: Alright! /bim: O-kay!} No more waiting around... Nerves fire the second you touch LDC’s bulging cumslit to your sopping-wet box - a squirt of pre fires into your snatch. The laquine’s blunt tip plows through your opening, flare straining against your deliciously wet walls like a mutant knot and forcing out every unkind thought. That was the easy part.");
output("\n\nThe bunny boss’s groans climb to higher pitches of pleasure, screaming out with inches claimed. What you felt was halting at first, and now your {husky/bubbly} voice is layering over his. Eyes widen all around you watching your body rock, flail, and spasm trying to take his slick prick further, your squeezing canal blocking his pre from escaping. This kind of dick was meant for a leithan! You’re already appreciating what that jumpsuit-wearing slut is capable of, because {even with your ‘skills’ / even with the lube} this is...");
output("\n\nNo, no! You can’t be thinking of anything except going down!");
output("\n\n<i>“Fffuck... You crazy slut, you’re not gonna last more than the first...”</i> he squeaks, <i>“first-!”</i> The first medial ring slips through with the most cum-provoking squelch you’ve ever experienced. <i>“D-damn!”</i> LDC swings his head left and right in frenzy, a decidedly cute moan not unlike a squeak escaping his lips.");
output("\n\n<i>“{zon: You were saying, little boy? Why don’t you go ahead and tell me how much you need me right now! /bim: Nah, this is nothin’! We haven’t gotten to the fun part yet!}”</i>");
output("\n\nIt’s like your entire organ network is rearranging to make room. His bulge is visible throughout your abdomen, <i>and it’s getting bigger.</i> You begin to lose control of your body, your muscles refusing to do what your brain says. Your brain says ‘sit still’ and they go nuts, trying to push you off of that dick. It doesn’t hurt, in fact there’s a unique kind of relief to it, but stars do you feel fuller than ever before!");
output("\n\nAnd you’re almost to that second ring! You’re taking the fattest, biggest dick on this station, and that’s all you need to care about! You’re making that pleasure-seized laquine squeal in delight, crying out expletives and babble in equal measure. The horse-bunny’s meat stretches you into a whole new realm of stimulation, leaving a permanent and indelible mark on your poor, abused [pc.pussyNoun] when that second cock-halo is devoured by your impossibly fitting cavern. It’s not just stroking every ounce of you, it’s <i>molding you</i>. Litanies of disbelief bounce off the walls and your beautifully writhing form.");
output("\n\nThe spurts of pre and cum inside intensify, unlike any male orgasm you’re used to. It’s just his body reacting ecstatically to the pleasure it’s receiving. The iron-hard throbbing in his dick is unerringly ruthless, beating a steady rhythm into you: you, just a full-body decoration for his totem. Your descent is ceremonious, driven, and full of discomfort and pleasure binding together to form an indescribably erotic sensation. <i>“F-f-fuu... Fuuck! Augghh, this isn’t-”</i>");
output("\n\nIt doesn’t end with a whimper, but with an ecstatic splatter that echoes off the walls. Your merciless groin sets loudly on to his, his lust-fattened ballsack jiggling against the lower end of your crack. You lurch forward, gaspless and amorous, slowly sawing your entire torso with his hyper-sized cock, left to wonder if he’s about to cum straight into your heart. Your violently milking interior is surely expediting his rise to climax if not. {cock: [pc.CumNoun] shoots out completely unnoticed from your [pc.cocksLight], coloring the insensate laquine’s face with a few erotic stripes.}");
output("\n\nNo time to waste, you move slowly, mouth totally agape; huge, thick, heated breaths press from your lungs like a medieval bellows. You can’t put voice or thought to anything you’re feeling now. Being spread like this was no doubt considered impossible! Everything condenses down to the rhythmic tightening and pulsating not just in your crotch, but your torso as a whole.");
output("\n\n<i>You’ve claimed him.</i> You’re mounted on the biggest pole on Zheng Shi, riding it (or at least trying to) and <i>fucking void</i> does it feel <b>awesome!!</b>");
output("\n\nThrough his tender hardness every pulse and heartbeat thuds against your core, a keenly felt jerking sensation that bounces you, makes you curl and flinch uncontrollably. It pounds a tempo into you, one your body dances to. It’s not just your stressed and overstretched pussy-walls flexing to the harsh internal stimulation, it’s <i>fucking everything.</i> You grip his shoulders, watching his cottontail wagging with a blur, barely rising before slamming your [pc.hips] back into his with shocking force.");
output("\n\n<i>“{zon: G-go on, say it. Let everyone know how your mistress makes you feel, sissy boy! /bim: Look, it’s all mine now!}”</i> you squeal, one eye closed.");
output("\n\n<i>“{zon: <i>“A-ah... Fuck! I love it! There, are you happy!? I can’t take this... Fuck me! Please! /bim: You’re a total... ah... f-f-fuck me! Please, I can’t take this!}”</i> he cries in heaving surrender.");
output("\n\nYou caress his gigantic cock through your middle, grunting when it yanks you hard. You lean forward, grabbing him by the tiny shoulders, abusing him and being abused in equal measure. You’re so enamored by the pillar of dick in your body that you murmur nothings to cope with the strange pleasure. Behind you, the hopper finally crawls over, growling your ear as she thrusts her much more <i>normal</i> cock through the valley of your [pc.ass].");
output("\n\n<i>“{zon: About time, honey bun. Why don’t you go ahead and show me how ‘ya feel about being the lesser girl here? /bim: Oohh, you feel worked up!”</i> You reach a hand back to spread your cheeks, cooing <i>“Then don’t keep me waiting, big girl!}”</i>");
output("\n\n<i>“{zon: I’ll show you lesser when I’m...”</i> The Hopper thrusts indignantly into your [pc.asshole]. <i>“...When I’m turning you into a cum bubble! /bim: You want him, you get me too...”</i> She growls, thrusting indignantly into your [pc.asshole]. <i>“...I’m gonna fill you until you’re just a cum bubble, slut!}”</i> {zon: You can’t deny her energy is already firing you up! /bim: Fuck yes! Every drop in her balls too? <i>Aren’t you just the luckiest slut to get two laquine’s hosing you down?</i>");
output("\n\nThe Hopper’s legs catapult her forward and quickly settle into a series of gyrations that’d put the precision of machinery to shame. The azure bunny reams you with such speed and force that her tremendously gravid and fuzzy nutsack doesn’t flop back and forth as you would expect. That lust-fattened cum-bag merely hovers and jiggles an inch or two from the [pc.skinFurScales] of your [pc.ass] - it’s a closeness that chucks hormones and adrenaline through your body. The sheer testicular presence she maintains back there is absolutely arousing - it’s an all new force of nature that’s fucking your fight-or-flight reaction.");
output("\n\nYour thoughts immediately drift to her plastering you, L.D.C., and the entire bed in a wave of laquine sperminess that’d put her entire race to shame. But mostly, you think about what it’d be like trying to take possession of those unstable spunk-reactors on your own time...");
output("\n\n<i>“Think you can just come in here... Walk all over us...? Think again!”</i> Not to be outdone, you ignore the firm paws on your waist and continue to bury the inky boy into his mattress, gritting your teeth the whole way. One deep and extremely fast thrust after the other, the pent-up shock-rabbit is making you moan louder and louder. Slap, slap, thump, fwump, she channels all of her ire and desire into your butt, practically fucking you and her little lover simultaneously.");
output("\n\n// PC multi vagina (2 pussies)");
output("\n\nSeeing the extra hole{s} unused next to LDC’s insertion, you squeak when the lapine humper withdraws from your chute and slams herself into your unclaimed [pc.pussyNoun], the abruptness and curling pressure forcing her to shoot right into your ancillary womb. <i>“You wanted to fuck us that bad? I’ve got plenty to spare, bitch!”</i> she growls, her dick inflating to the point that it seals itself in your hole while it dumps a gallon or two of lapine nut-butter inside. By the time that hole milks her thoroughly, she’s already pulled out, baring her throbbing bitch-inflater to the air.");
output("\n\n// PC multi vagina (3 pussies, add-on)");
output("\n\n...And she’s stuffing your third [pc.pussyNoun] with that spunk-stained rod, writhing and howling, her muscular breeder’s thighs <i>whapping</i> into you with hostile and totally reckless abandon. Your [pc.tongue] falls from your mouth as you let the domme-rabbit take control, impregnating your third womb with another ecstatic and spite-rushed orgasm. <i>“I don’t use sterilex,”</i> she grunts into your neck{, tugging on your [pc.hair]}. <i>“When you have my kids, I’ll come and find them, make them part of my crew...! Maybe next time I’ll make you my personal breeder...!”</i> Another brawny load shatters your coherency.");
output("\n\n// Merge");
output("\n\n{multiPussy: Satisfied, the zap-rabbit reclaims your colon.} An avalanche of juice floods down the sides of LDC’s cock, your [pc.pussy] finally adapting (miraculously) to his intrusion. You don’t need to hold onto anything anymore, only enjoy the thickening cocks inside. You lick your lips, simply bucking up and down into the sexually frustrated rabbits. The black bun fights to stay lucid while the blue bun fucks away her anger. All’s good, you think, because you can’t believe how good it all feels. You’re getting all the fat loads you deserve, you’re wringing out the best orgasms from ‘em, all with a pleased expression on your [pc.face].");
output("\n\nYour [pc.pussies] strain{s} and flood{s}, oozing mixed cum into musky crotches. <i>“C’monnn, you two can do better than this!”</i> you chirp, a mischievous smile cresting your blissed features. <i>“I’m soo close to cumming, where are you?”</i> One [pc.hand] around LDC’s ears and the other on his balls, you laugh a happy, {triumphant/bubbly} laugh as you throw him into orgasm. The Hopper’s hand {longOrScritchEars: ends up around your [pc.ears] / on your head} doing much the same. Their voices quake into you, weaker effects compared to the hard, intense throbbings of their dicks.");
output("\n\nThe only warning you get of your conquest geysering is the eye-dilating hoarseness projecting from his muzzle. Something hits you. Not just hit. You’re <i>pulverized</i> by just the first cumshot. <i>“Ahhh, ah fuuuuuck!”</i> LDC says, groaning between limp upward thrusts. Thick gobs of seed don’t spurt or stream, they rocket from the black bunny’s semen-stuffed nads. Your hands ball and your eyes roll back. The pressure from just his was monumental enough, but then...");
output("\n\nThere’s... a taste in your mouth. You realize all too quickly what musky laquine semen tastes like as salty hardness surges up your throat and down your chin to your [pc.chest].");
output("\n\n<i>“It’s coming, you feel that..!? My girls wish they could cum this fuckingggg hhhaaaaardd!!”</i> The bunny-bitch you had to get around just hilted her rod in you, and all the weight of her modded up balls flows through your inhumanly inflated body. You’re more cum than [pc.race]. {notLaquine: All of the bunny-batter pumped into you certainly makes you an honorary laquine!} Dizziness and ecstasy vie for control of your mental remnants as the combined virility of two unimaginably gifted hyper-bunnies replaces all the blood in your body with cum and more cum.");
output("\n\nYou gargle, moaning in mindless bliss, gurgling and babbling over waves of bubbly-hot rabbit-spunk. It doesn’t seem to have an end. There doesn’t seem to be an end to the heart-gripping climax at the center of you. Yes, you’re creaming all over LDC, but it’s so distant and unnoticeable compared to his oceanic expulsion. {cocks: However, your [pc.cocksLight] are certainly making an attempt, {cumQ: firing off a few bouncy ropes of / pushing out a few long spurts of / blanketing your bottom boy with an equal wave of} [pc.cum].}");
output("\n\n// Big enough dick");
output("\n\nYou can’t let that be wasted. Their seed’s going places but yours isn’t! You reach down, with strength you weren’t sure you had, and shove LDC onto the [pc.cockHead] of your numbly thrumming [pc.cockNoun].");
output("\n\n// Merge");
output("\n\nYou are so thoroughly soaked and filled by this point and you don’t care one bit...");
output("\n\n...Because you weren’t intending to stop at one round. {zon: It’s not long before you can breathe again and you’re energized by your own release. /bim: Your own release refreshes your mind, and breathing becomes simple again. There’s so much cum to take, how can you stop?}");
output("\n\nBy the time their voices reduce in volume, your body unthinkingly prepares to keep going, stuffed to the brim and gravid with copious amounts of alien seed filling its every nook and cranny. There’s nothing but pleasure and more pleasure. Their balls clench against your lower waist, bouncing, yearning to dump more inside you. You can sense the warmth of their goo through places it was never meant to flow. The simplest movements caress LDC’s hypersensitive mast until he’s reacting again, far more interested in another cream filling than he is in being glued to your lust-imbued cunt.");
output("\n\n<i>“W-wait.. No! You c-can’t... Oh ff...”</i> LDC whines, seeing you move up, and down again. There’s nothing that could have prepared him for you.");

output("\n\n[Next]");

output("\n\nTwo laquines, black and blue furred, shudder after much too many orgasms. <i>“Ah... Shit... I-I can’t... [pc.HeShe]’s too m-much...”</i> The spent Hopper flops from your [pc.asshole], caked in an alabaster coat spun from several flustered climaxes. <i>“How aren’t you tired...?”</i>");
output("\n\nRemoving LDC from your overstretched confines is a simpler task than taking it, but goodness do you feel so... empty... without him inside. Cum waterfalls from your ludicrously distended twat{s}, pouring out onto them and the sheets. <i>“B-b-buh... W-where are we...”</i> he says.");
output("\n\nThey’re both such a mess! As for you, you simply sigh contentedly, rubbing your bulky, round belly, already feeling pregnant with hundreds of little rabbit-eared munchkins. It would take this entire room of pleasure girls to maybe get halfway to draining those two as you have, but you did it all yourself and you <i>still</i> don’t mind going a little longer!");
output("\n\nOh well, you’ve got things to do, and getting dick-stuffed by two rabbits was a welcome diversion. Now, what about that probe...");
