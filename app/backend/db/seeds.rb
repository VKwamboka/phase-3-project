puts "🌱 Seeding spices..."

# Seed your database here

# CREATE AUTHORS
author1 = Author.create(
    name: "Adam Lindsay Gordon",
    image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.poemhunter.com%2Fi%2Fp%2F32%2F36832_b_3124.jpg&imgrefurl=https%3A%2F%2Fwww.poemhunter.com%2Fadam-lindsay-gordon%2Fpoems%2F&tbnid=M6XAw3-QkqMfVM&vet=12ahUKEwjukPv-wIz6AhUURhoKHQClD2oQMygFegUIARC8AQ..i&docid=y9r5ev8v_qkyJM&w=140&h=200&q=Adam%20Lindsay%20Gordon&ved=2ahUKEwjukPv-wIz6AhUURhoKHQClD2oQMygFegUIARC8AQ"
)
author2 = Author.create(name: "Alan Seeger",
image: "data:image/jpeg;base64,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")
author3 = Author.create(name: "Alexander Pope",
    image: ""
)
author4 = Author.create(name: "Algernon Charles Swinburne",
image: "")
author5 = Author.create(name: "Ambrose Bierce",
image: "")
author6 = Author.create(name: "Amy Levy",
image: "")
author7 = Author.create(name: "Andrew Marvell",
image: "")
author8 = Author.create(name: "Ann Taylor", 
image: "")
author9 = Author.create(name: "Anne Bradstreet",
image: "")
author10 = Author.create(name: "Anne Bronte",
image: "")
author11 = Author.create(name: "Ben Jonson",
image: "")
author12 = Author.create(name: "Matthew Prior",
image: "")
author13 = Author.create(name: "Robert Burns",
image: "")
author14 = Author.create(name: "Lord Byron",
image: "")
author15 = Author.create(name: "George Gordon",
image: "")
author16 = Author.create(name: "Edward Thomas",
image: "")



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
