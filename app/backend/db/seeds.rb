puts "🌱 Seeding spices..."

# Seed your database here

# CREATE AUTHORS
author1 = Author.create(name: "Adam Lindsay Gordon")
author2 = Author.create(name: "Alan Seeger")
author3 = Author.create(name: "Alexander Pope")
author4 = Author.create(name: "Algernon Charles Swinburne")
author5 = Author.create(name: "Ambrose Bierce")
author6 = Author.create(name: "Amy Levy")
author7 = Author.create(name: "Andrew Marvell")
author8 = Author.create(name: "Ann Taylor")
author9 = Author.create(name: "Anne Bradstreet")
author10 = Author.create(name: "Anne Bronte")
author11 = Author.create(name: "Ben Jonson")
author12 = Author.create(name: "Matthew Prior")
author13 = Author.create(name: "Robert Burns")
author14 = Author.create(name: "Lord Byron")
author15 = Author.create(name: "George Gordon")
author16 = Author.create(name: "Edward Thomas")



# CREATE CATEGORIES
category1 = Category.create(name: "sad")
category2 = Category.create(name: "love")
category3 = Category.create(name: "grief")
category4 = Category.create(name: "happy")
category5 = Category.create(name: "confused")
category6 = Category.create(name: "life")
category7 = Category.create(name: "marriage")
category8 = Category.create(name: "courage")
category9 = Category.create(name: "dissapointed")
category10 = Category.create(name: "birthday")
category11 = Category.create(name: "praise")


# CREATE POEMS 
poem1 = Poem.create(title: "To Mr John Moore, Author of the Celebrated Worm-Powder", 
    body: [
        "   How much, egregious Moore, are we",
        "     Deceived by shows and forms!",
        "   Whate'er we think, whate'er we see,",
        "     All humankind are worms.",
        "",
        "   Man is a very worm by birth,",
        "     Vile reptile, weak and vain!",
        "   A while he crawls upon the earth,",
        "     Then shrinks to earth again.",
        "",
        "   That woman is a worm, we find",
        "     E'er since our grandame's evil;",
        "   She first conversed with her own kind,",
        "     That ancient worm, the Devil.",
        "",
        "   The learn'd themselves we book-worms name,",
        "     The blockhead is a slow-worm;",
        "   The nymph whose tail is all on flame,",
        "     Is aptly term'd a glow-worm:",
        "",
        "   The fops are painted butterflies,",
        "     That flutter for a day;",
        "   First from a worm they take their rise,",
        "     And in a worm decay.",
        "",
        "   The flatterer an earwig grows;",
        "     Thus worms suit all conditions;",
        "   Misers are muck-worms, silk-worms beaux.",
        "     And death-watches, physicians.",
        "",
        "   That statesmen have the worm, is seen",
        "     By all their winding play;",
        "   Their conscience is a worm within,",
        "     That gnaws them night and day.",
        "",
        "   Ah, Moore! thy skill were well employ'd,",
        "     And greater gain would rise,",
        "   If thou couldst make the courtier void",
        "     The worm that never dies!",
        "",
        "   O learnèd friend of Abchurch Lane,",
        "     Who sett'st our entrails free!",
        "   Vain is thy art, thy powder vain,",
        "     Since worms shall eat even thee.",
        "",
        "   Our fate thou only canst adjourn",
        "     Some few short years--no more;",
        "   Even Button's Wits to worms shall turn,",
        "     Who maggots were before."
    ],
    authors_id: author3.id,
    categories_id: category9.id
)

poem2 = Poem.create(
    title: "To The Memory Of My Beloved, The Author, Mr William Shakespeare, And What He Hath Left Us", 
    body: [
        "To draw no envy, Shakespeare, on thy name",
        "Am I thus ample to thy book and fame;",
        "While I confess thy writings to be such",
        "As neither Man nor Muse can praise too much.",
        "'Tis true, and all men's suffrage. But these ways",
        "Were not the paths I meant unto thy praise;",
        "For silliest ignorance on these may light,",
        "Which when it sounds at best but echoes right;",
        "Or blind affection, which doth ne'er advance",
        "The truth, but gropes, and urges all by chance;",
        "Or crafty malice might pretend this praise,",
        "And think to ruin where it seemed to raise.",
        "These are as some infamous bawd or whore",
        "Should praise a matron. What could hurt her more?",
        "But thou art proof against them, and indeed",
        "Above th' ill fortune of them, or the need.",
        "I therefore will begin: Soul of the Age!",
        "The applause, delight, the wonder of our stage!",
        "My Shakespeare, rise; I will not lodge thee by",
        "Chaucer, or Spenser, or bid Beaumont lie",
        "A little further, to make thee a room:",
        "Thou art a monument without a tomb,",
        "And art alive still, while thy book doth live,",
        "And we have wits to read, and praise to give.",
        "That I not mix thee so, my brain excuses,",
        "I mean with great but disproportioned Muses,",
        "For if I thought my judgement were of years,",
        "I should commit thee surely with thy peers,",
        "And tell how far thou didst our Lyly outshine,",
        "Or sporting Kyd, or Marlowe's mighty line.",
        "And though thou hadst small Latin and less Greek,",
        "From thence to honour thee I would not seek",
        "For names; but call forth thundering Aeschylus,",
        "Euripides, and Sophocles to us,",
        "Pacuvius, Accius, him of Cordova dead,",
        "To live again, to hear thy buskin tread,",
        "And shake a stage; or, when thy socks were on,",
        "Leave thee alone for the comparison",
        "Of all that insolent Greece or haughty Rome",
        "Sent forth, or since did from their ashes come.",
        "Triumph, my Britain, thou hast one to show",
        "To whom all scenes of Europe homage owe.",
        "He was not of an age, but for all time!",
        "And all the Muses still were in their prime",
        "When, like Apollo, he came forth to warm",
        "Our ears, or, like a Mercury, to charm!",
        "Nature herself was proud of his designs,",
        "And joyed to wear the dressing of his lines!",
        "Which were so richly spun, and woven so fit,",
        "As, since, she will vouchsafe no other wit.",
        "The merry Greek, tart Aristophanes,",
        "Neat Terence, witty Plautus, now not please;",
        "But antiquated and deserted lie,",
        "As they were not of Nature's family.",
        "Yet must I not give Nature all; thy art,",
        "My gentle Shakespeare, must enjoy a part.",
        "For though the poet's matter nature be,",
        "His art doth give the fashion; and that he",
        "Who casts to write a living line must sweat",
        "(Such as thine are) and strike the second heat",
        "Upon the Muses' anvil; turn the same,",
        "And himself with it, that he thinks to frame,",
        "Or for the laurel he may gain a scorn;",
        "For a good poet's made as well as born.",
        "And such wert thou. Look how the father's face",
        "Lives in his issue, even so the race",
        "Of Shakespeare's mind and manners brightly shines",
        "In his well turned and true-filed lines:",
        "In each of which he seems to shake a lance,",
        "As brandished at the eyes of ignorance.",
        "Sweet swan of Avon! what a sight it were",
        "To see thee in our waters yet appear,",
        "And make those flights upon the banks of Thames,",
        "That did so take Eliza and our James!",
        "But stay, I see thee in the hemisphere",
        "Advanced, and made a constellation there:",
        "Shine forth, thou Star of Poets, and with rage,",
        "Or influence, chide or cheer the drooping stage,",
        "Which, since thy flight from hence, hath mourned like night,",
        "And despairs day, but for thy volume's light."
    ],
    authors_id: author11.id,
    categories_id: category3.id
)
    
poem3 = Poem.create(
    title: "To a Child of Quality, Five Years Old, 1704. The Author then Forty",
    body: [
    "LORDS, knights, and squires, the numerous band",
    "   That wear the fair Miss Mary's fetters,",
    "Were summoned by her high command",
    "   To show their passions by their letters.",
    "",
    "My pen amongst the rest I took,",
    "   Lest those bright eyes, that cannot read,",
    "Should dart their kindling fire, and look",
    "   The power they have to be obey'd.",
    "",
    "Nor quality, nor reputation,",
    "   Forbid me yet my flame to tell;",
    "Dear Five-years-old befriends my passion,",
    "   And I may write till she can spell.",
    "",
    "For, while she makes her silkworms beds",
    "   With all the tender things I swear;",
    "Whilst all the house my passion reads,",
    "   In papers round her baby's hair;",
    "",
    "She may receive and own my flame;",
    "   For, though the strictest prudes should know it,",
    "She'll pass for a most virtuous dame,",
    "   And I for an unhappy poet.",
    "",
    "Then too, alas! when she shall tear",
    "   The rhymes some younger rival sends,",
    "She'll give me leave to write, I fear,",
    "   And we shall still continue friends.",
    "",
    "For, as our different ages move,",
    "   'Tis so ordain'd (would Fate but mend it!),",
    "That I shall be past making love",
    "   When she begins to comprehend it."
    ],
    authors_id: author12.id,
    categories_id: category4.id
)

poem4 = Poem.create(
    title: "395. Sonnet on the Author’s Birthday",
    body: [
    "SING on, sweet thrush, upon the leafless bough,",
    "  Sing on, sweet bird, I listen to thy strain,",
    "  See aged Winter, ’mid his surly reign,",
    "At thy blythe carol, clears his furrowed brow.",
    "",
    "",
    "So in lone Poverty’s dominion drear,",
    "  Sits meek Content with light, unanxious heart;",
    "  Welcomes the rapid moments, bids them part,",
    "Nor asks if they bring ought to hope or fear.",
    "",
    "",
    "I thank thee, Author of this opening day!",
    "  Thou whose bright sun now gilds yon orient skies!",
    "  Riches denied, thy boon was purer joys—",
    "What wealth could never give nor take away!",
    "",
    "",
    "Yet come, thou child of poverty and care,",
    "The mite high heav’n bestow’d, that mite with thee I’ll share."
    ],
    authors_id: author13.id,
    categories_id: category10.id
   
)
   
poem5 = Poem.create(
        title: "On the Death of a Young Lady, Cousin to the Author, and Very Dear to Him",
        body: [
        "Hush'd are the winds, and still the evening gloom,",
        "  Not e'en a zephyr wanders through the grove,",
        "Whilst I return to view my Margaret's tomb,",
        "  And scatter flowers on the dust I love.",
        "",
        "Within this narrow cell reclines her clay,",
        "  That clay, where once such animation beam'd;",
        "The King of Terrors seiz'd her as his prey;",
        "  Not worth, nor beauty, have her life redeem'd.",
        "",
        "Oh! could that King of Terrors pity feel,",
        "  Or Heaven reverse the dread decree of fate,",
        "Not here the mourner would his grief reveal,",
        "  Not here the Muse her virtues would relate.",
        "",
        "But wherefore weep? Her matchless spirit soars",
        "  Beyond where splendid shines the orb of day;",
        "And weeping angels lead her to those bowers,",
        "  Where endless pleasures virtuous deeds repay.",
        "",
        "And shall presumptuous mortals Heaven arraign!",
        "  And, madly, Godlike Providence accuse!",
        "Ah! no, far fly from me attempts so vain;--",
        "  I'll ne'er submission to my God refuse.",
        "",
        "Yet is remembrance of those virtues dear,",
        "  Yet fresh the memory of that beauteous face;",
        "Still they call forth my warm affection's tear,",
        "  Still in my heart retain their wonted place."
        ],
        authors_id: author14.id && author15.id,
        categories_id: category3.id
)   

poem6 = Poem.create(
        title: "To a Lady Who Presented to the Author a Lock of Hair Braided With His Own, and Appointed a Night in December to Meet Him in the Garden",
        body: [
        "These locks, which fondly thus entwine,",
        "In firmer chains our hearts confine,",
        "Than all th' unmeaning protestations",
        "Which swell with nonsense, love orations.",
        "Our love is fix'd, I think we've prov'd it;",
        "Nor time, nor place, nor art have mov'd it;",
        "Then wherefore should we sigh and whine,",
        "With groundless jealousy repine;",
        "With silly whims, and fancies frantic,",
        "Merely to make our love romantic?",
        "Why should you weep, like _Lydia Languish_,",
        "And fret with self-created anguish?",
        "Or doom the lover you have chosen,",
        "On winter nights to sigh half frozen;",
        "In leafless shades, to sue for pardon,",
        "Only because the scene's a garden?",
        "For gardens seem, by one consent,",
        "(Since Shakespeare set the precedent;",
        "Since Juliet first declar'd her passion)",
        "To form the place of assignation.",
        "Oh! would some modern muse inspire,",
        "And seat her by a _sea-coal_ fire;",
        "Or had the bard at Christmas written,",
        "And laid the scene of love in Britain;",
        "He surely, in commiseration,",
        "Had chang'd the place of declaration.",
        "In Italy, I've no objection,",
        "Warm nights are proper for reflection;",
        "But here our climate is so rigid,",
        "That love itself, is rather frigid:",
        "Think on our chilly situation,",
        "And curb this rage for imitation.",
        "Then let us meet, as oft we've done,",
        "Beneath the influence of the sun;",
        "Or, if at midnight I must meet you,",
        "Within your mansion let me greet you:",
        "'There', we can love for hours together,",
        "Much better, in such snowy weather,",
        "Than plac'd in all th' Arcadian groves,",
        "That ever witness'd rural loves;",
        "'Then', if my passion fail to please,",
        "Next night I'll be content to freeze;",
        "No more I'll give a loose to laughter,",
        "But curse my fate, for ever after."
        ],
        authors_id: author14.id && author15.id,
        categories_id: category6.id
)
  
Poem7 = Poem.create(
        title: "Answer to a Beautiful Poem, Written by Montgomery, Author of \"the Wanderer of Switzerland,\" Etc., Entitled \"the Common Lot.\"",
        body: [
        "Montgomery! true, the common lot",
        "  Of mortals lies in Lethe's wave;",
        "Yet some shall never be forgot,",
        "  Some shall exist beyond the grave.",
        "",
        "\"Unknown the region of his birth,\"",
        "  The hero rolls the tide of war;",
        "Yet not unknown his martial worth,",
        "  Which glares a meteor from afar.",
        "",
        "His joy or grief, his weal or woe,",
        "  Perchance may 'scape the page of fame;",
        "Yet nations, now unborn, will know",
        "  The record of his deathless name.",
        "",
        "The Patriot's and the Poet's frame",
        "  Must share the common tomb of all:",
        "Their glory will not sleep the same;",
        "  'That' will arise, though Empires fall.",
        "",
        "The lustre of a Beauty's eye",
        "  Assumes the ghastly stare of death;",
        "The fair, the brave, the good must die,",
        "  And sink the yawning grave beneath.",
        "",
        "Once more, the speaking eye revives,",
        "  Still beaming through the lover's strain;",
        "For Petrarch's Laura still survives:",
        "  She died, but ne'er will die again.",
        "",
        "The rolling seasons pass away,",
        "  And Time, untiring, waves his wing;",
        "Whilst honour's laurels ne'er decay,",
        "  But bloom in fresh, unfading spring.",
        "",
        "All, all must sleep in grim repose,",
        "  Collected in the silent tomb;",
        "The old, the young, with friends and foes,",
        "  Fest'ring alike in shrouds, consume.",
        "",
        "The mouldering marble lasts its day,",
        "  Yet falls at length an useless fane;",
        "To Ruin's ruthless fangs a prey,",
        "  The wrecks of pillar'd Pride remain.",
        "",
        "What, though the sculpture be destroy'd,",
        "  From dark Oblivion meant to guard;",
        "A bright renown shall be enjoy'd,",
        "  By those, whose virtues claim reward.",
        "",
        "Then do not say the common lot",
        "  Of all lies deep in Lethe's wave;",
        "Some few who ne'er will be forgot",
        "  Shall burst the bondage of the grave."
        ],
        authors_id: author14.id && author15.id,
        categories_id: category6.id
)   

poem8 = Poem.create(
        title: "Lines.  Addressed to the Rev. J. T. Becher, on His Advising the Author to Mix More With Society",
        body: [
        "Dear BECHER, you tell me to mix with mankind;",
        "  I cannot deny such a precept is wise;",
        "But retirement accords with the tone of my mind:",
        "  I will not descend to a world I despise.",
        "",
        "Did the Senate or Camp my exertions require,",
        "  Ambition might prompt me, at once, to go forth;",
        "When Infancy's years of probation expire,",
        "  Perchance, I may strive to distinguish my birth.",
        "",
        "The fire, in the cavern of Etna, conceal'd,",
        "  Still mantles unseen in its secret recess;",
        "At length, in a volume terrific, reveal'd,",
        "  No torrent can quench it, no bounds can repress.",
        "",
        "Oh! thus, the desire, in my bosom, for fame",
        "  Bids me live, but to hope for Posterity's praise.",
        "Could I soar with the Phoenix on pinions of flame,",
        "  With him I would wish to expire in the blaze.",
        "",
        "For the life of a Fox, of a Chatham the death,",
        "  What censure, what danger, what woe would I brave!",
        "Their lives did not end, when they yielded their breath,",
        "  Their glory illumines the gloom of their grave",
        "",
        "Yet why should I mingle in Fashion's full herd?",
        "  Why crouch to her leaders, or cringe to her rules?",
        "Why bend to the proud, or applaud the absurd?",
        "  Why search for delight, in the friendship of fools?",
        "",
        "I have tasted the sweets, and the bitters, of love,",
        "  In friendship I early was taught to believe;",
        "My passion the matrons of prudence reprove,",
        "  I have found that a friend may profess, yet deceive.",
        "",
        "To me what is wealth?--it may pass in an hour,",
        "  If Tyrants prevail, or if Fortune should frown:",
        "To me what is title?--the phantom of power;",
        "  To me what is fashion?--I seek but renown.",
        "",
        "Deceit is a stranger, as yet, to my soul;",
        "  I, still, am unpractised to varnish the truth:",
        "Then, why should I live in a hateful controul?",
        "  Why waste, upon folly, the days of my youth?"
        ],
        authors_id: author14.id && author15.id,
        categories_id: category6.id
)
  
poem9 = Poem.create(
        title: "To the Author of a Sonnet",
        body: [
        "Thy verse is \"sad\" enough, no doubt:",
        "  A devilish deal more sad than witty!",
        "Why we should weep I can't find out,",
        "  Unless for _thee_ we weep in pity.",
        "",
        "Yet there is one I pity more;",
        "  And much, alas! I think he needs it:",
        "For he, I'm sure, will suffer sore,",
        "  Who, to his own misfortune, reads it.",
        "",
        "Thy rhymes, without the aid of magic,",
        "  May _once_ be read--but never after:",
        "Yet their effect's by no means tragic,",
        "  Although by far too dull for laughter.",
        "",
        "But would you make our bosoms bleed,",
        "And of no common pang complain--",
        "If you would make us weep indeed,",
        "Tell us, you'll read them o'er again."
        ],
    authors_id: author14.id && author15.id,
    categories_id: category1.id
)
 
poem10 = Poem.create(
        title: "March the Third (the Author's Birthday)",
        body: [
        "HERE again (she said) is March the third",
        "And twelve hours singing for the bird",
        "'Twixt dawn and dusk, from half past six",
        "To half past six, never unheard.",
        "",
        "'Tis Sunday, and the church-bells end",
        "When the birds do. I think they blend",
        "Now better than they will when passed",
        "Is this unnamed, unmarked godsend.",
        "",
        "Or do all mark, and none dares say,",
        "How it may shift and long delay,",
        "Somewhere before the first of Spring,",
        "But never fails, this singing day?",
        "",
        "And when it falls on Sunday, bells",
        "Are a wild natural voice that dwells",
        "On hillsides; but the birds' songs have",
        "The holiness gone from the bells.",
        "",
        "This day unpromised is more dear",
        "Than all the named days of the year",
        "When seasonable sweets come in,",
        "Because we know how lucky we are."
    ],
    authors_id: author16.id,
    categories_id: category4.id
)
   
    
poem11 = Poem.create(
    title: "To the Author of a Poem Entitled Successio.",
    body: [
    "Begone, ye critics, and restrain your spite,",
    "Codrus writes on, and will for ever write.",
    "The heaviest Muse the swiftest course has gone,",
    "As clocks run fastest when most lead is on;",
    "What though no bees around your cradle flew,",
    "Nor on your lips distill'd the golden dew,",
    "Yet have we oft discover'd in their stead",
    "A swarm of drones that buzz'd about your head.",
    "When you, like Orpheus, strike the warbling lyre,",
    "Attentive blocks stand round you and admire.",
    "Wit pass'd through thee no longer is the same,",
    "As meat digested takes a different name,",
    "But sense must sure thy safest plunder be,",
    "Since no reprisals can be made on thee.",
    "Thus thou may'st rise, and in thy daring flight",
    "(Though ne'er so weighty) reach a wondrous height.",
    "So, forced from engines, lead itself can fly,",
    "And ponderous slugs move nimbly through the sky.",
    "Sure Bavius copied Maevius to the full,",
    "And Chaerilus taught Codrus to be dull;",
    "Therefore, dear friend, at my advice give o'er",
    "This needless labour; and contend no more",
    "To prove a _dull succession_ to be true,",
    "Since 'tis enough we find it so in you."
    ],
    authors_id: author3.id,
    categories_id: category6.id
)
    
poem12 = Poem.create(
        title: "On a Fan of the Author's Design, in Which Was Painted the Story of Cephalus and Procris, With the Motto, 'aura Veni.'",
        body: [
        "IMMITATION OF ENGLISH POETS. WALLER",
        "'Come, gentle Air!' the Aeolian shepherd said,",
        "While Procris panted in the secret shade;",
        "'Come, gentle Air!' the fairer Delia cries,",
        "While at her feet her swain expiring lies.",
        "Lo! the glad gales o'er all her beauties stray,",
        "Breathe on her lips, and in her bosom play!",
        "In Delia's hand this toy is fatal found,",
        "Nor could that fabled dart more surely wound:",
        "Both gifts destructive to the givers prove;",
        "Alike both lovers fall by those they love.",
        "Yet guiltless too this bright destroyer lives,",
        "At random wounds, nor knows the wound she gives:",
        "She views the story with attentive eyes,",
        "And pities Procris, while her lover dies."
    ],
    authors_id: author3.id,
    categories_id: category11.id     
)   

# CREATE INSPIRATION AUTHORS
iauthor1 = InspirationAuthor.create(name: "Thomas Edison")
iauthor2 = InspirationAuthor.create(name: "Yogi Berra")
iauthor3 = InspirationAuthor.create(name:  "Abraham Lincoln")
iauthor4 = InspirationAuthor.create(name: "Johann Wolfgang von Goethe")
iauthor5 = InspirationAuthor.create(name: "Byron Pulsifer")
iauthor6 = InspirationAuthor.create(name: "Lao Tzu")
iauthor7 = InspirationAuthor.create(name: "Carl Sandburg")
iauthor8 = InspirationAuthor.create(name: "Aristotle")
# iauthor9 = InspirationAuthor.create(name: "Thomas Edison")
# iauthor10 = CreateInspirationAuthor.create(name: "Thomas Edison")
# iauthor11 = CreateInspirationAuthor.create(name: "Thomas Edison")
# iauthor12 = CreateInspirationAuthor.create(name: "Thomas Edison")


# CREATE INPIRATION CATEGORIES
joy = InspirationCategory.create(name: "Joy")
peace = InspirationCategory.create(name: "Peace")
love = InspirationCategory.create(name: "Love")
life = InspirationCategory.create(name: "Life")
patience = InspirationCategory.create(name: "Patience")
unity = InspirationCategory.create(name: "Unity")
courage = InspirationCategory.create(name: "Courage")

# CREATE INSPIRATIONS
ins1 = Inspiration.create(
    title: "life",
    body: "Genius is one percent inspiration and ninety-nine percent perspiration.",
    authors_id: iauthor1.id,
    categories_id: life.id
)

ins2 = Inspiration.create(
    title: "life",
    body: "You can observe a lot just by watching.",
    authors_id: iauthor2.id,
    categories_id: life.id
)

ins3 = Inspiration.create(
    title: "unity",
    body:"A house divided against itself cannot stand.",
    authors_id: iauthor3.id,
    categories_id: unity.id
)

ins4 = Inspiration.create(
    title: " ",
    body:"Difficulties increase the nearer we get to the goal.",
    authors_id: iauthor4.id,
    categories_id: courage.id
)

ins5 = Inspiration.create(
    title: " ",
    body:"Fate is in your hands and no one elses",
    authors_id: iauthor5.id,
    categories_id: life.id
)

ins6 = Inspiration.create(
    title: " ",
    body:"Be the chief but never the lord.",
    authors_id: iauthor6.id,
    categories_id: life.id
)

ins7 = Inspiration.create(
    title: " ",
    body:"Nothing happens unless first we dream.",
    authors_id: iauthor7.id,
    categories_id: life.id
)
 
ins8 = Inspiration.create(
    title: " ",
    body:"Well begun is half done.",
    authors_id: iauthor8.id,
    categories_id: life.id
)
  
  


puts "✅ Done seeding!"
