defmodule Day7Test do
    use ExUnit.Case

    test "test 1" do
        # given
        input = """
        muted tomato bags contain 1 bright brown bag, 1 dotted gold bag, 2 faded gray bags, 1 posh yellow bag.
        posh brown bags contain 1 dark lime bag, 5 mirrored crimson bags, 1 striped chartreuse bag.
        dotted violet bags contain 4 striped white bags.
        mirrored black bags contain 1 clear yellow bag.
        light aqua bags contain 3 clear silver bags, 2 shiny coral bags, 2 muted tomato bags, 2 drab turquoise bags.
        faded violet bags contain no other bags.
        shiny lime bags contain 3 muted brown bags, 4 dull gray bags.
        dark green bags contain 3 muted magenta bags.
        faded bronze bags contain 5 clear lime bags, 3 muted gold bags.
        clear lavender bags contain 4 dark beige bags, 3 mirrored crimson bags, 2 bright blue bags.
        striped bronze bags contain 5 muted olive bags, 4 clear chartreuse bags, 2 vibrant blue bags.
        dim bronze bags contain 1 clear indigo bag.
        dull crimson bags contain 3 dotted violet bags, 2 pale teal bags, 3 plaid bronze bags, 3 faded aqua bags.
        mirrored bronze bags contain 3 striped maroon bags, 4 shiny gold bags, 4 light indigo bags, 5 clear orange bags.
        vibrant white bags contain 4 light lime bags.
        dark blue bags contain 1 faded black bag, 5 mirrored plum bags, 4 muted cyan bags.
        drab bronze bags contain 5 mirrored plum bags, 2 bright turquoise bags, 1 clear gray bag, 3 faded chartreuse bags.
        mirrored lime bags contain 2 faded red bags.
        posh violet bags contain 3 dull chartreuse bags, 5 clear plum bags, 2 mirrored chartreuse bags, 5 dull magenta bags.
        dull bronze bags contain 2 wavy purple bags, 4 drab salmon bags, 5 dull chartreuse bags.
        dull black bags contain 4 shiny crimson bags, 5 dotted turquoise bags, 4 clear beige bags, 2 striped maroon bags.
        striped aqua bags contain 1 faded violet bag, 1 plaid teal bag.
        clear silver bags contain 1 faded green bag.
        dark yellow bags contain 4 shiny plum bags, 2 dull gray bags, 5 light lime bags, 4 shiny orange bags.
        dull coral bags contain 2 striped turquoise bags, 4 mirrored fuchsia bags, 5 faded yellow bags.
        shiny yellow bags contain 5 wavy maroon bags, 1 striped fuchsia bag.
        shiny black bags contain 2 muted tomato bags, 3 muted maroon bags, 4 shiny orange bags.
        posh aqua bags contain 3 wavy cyan bags, 5 posh brown bags, 4 dim plum bags.
        plaid maroon bags contain 5 faded aqua bags, 5 mirrored olive bags, 5 plaid gold bags, 2 vibrant gray bags.
        mirrored gold bags contain 3 shiny tomato bags, 3 shiny crimson bags.
        muted lavender bags contain 2 muted tan bags.
        vibrant magenta bags contain 1 dull purple bag, 2 vibrant coral bags, 5 faded silver bags.
        striped tomato bags contain 3 faded beige bags, 3 pale tan bags, 2 drab orange bags.
        dull turquoise bags contain 3 striped green bags, 2 shiny blue bags, 2 dim purple bags.
        shiny aqua bags contain 1 clear salmon bag.
        drab silver bags contain 2 shiny gold bags, 4 posh yellow bags.
        plaid gold bags contain 3 bright lavender bags, 5 plaid cyan bags, 1 bright brown bag, 5 faded turquoise bags.
        wavy lavender bags contain 2 plaid lavender bags, 3 plaid red bags, 4 posh cyan bags, 4 bright aqua bags.
        dark bronze bags contain 4 muted cyan bags, 4 clear cyan bags.
        plaid lime bags contain 1 posh teal bag.
        mirrored magenta bags contain 5 dotted turquoise bags.
        light turquoise bags contain 5 posh tan bags, 2 posh aqua bags.
        dark indigo bags contain 5 clear crimson bags, 3 posh lime bags.
        mirrored brown bags contain 4 posh white bags, 1 dim lime bag, 2 pale magenta bags, 1 mirrored chartreuse bag.
        vibrant lavender bags contain 5 posh plum bags, 1 posh aqua bag.
        dim crimson bags contain 3 vibrant beige bags, 4 clear indigo bags, 3 dim lime bags, 4 striped olive bags.
        vibrant violet bags contain 5 vibrant red bags, 1 striped white bag.
        dull silver bags contain 4 striped bronze bags, 1 plaid plum bag, 1 dim tomato bag.
        plaid brown bags contain 5 drab blue bags, 2 light turquoise bags, 5 dull lavender bags.
        dim aqua bags contain 4 plaid lavender bags, 5 muted maroon bags.
        faded plum bags contain 3 striped tan bags.
        drab black bags contain 5 clear bronze bags, 4 plaid red bags, 1 drab orange bag, 5 clear lavender bags.
        pale bronze bags contain 5 dim plum bags, 1 drab lavender bag.
        mirrored purple bags contain 5 mirrored crimson bags.
        mirrored red bags contain 5 striped magenta bags, 4 mirrored chartreuse bags, 5 pale cyan bags.
        posh lime bags contain 5 dull lavender bags, 1 faded turquoise bag, 2 striped coral bags, 3 striped green bags.
        vibrant black bags contain 2 drab salmon bags, 4 clear tomato bags, 2 faded turquoise bags.
        striped orange bags contain 2 plaid blue bags, 5 pale teal bags, 1 drab maroon bag.
        dotted tomato bags contain 1 dim white bag, 5 dotted magenta bags, 4 dull tomato bags, 1 dull gold bag.
        posh orange bags contain 3 posh gold bags, 4 light lime bags, 2 faded violet bags, 5 faded turquoise bags.
        muted gold bags contain 4 faded maroon bags, 5 dark turquoise bags, 4 bright turquoise bags, 3 plaid silver bags.
        striped yellow bags contain 4 drab fuchsia bags, 1 dim lime bag.
        dotted green bags contain 4 clear beige bags.
        faded fuchsia bags contain 1 dull blue bag, 4 bright coral bags.
        shiny lavender bags contain 3 mirrored beige bags, 1 dark coral bag, 1 muted turquoise bag, 3 light brown bags.
        bright maroon bags contain 5 faded lime bags, 3 dim brown bags, 3 vibrant yellow bags.
        dark maroon bags contain 2 drab red bags.
        dark white bags contain 3 wavy turquoise bags, 4 dotted red bags, 3 plaid fuchsia bags.
        dotted aqua bags contain 4 clear green bags, 3 drab magenta bags, 1 dull tomato bag, 3 striped coral bags.
        faded red bags contain 3 plaid purple bags, 3 dark lime bags.
        wavy yellow bags contain 1 bright yellow bag, 2 light chartreuse bags, 1 dull chartreuse bag.
        posh beige bags contain 5 shiny orange bags, 4 drab silver bags, 1 striped cyan bag.
        dull fuchsia bags contain 5 faded lavender bags, 1 dark cyan bag, 2 clear tomato bags, 3 mirrored chartreuse bags.
        muted silver bags contain 5 muted brown bags, 2 striped brown bags, 4 mirrored bronze bags, 5 faded plum bags.
        dim white bags contain 1 dull bronze bag, 3 dotted beige bags, 4 wavy tan bags, 4 vibrant white bags.
        faded green bags contain 1 clear indigo bag, 2 pale cyan bags, 1 wavy brown bag.
        pale blue bags contain 2 posh turquoise bags.
        muted green bags contain 1 dull bronze bag.
        dull indigo bags contain 4 shiny silver bags, 1 wavy red bag, 4 muted orange bags.
        muted plum bags contain 1 shiny lime bag, 4 plaid tomato bags, 2 faded indigo bags.
        striped magenta bags contain 1 mirrored chartreuse bag, 1 faded beige bag, 3 bright blue bags, 2 clear yellow bags.
        clear coral bags contain 4 dark turquoise bags, 2 posh magenta bags, 2 shiny aqua bags, 5 pale aqua bags.
        pale olive bags contain 4 shiny crimson bags, 3 wavy cyan bags, 1 vibrant beige bag, 3 dark beige bags.
        striped plum bags contain 2 light salmon bags.
        dim indigo bags contain 2 shiny lavender bags, 4 clear lavender bags, 1 bright tomato bag, 1 vibrant bronze bag.
        striped green bags contain 5 muted cyan bags.
        shiny salmon bags contain 1 wavy brown bag.
        wavy aqua bags contain 5 muted white bags, 1 mirrored gray bag, 5 dull lavender bags.
        posh gold bags contain 1 vibrant beige bag, 3 dull chartreuse bags, 4 mirrored brown bags.
        wavy blue bags contain 3 shiny gray bags, 4 posh turquoise bags.
        dark fuchsia bags contain 2 posh fuchsia bags, 4 bright indigo bags, 3 posh maroon bags, 2 posh aqua bags.
        shiny purple bags contain 5 clear maroon bags, 3 bright indigo bags.
        dull chartreuse bags contain no other bags.
        light beige bags contain 4 dim purple bags, 1 posh red bag, 4 clear aqua bags, 1 striped coral bag.
        wavy purple bags contain 3 bright turquoise bags.
        clear yellow bags contain 2 posh plum bags.
        clear violet bags contain 5 faded chartreuse bags, 5 clear green bags, 3 wavy brown bags.
        striped white bags contain 3 light white bags.
        clear green bags contain 4 muted bronze bags.
        drab crimson bags contain 1 posh tan bag.
        dark turquoise bags contain 2 shiny tomato bags, 5 wavy maroon bags, 5 dim aqua bags.
        drab magenta bags contain 1 pale gray bag, 4 striped olive bags, 2 posh brown bags.
        dotted gray bags contain 1 dull tomato bag, 1 posh yellow bag.
        plaid magenta bags contain 5 clear green bags, 2 dotted bronze bags, 5 drab black bags.
        striped indigo bags contain 4 mirrored magenta bags, 5 posh beige bags.
        bright fuchsia bags contain 4 dotted orange bags, 2 faded green bags, 1 bright turquoise bag.
        mirrored teal bags contain 1 mirrored chartreuse bag, 2 drab brown bags, 2 dull black bags.
        dotted purple bags contain 5 dotted turquoise bags, 5 dotted orange bags, 5 shiny gold bags.
        dim lavender bags contain 3 shiny coral bags, 5 mirrored crimson bags, 2 clear yellow bags, 2 muted orange bags.
        shiny gray bags contain 3 vibrant purple bags.
        mirrored white bags contain 1 mirrored brown bag, 3 striped purple bags.
        light cyan bags contain 4 bright maroon bags, 3 posh violet bags, 4 faded aqua bags, 5 dull tan bags.
        wavy gray bags contain 4 mirrored violet bags, 1 muted orange bag.
        striped silver bags contain 2 bright silver bags, 5 posh aqua bags.
        dull green bags contain 5 mirrored chartreuse bags, 2 dim beige bags.
        faded black bags contain 5 wavy turquoise bags, 1 muted tan bag, 1 dull chartreuse bag.
        posh crimson bags contain 2 muted tan bags, 4 striped beige bags, 1 mirrored lavender bag, 5 faded white bags.
        pale teal bags contain 4 posh aqua bags, 5 mirrored plum bags, 1 muted turquoise bag.
        muted tan bags contain 1 striped coral bag, 1 mirrored brown bag, 1 posh gold bag, 4 muted cyan bags.
        posh indigo bags contain 5 shiny tomato bags, 1 clear salmon bag, 3 dotted black bags, 1 striped maroon bag.
        clear gray bags contain 1 bright violet bag.
        striped olive bags contain no other bags.
        mirrored silver bags contain 4 shiny maroon bags, 4 muted coral bags.
        clear brown bags contain 2 dotted magenta bags, 3 clear aqua bags, 5 faded lime bags.
        striped lavender bags contain 4 dull turquoise bags.
        plaid teal bags contain 3 muted bronze bags, 2 drab orange bags.
        faded blue bags contain 3 bright teal bags, 2 posh brown bags.
        drab gold bags contain 3 dotted black bags, 5 striped yellow bags.
        plaid gray bags contain 2 drab magenta bags, 4 bright yellow bags, 5 pale beige bags.
        mirrored coral bags contain 1 shiny fuchsia bag, 5 vibrant gray bags, 1 wavy maroon bag.
        drab fuchsia bags contain 3 dull silver bags, 5 posh brown bags.
        wavy olive bags contain 2 plaid lavender bags.
        vibrant maroon bags contain 4 drab brown bags, 1 dark indigo bag, 1 clear gray bag.
        faded magenta bags contain 1 dim crimson bag.
        pale aqua bags contain 3 dotted turquoise bags.
        dotted orange bags contain 2 light coral bags.
        dim coral bags contain 4 pale gold bags.
        faded turquoise bags contain 5 posh gold bags, 2 bright turquoise bags, 1 drab magenta bag.
        striped tan bags contain 3 bright red bags.
        drab green bags contain 3 muted gold bags, 3 plaid gold bags.
        posh red bags contain 3 mirrored red bags, 2 striped fuchsia bags, 3 faded violet bags, 1 bright black bag.
        drab lime bags contain 2 dotted brown bags.
        plaid tomato bags contain 4 muted olive bags, 2 striped tan bags.
        striped blue bags contain 3 drab lavender bags.
        bright bronze bags contain 2 clear gold bags, 2 striped gold bags, 4 dim coral bags, 5 vibrant purple bags.
        muted white bags contain 4 light olive bags.
        pale violet bags contain 1 bright teal bag, 5 bright lavender bags, 2 faded green bags, 5 clear gold bags.
        striped violet bags contain 2 drab turquoise bags, 2 bright red bags, 3 vibrant blue bags.
        dull beige bags contain 2 vibrant beige bags.
        light lime bags contain 1 bright turquoise bag, 3 vibrant beige bags, 2 wavy bronze bags, 1 muted cyan bag.
        striped gray bags contain 5 vibrant brown bags, 3 wavy red bags, 3 plaid bronze bags, 4 wavy aqua bags.
        dark violet bags contain 5 dim indigo bags, 1 dim chartreuse bag, 5 dim purple bags, 1 striped magenta bag.
        dim turquoise bags contain 3 muted tan bags.
        pale green bags contain 2 pale olive bags, 5 wavy red bags, 5 pale lime bags.
        dark beige bags contain 1 light green bag, 4 drab beige bags, 2 dim cyan bags.
        drab maroon bags contain 3 light coral bags, 1 clear crimson bag.
        dark gold bags contain 1 dim black bag, 1 dotted gold bag, 3 dim gray bags, 5 wavy red bags.
        drab white bags contain 1 pale gray bag.
        mirrored olive bags contain 4 mirrored crimson bags, 3 faded beige bags.
        pale yellow bags contain 4 shiny maroon bags, 5 dim tomato bags, 4 shiny olive bags, 1 faded olive bag.
        striped lime bags contain 2 light lavender bags, 4 shiny aqua bags, 2 pale maroon bags.
        mirrored tomato bags contain 2 clear crimson bags, 2 pale beige bags, 5 striped purple bags, 4 clear tomato bags.
        dark black bags contain 1 mirrored orange bag, 4 shiny brown bags.
        plaid chartreuse bags contain 1 dim beige bag, 2 vibrant red bags, 1 bright lavender bag, 5 mirrored tomato bags.
        posh gray bags contain 5 dotted blue bags.
        mirrored crimson bags contain no other bags.
        pale silver bags contain 3 plaid cyan bags.
        shiny green bags contain 4 dotted violet bags, 3 drab olive bags.
        light brown bags contain 2 vibrant yellow bags, 3 dim tomato bags.
        muted yellow bags contain 1 drab magenta bag, 5 muted olive bags, 3 clear crimson bags, 2 mirrored brown bags.
        mirrored plum bags contain 4 muted tan bags, 1 posh brown bag, 3 faded silver bags, 1 dull gold bag.
        dark chartreuse bags contain 1 dim orange bag, 2 dull indigo bags, 1 dark beige bag.
        wavy brown bags contain 3 striped chartreuse bags.
        faded white bags contain 5 striped magenta bags, 2 muted turquoise bags, 2 bright cyan bags, 3 clear chartreuse bags.
        bright green bags contain 1 light salmon bag.
        bright salmon bags contain 3 posh tan bags, 2 drab orange bags.
        drab plum bags contain 2 posh turquoise bags, 4 dark salmon bags, 3 posh lime bags, 4 light coral bags.
        drab tomato bags contain 5 faded teal bags, 4 mirrored black bags, 4 mirrored lavender bags, 1 drab salmon bag.
        faded olive bags contain 4 light green bags, 4 clear bronze bags.
        plaid bronze bags contain 3 dim plum bags, 2 posh white bags, 1 dotted gray bag, 2 dull gray bags.
        light salmon bags contain 2 faded violet bags.
        bright red bags contain 1 posh plum bag, 4 clear crimson bags.
        faded maroon bags contain 3 striped olive bags, 5 wavy bronze bags, 3 bright lavender bags.
        mirrored orange bags contain 1 bright silver bag, 3 bright red bags, 1 drab brown bag.
        dotted indigo bags contain 1 dull black bag, 2 posh white bags.
        wavy teal bags contain 1 dotted tomato bag, 4 faded beige bags, 5 dull beige bags, 1 clear crimson bag.
        dim magenta bags contain 2 posh maroon bags, 1 dim yellow bag, 4 faded red bags, 5 pale olive bags.
        light red bags contain 3 dim silver bags, 5 drab maroon bags, 3 shiny red bags.
        plaid red bags contain 1 posh yellow bag, 5 muted turquoise bags, 1 bright red bag.
        pale magenta bags contain 4 dim plum bags, 5 dull tomato bags, 3 bright turquoise bags, 1 dark lime bag.
        posh yellow bags contain 5 posh brown bags.
        bright lavender bags contain 5 clear aqua bags, 1 posh yellow bag, 4 pale magenta bags.
        dim fuchsia bags contain 4 muted green bags, 3 mirrored beige bags, 5 dark brown bags, 1 dull crimson bag.
        vibrant salmon bags contain 4 clear lime bags, 5 plaid brown bags, 5 pale white bags.
        dim black bags contain 3 faded magenta bags, 5 dull gray bags, 2 vibrant blue bags, 2 vibrant bronze bags.
        dotted yellow bags contain 3 drab turquoise bags, 3 muted cyan bags, 3 clear gray bags.
        mirrored beige bags contain 1 drab salmon bag, 1 striped olive bag, 5 dotted gold bags, 2 faded beige bags.
        striped brown bags contain 5 bright maroon bags, 2 light gold bags.
        striped chartreuse bags contain no other bags.
        dark lime bags contain 3 dull chartreuse bags, 5 dim violet bags, 2 mirrored crimson bags.
        faded salmon bags contain 2 dull chartreuse bags, 4 posh brown bags, 3 mirrored olive bags, 5 light green bags.
        bright brown bags contain 2 vibrant bronze bags, 2 dim gray bags.
        dull tan bags contain 5 posh indigo bags.
        dim silver bags contain 1 vibrant tomato bag, 4 dim maroon bags.
        clear lime bags contain 4 clear gray bags, 1 clear tan bag, 4 posh brown bags, 1 dark indigo bag.
        shiny beige bags contain 5 plaid lavender bags, 4 drab red bags, 4 striped green bags, 2 vibrant tomato bags.
        dim tomato bags contain 3 clear yellow bags, 2 wavy gold bags, 3 pale cyan bags.
        dotted tan bags contain 3 pale white bags.
        dark crimson bags contain 1 dim coral bag, 4 muted brown bags, 2 clear chartreuse bags.
        plaid coral bags contain 1 dark yellow bag, 3 muted tomato bags.
        faded lavender bags contain 1 muted lavender bag, 5 mirrored red bags, 1 muted orange bag, 3 light coral bags.
        vibrant crimson bags contain 3 plaid plum bags, 2 bright olive bags.
        faded chartreuse bags contain 5 dim cyan bags.
        dark gray bags contain 5 clear plum bags, 5 faded aqua bags.
        shiny crimson bags contain 4 mirrored gray bags, 2 dull green bags.
        muted purple bags contain 5 dull tomato bags.
        light coral bags contain no other bags.
        pale beige bags contain 3 dark indigo bags, 5 bright turquoise bags, 3 vibrant lavender bags, 1 pale magenta bag.
        posh turquoise bags contain 4 faded green bags, 2 light coral bags, 1 light teal bag, 3 dim tomato bags.
        clear aqua bags contain 2 wavy cyan bags, 1 muted yellow bag.
        posh silver bags contain 4 plaid fuchsia bags, 2 dotted violet bags, 3 drab olive bags.
        dark silver bags contain 4 vibrant purple bags, 1 vibrant cyan bag.
        dull plum bags contain 3 dim red bags, 3 wavy turquoise bags, 2 mirrored beige bags.
        muted magenta bags contain 3 faded lime bags, 2 muted crimson bags, 1 mirrored gray bag.
        plaid indigo bags contain 4 wavy aqua bags, 1 plaid silver bag, 1 light blue bag, 3 wavy magenta bags.
        wavy violet bags contain 2 striped bronze bags.
        plaid yellow bags contain 3 dull plum bags, 1 striped blue bag, 5 faded aqua bags.
        dotted bronze bags contain 3 bright lavender bags, 1 wavy lime bag, 2 dotted cyan bags, 1 mirrored beige bag.
        striped coral bags contain 4 dark cyan bags, 4 wavy bronze bags, 2 dotted magenta bags.
        posh tan bags contain 4 mirrored brown bags, 3 dotted teal bags, 5 light lime bags.
        bright white bags contain 2 muted indigo bags, 2 wavy aqua bags.
        posh cyan bags contain 4 muted tomato bags, 1 posh tan bag, 4 mirrored lavender bags, 2 drab blue bags.
        wavy gold bags contain 1 dim beige bag, 5 dotted teal bags, 2 dotted turquoise bags.
        mirrored cyan bags contain 2 drab silver bags, 5 muted orange bags, 5 mirrored olive bags.
        dim orange bags contain 3 striped blue bags.
        muted indigo bags contain 4 clear aqua bags, 2 mirrored tan bags, 2 clear green bags, 2 posh brown bags.
        dull tomato bags contain 4 posh plum bags.
        plaid orange bags contain 1 striped coral bag.
        posh bronze bags contain 3 vibrant purple bags, 2 dim brown bags, 1 clear violet bag, 4 mirrored gold bags.
        dotted chartreuse bags contain 3 dull crimson bags.
        faded coral bags contain 1 wavy tomato bag.
        pale salmon bags contain 2 dull purple bags, 2 dark tomato bags.
        wavy crimson bags contain 4 bright fuchsia bags, 5 light lime bags, 1 posh tan bag.
        pale fuchsia bags contain 2 wavy black bags, 1 muted crimson bag, 2 dotted aqua bags.
        striped fuchsia bags contain 1 mirrored violet bag, 3 dull chartreuse bags, 1 shiny lavender bag.
        plaid cyan bags contain 2 vibrant lavender bags.
        dotted beige bags contain 4 dim beige bags, 2 vibrant lavender bags.
        mirrored turquoise bags contain 4 mirrored beige bags, 3 dotted turquoise bags, 1 striped maroon bag.
        faded indigo bags contain 3 dark lime bags, 5 mirrored salmon bags, 3 drab red bags.
        dotted silver bags contain 3 dark yellow bags, 4 posh crimson bags.
        light silver bags contain 2 wavy orange bags, 2 vibrant maroon bags, 4 wavy beige bags.
        vibrant cyan bags contain 1 shiny fuchsia bag, 3 posh plum bags.
        pale crimson bags contain 1 dotted gold bag, 4 mirrored brown bags, 1 mirrored olive bag.
        vibrant beige bags contain 4 dull white bags.
        faded tomato bags contain 4 mirrored salmon bags, 5 faded green bags.
        dull maroon bags contain 5 mirrored olive bags, 4 dim crimson bags.
        muted aqua bags contain 2 plaid olive bags, 1 shiny indigo bag.
        shiny teal bags contain 4 striped bronze bags, 3 dotted aqua bags.
        dotted cyan bags contain 3 clear yellow bags, 5 faded maroon bags, 3 dim gray bags.
        wavy beige bags contain 1 posh cyan bag, 4 wavy magenta bags, 5 dim green bags.
        bright silver bags contain 4 clear beige bags, 2 faded chartreuse bags, 4 clear aqua bags.
        striped purple bags contain 2 clear chartreuse bags, 4 dotted magenta bags.
        clear gold bags contain 2 vibrant lavender bags, 3 posh aqua bags, 4 light green bags, 3 pale cyan bags.
        dull cyan bags contain 5 dim tomato bags, 1 dim orange bag.
        light crimson bags contain 1 dull green bag.
        faded crimson bags contain 4 plaid coral bags, 3 dotted orange bags.
        pale gray bags contain 3 dark lime bags.
        faded gold bags contain 1 muted crimson bag, 1 plaid red bag, 5 wavy cyan bags.
        plaid plum bags contain 4 bright blue bags.
        wavy tomato bags contain 5 posh brown bags, 2 striped maroon bags, 4 faded indigo bags, 3 clear gold bags.
        shiny fuchsia bags contain 2 mirrored gray bags.
        wavy magenta bags contain 2 posh olive bags.
        dim purple bags contain 1 vibrant yellow bag.
        wavy black bags contain 1 pale green bag.
        wavy silver bags contain 3 dull yellow bags, 5 faded magenta bags, 4 mirrored black bags, 3 dull indigo bags.
        shiny cyan bags contain 2 shiny salmon bags, 2 pale olive bags, 1 shiny red bag.
        striped cyan bags contain 5 pale magenta bags, 3 faded silver bags.
        dim salmon bags contain 2 vibrant aqua bags, 1 drab red bag.
        bright chartreuse bags contain 1 shiny tomato bag, 2 wavy yellow bags, 2 wavy silver bags.
        drab coral bags contain 1 drab silver bag.
        pale white bags contain 2 faded red bags, 4 pale gray bags, 2 mirrored lavender bags.
        dim violet bags contain 3 dull white bags.
        muted red bags contain 3 shiny lime bags, 3 plaid beige bags, 2 shiny aqua bags.
        bright teal bags contain 3 dim tomato bags, 3 mirrored turquoise bags, 5 vibrant yellow bags.
        striped maroon bags contain 1 dim plum bag, 2 wavy cyan bags, 1 dull beige bag.
        vibrant green bags contain 5 dotted salmon bags, 4 mirrored olive bags.
        dim tan bags contain 2 shiny white bags, 3 posh lime bags, 1 dotted teal bag.
        muted olive bags contain 4 mirrored chartreuse bags.
        muted salmon bags contain 1 clear salmon bag.
        dim beige bags contain 2 pale gray bags, 2 mirrored olive bags, 3 clear yellow bags.
        light tomato bags contain 1 pale white bag, 2 dark teal bags, 5 shiny lime bags.
        striped beige bags contain 4 bright plum bags, 1 plaid olive bag, 2 pale crimson bags.
        light indigo bags contain 4 bright fuchsia bags, 1 dull gold bag, 5 dark beige bags, 3 mirrored teal bags.
        drab gray bags contain 3 dark coral bags, 5 mirrored teal bags, 5 dim purple bags, 4 mirrored violet bags.
        dark teal bags contain 2 muted orange bags.
        dim plum bags contain 1 posh brown bag, 4 dotted orange bags, 3 dotted gold bags, 2 drab salmon bags.
        dim green bags contain 3 dark beige bags, 3 bright tan bags, 4 striped white bags, 5 faded white bags.
        drab teal bags contain 1 light gray bag.
        dark aqua bags contain 5 vibrant green bags, 3 shiny teal bags, 3 dull red bags.
        wavy lime bags contain 5 mirrored brown bags, 2 dark cyan bags, 4 dull green bags, 1 wavy cyan bag.
        muted violet bags contain 3 light plum bags.
        posh green bags contain 2 shiny fuchsia bags, 3 posh aqua bags, 5 dotted turquoise bags.
        clear blue bags contain 4 vibrant gray bags, 4 shiny plum bags.
        muted brown bags contain 1 dark lime bag, 1 mirrored olive bag, 1 faded beige bag.
        dotted black bags contain 5 pale beige bags, 1 dotted tomato bag, 2 wavy cyan bags, 3 wavy aqua bags.
        muted chartreuse bags contain 5 muted lavender bags, 5 clear aqua bags, 5 bright maroon bags, 4 plaid bronze bags.
        bright purple bags contain 4 bright fuchsia bags, 3 pale tomato bags, 5 mirrored tomato bags.
        drab orange bags contain 5 light crimson bags, 4 dark beige bags.
        clear white bags contain 2 shiny salmon bags.
        posh lavender bags contain 4 posh tan bags, 1 posh magenta bag.
        faded purple bags contain 2 dull maroon bags, 2 mirrored coral bags, 4 vibrant green bags.
        dotted olive bags contain 5 dull chartreuse bags, 2 wavy magenta bags, 1 pale tan bag, 3 dim turquoise bags.
        muted crimson bags contain 1 striped olive bag, 3 dull chartreuse bags, 1 light bronze bag.
        striped turquoise bags contain 2 light blue bags.
        bright indigo bags contain 3 dull green bags, 1 pale teal bag.
        drab purple bags contain 3 bright aqua bags, 4 dull tan bags, 2 mirrored indigo bags.
        wavy salmon bags contain 4 dark olive bags, 5 dull chartreuse bags, 3 vibrant purple bags, 1 pale lime bag.
        drab olive bags contain 5 dim crimson bags, 3 posh green bags, 3 clear brown bags, 1 posh teal bag.
        muted orange bags contain 5 shiny orange bags, 3 muted black bags, 5 bright blue bags, 1 mirrored olive bag.
        drab salmon bags contain 5 light coral bags.
        dark salmon bags contain 4 bright lavender bags, 5 clear gray bags.
        posh blue bags contain 1 drab coral bag, 3 faded green bags.
        shiny violet bags contain 1 posh yellow bag, 4 light turquoise bags, 4 drab silver bags, 2 muted teal bags.
        clear tomato bags contain 3 bright plum bags, 3 muted indigo bags, 2 muted maroon bags, 3 dotted cyan bags.
        dotted coral bags contain 4 dark tomato bags, 5 dotted magenta bags, 5 wavy gold bags.
        striped teal bags contain 1 plaid brown bag, 2 bright plum bags, 1 mirrored blue bag.
        pale maroon bags contain 4 posh gold bags, 5 striped magenta bags, 2 dim brown bags, 1 clear chartreuse bag.
        muted lime bags contain 5 dull lavender bags, 3 plaid gray bags, 3 shiny tomato bags, 4 drab tomato bags.
        mirrored green bags contain 2 striped purple bags.
        posh chartreuse bags contain 4 dull tan bags, 2 plaid coral bags, 1 plaid cyan bag, 4 clear bronze bags.
        shiny bronze bags contain 3 striped indigo bags, 4 mirrored white bags, 1 faded coral bag, 1 clear violet bag.
        dull olive bags contain 1 muted coral bag, 3 clear tomato bags, 3 bright tan bags.
        light maroon bags contain 5 mirrored tomato bags.
        light chartreuse bags contain 3 dark indigo bags, 2 mirrored coral bags.
        light bronze bags contain 1 bright yellow bag.
        dim chartreuse bags contain 3 plaid gray bags, 2 faded teal bags.
        dotted lavender bags contain 3 bright teal bags, 3 vibrant green bags.
        dark tan bags contain 5 posh black bags.
        muted blue bags contain 2 mirrored salmon bags, 4 striped olive bags.
        mirrored chartreuse bags contain 2 bright turquoise bags.
        clear cyan bags contain 5 dotted gold bags, 3 shiny fuchsia bags, 3 dim violet bags.
        light white bags contain 2 vibrant bronze bags.
        pale orange bags contain 3 plaid aqua bags.
        faded brown bags contain 2 shiny blue bags, 1 dark cyan bag.
        plaid salmon bags contain 5 wavy yellow bags, 3 faded aqua bags, 1 dull yellow bag.
        shiny blue bags contain 2 bright violet bags, 3 light lime bags, 5 clear blue bags.
        dull orange bags contain 4 faded turquoise bags, 2 dim lavender bags.
        dull gold bags contain 2 dotted gray bags.
        vibrant tan bags contain 2 posh turquoise bags, 2 muted orange bags, 4 plaid blue bags.
        shiny white bags contain 1 pale chartreuse bag, 4 dark tomato bags.
        light olive bags contain 3 striped bronze bags, 3 posh white bags.
        dark lavender bags contain 3 drab magenta bags, 3 plaid black bags, 2 dull red bags.
        shiny turquoise bags contain 1 vibrant black bag, 5 wavy fuchsia bags.
        clear fuchsia bags contain 2 dull aqua bags, 2 shiny coral bags.
        shiny coral bags contain 2 pale magenta bags, 4 muted bronze bags, 4 light coral bags.
        striped salmon bags contain 3 posh olive bags.
        shiny olive bags contain 5 pale chartreuse bags.
        dotted brown bags contain 1 mirrored brown bag.
        dull red bags contain 1 faded chartreuse bag, 1 dull chartreuse bag, 5 clear lavender bags, 5 wavy salmon bags.
        bright beige bags contain 1 posh crimson bag, 1 posh chartreuse bag.
        plaid crimson bags contain 5 wavy magenta bags, 4 muted lime bags, 1 muted maroon bag, 3 dim green bags.
        wavy maroon bags contain 1 wavy cyan bag, 1 bright turquoise bag, 4 shiny coral bags, 3 drab beige bags.
        vibrant fuchsia bags contain 2 dull tomato bags, 1 light coral bag.
        pale brown bags contain 5 striped gray bags, 1 light plum bag, 1 pale chartreuse bag, 2 shiny tomato bags.
        light plum bags contain 4 bright yellow bags, 2 dark tomato bags, 4 plaid coral bags.
        dull gray bags contain 1 mirrored olive bag.
        light yellow bags contain 5 bright magenta bags, 5 pale gray bags, 4 mirrored red bags.
        dull lime bags contain 3 dark indigo bags, 3 mirrored salmon bags, 5 striped white bags, 3 posh aqua bags.
        drab yellow bags contain 4 shiny white bags, 3 faded green bags.
        bright gray bags contain 5 drab olive bags.
        bright coral bags contain 3 mirrored brown bags, 5 dim bronze bags, 5 muted white bags, 1 dim crimson bag.
        dim maroon bags contain 1 vibrant red bag, 3 faded fuchsia bags, 3 vibrant blue bags.
        plaid turquoise bags contain 3 bright yellow bags, 5 dark purple bags.
        plaid violet bags contain 1 clear yellow bag, 2 posh violet bags, 3 mirrored bronze bags, 3 vibrant tan bags.
        dotted maroon bags contain 2 striped fuchsia bags, 3 striped white bags, 2 light blue bags, 5 plaid cyan bags.
        dull blue bags contain 1 wavy brown bag.
        drab tan bags contain 1 clear indigo bag, 4 faded violet bags, 3 pale cyan bags.
        posh maroon bags contain 5 striped aqua bags, 3 wavy coral bags, 3 mirrored olive bags.
        dim blue bags contain 4 dotted maroon bags, 5 striped black bags, 5 plaid gray bags.
        faded teal bags contain 3 clear indigo bags, 5 dark beige bags, 1 shiny cyan bag, 3 bright tomato bags.
        clear bronze bags contain 1 muted yellow bag.
        dark plum bags contain 3 faded white bags, 2 wavy brown bags, 5 pale white bags.
        wavy cyan bags contain 3 mirrored brown bags, 5 faded silver bags, 1 dim lime bag, 5 clear indigo bags.
        posh plum bags contain no other bags.
        wavy plum bags contain 4 dull indigo bags, 3 faded black bags, 4 bright turquoise bags, 5 bright red bags.
        dim red bags contain 2 light cyan bags.
        pale coral bags contain 2 wavy brown bags, 1 dull gray bag.
        posh teal bags contain 2 striped purple bags, 1 dotted gray bag.
        clear tan bags contain 5 striped maroon bags.
        wavy chartreuse bags contain 5 bright chartreuse bags.
        posh black bags contain 2 mirrored gray bags, 3 mirrored beige bags, 2 clear aqua bags, 2 bright plum bags.
        muted maroon bags contain 5 vibrant red bags, 1 plaid lavender bag.
        vibrant silver bags contain 1 mirrored salmon bag, 5 clear lime bags, 4 shiny violet bags.
        pale indigo bags contain 4 clear maroon bags, 4 wavy cyan bags.
        mirrored salmon bags contain 4 pale gray bags, 4 dim beige bags.
        pale lavender bags contain 1 wavy turquoise bag, 2 striped green bags, 4 light coral bags, 4 clear chartreuse bags.
        drab beige bags contain no other bags.
        wavy coral bags contain 3 muted cyan bags, 3 dull bronze bags.
        plaid black bags contain 2 posh orange bags, 4 shiny tan bags, 5 mirrored brown bags, 3 shiny plum bags.
        light gray bags contain 2 dim crimson bags, 1 faded salmon bag.
        shiny plum bags contain 2 dull tomato bags, 1 mirrored tan bag, 2 dull green bags, 1 dark lime bag.
        drab blue bags contain 5 mirrored chartreuse bags, 5 dull tomato bags, 2 mirrored beige bags, 4 posh plum bags.
        faded orange bags contain 5 striped yellow bags, 1 drab gray bag, 5 vibrant purple bags, 3 muted fuchsia bags.
        plaid purple bags contain 1 faded silver bag, 4 shiny gold bags, 4 dim cyan bags.
        pale tan bags contain 3 shiny gold bags, 2 shiny lavender bags, 3 pale cyan bags.
        bright crimson bags contain 5 clear cyan bags.
        dotted lime bags contain 2 posh violet bags, 5 striped beige bags, 4 bright teal bags.
        posh purple bags contain 5 mirrored silver bags, 1 dim tan bag, 1 pale white bag.
        vibrant red bags contain 3 pale chartreuse bags, 2 dim purple bags, 4 wavy maroon bags, 1 dull gray bag.
        light fuchsia bags contain 1 drab maroon bag, 2 faded violet bags.
        bright blue bags contain 4 drab salmon bags, 4 dotted gold bags.
        bright turquoise bags contain 2 dotted gold bags, 2 dim violet bags, 1 vibrant bronze bag.
        light orange bags contain 1 plaid olive bag.
        light gold bags contain 2 clear plum bags, 2 striped bronze bags, 4 dark yellow bags, 2 posh orange bags.
        dotted magenta bags contain 4 wavy cyan bags.
        muted teal bags contain 1 clear beige bag, 4 plaid brown bags, 2 posh plum bags.
        light black bags contain 3 drab bronze bags, 2 plaid silver bags, 3 mirrored coral bags.
        wavy turquoise bags contain 5 dotted orange bags.
        muted fuchsia bags contain 3 dull black bags, 1 striped coral bag, 1 bright magenta bag.
        posh white bags contain 5 bright blue bags, 2 pale gray bags, 2 dark lime bags, 4 dotted gold bags.
        striped black bags contain 5 drab maroon bags, 1 faded green bag, 2 mirrored silver bags, 2 shiny white bags.
        striped gold bags contain 4 dim gray bags.
        dull violet bags contain 3 light plum bags, 4 faded turquoise bags, 3 mirrored cyan bags.
        striped red bags contain 5 plaid orange bags, 1 clear plum bag, 2 vibrant lavender bags.
        bright cyan bags contain 1 dim brown bag, 4 mirrored turquoise bags.
        dim cyan bags contain 5 bright turquoise bags.
        shiny chartreuse bags contain 2 striped white bags.
        vibrant blue bags contain 5 drab tan bags, 4 dotted magenta bags.
        mirrored aqua bags contain 3 shiny gold bags, 3 drab brown bags, 3 faded black bags, 3 clear tan bags.
        dark cyan bags contain 4 pale gray bags, 1 dotted gold bag, 4 dotted orange bags, 4 pale magenta bags.
        wavy fuchsia bags contain 5 mirrored teal bags, 1 dotted gray bag.
        pale gold bags contain 3 posh lavender bags, 2 drab brown bags.
        shiny orange bags contain 2 dim gray bags.
        posh tomato bags contain 5 bright brown bags.
        clear orange bags contain 4 posh plum bags, 5 dull gray bags.
        pale purple bags contain 1 drab purple bag, 5 bright crimson bags.
        drab brown bags contain 1 bright red bag, 3 light turquoise bags, 1 posh plum bag, 2 dull chartreuse bags.
        shiny tan bags contain 2 dotted gold bags, 2 plaid orange bags, 3 clear cyan bags.
        faded cyan bags contain 2 wavy cyan bags, 2 posh teal bags.
        clear maroon bags contain 2 light coral bags.
        drab cyan bags contain 3 wavy bronze bags, 5 posh aqua bags, 4 dull crimson bags, 1 shiny gold bag.
        plaid white bags contain 4 wavy brown bags.
        bright tan bags contain 2 shiny silver bags.
        drab turquoise bags contain 2 faded beige bags, 4 vibrant lavender bags.
        faded yellow bags contain 2 dull black bags, 3 vibrant yellow bags, 4 plaid silver bags, 3 posh teal bags.
        bright lime bags contain 3 striped aqua bags, 4 dull tomato bags, 5 dim gray bags.
        plaid tan bags contain 2 plaid coral bags, 5 drab blue bags, 4 drab orange bags.
        clear purple bags contain 2 drab tomato bags, 3 mirrored bronze bags, 2 dark teal bags, 4 dull green bags.
        wavy red bags contain 4 faded tan bags, 4 wavy cyan bags.
        vibrant purple bags contain 5 mirrored salmon bags, 1 dark salmon bag.
        wavy tan bags contain 1 shiny olive bag, 2 faded maroon bags.
        vibrant gray bags contain 1 mirrored olive bag, 2 dotted turquoise bags, 4 striped chartreuse bags, 1 dull tomato bag.
        mirrored gray bags contain 4 bright blue bags, 1 striped olive bag.
        dull aqua bags contain 1 vibrant purple bag, 1 faded maroon bag, 3 muted yellow bags.
        clear red bags contain 1 posh violet bag.
        light purple bags contain 2 shiny olive bags, 2 striped yellow bags, 4 dotted turquoise bags, 2 shiny violet bags.
        dull brown bags contain 2 wavy red bags, 4 clear green bags.
        wavy bronze bags contain 2 dull tomato bags.
        muted beige bags contain 5 wavy aqua bags, 4 striped maroon bags, 2 drab tan bags.
        muted black bags contain 1 posh green bag, 1 clear green bag, 5 striped bronze bags.
        light green bags contain 4 dim lime bags, 1 shiny gold bag, 3 shiny crimson bags, 2 muted yellow bags.
        mirrored fuchsia bags contain 1 dull bronze bag.
        pale tomato bags contain 2 vibrant maroon bags, 2 muted orange bags, 1 wavy brown bag, 2 dull cyan bags.
        drab chartreuse bags contain 5 mirrored magenta bags.
        shiny indigo bags contain 4 pale teal bags, 3 dull silver bags, 5 mirrored olive bags.
        bright aqua bags contain 3 bright violet bags.
        shiny magenta bags contain 2 bright red bags.
        vibrant orange bags contain 3 mirrored black bags, 5 mirrored olive bags.
        mirrored indigo bags contain 4 vibrant coral bags, 1 mirrored crimson bag, 2 mirrored red bags.
        plaid blue bags contain 5 wavy aqua bags, 2 plaid fuchsia bags, 3 wavy purple bags, 1 dim lime bag.
        dotted plum bags contain 4 striped chartreuse bags, 4 dotted yellow bags, 4 light yellow bags, 3 striped red bags.
        light violet bags contain 5 shiny chartreuse bags, 1 wavy lime bag, 1 vibrant beige bag.
        dotted salmon bags contain 2 drab maroon bags, 5 muted black bags, 1 posh violet bag, 1 dull lime bag.
        vibrant gold bags contain 5 dull magenta bags, 1 clear aqua bag, 3 mirrored beige bags, 1 pale cyan bag.
        mirrored lavender bags contain 3 clear gold bags.
        dotted gold bags contain 1 drab beige bag, 1 mirrored crimson bag.
        bright magenta bags contain 1 striped maroon bag, 1 striped bronze bag, 5 mirrored beige bags, 1 dotted maroon bag.
        clear black bags contain 1 faded chartreuse bag, 5 light blue bags.
        bright tomato bags contain 3 mirrored tan bags, 2 mirrored olive bags, 3 muted bronze bags, 1 posh violet bag.
        mirrored violet bags contain 3 striped chartreuse bags, 3 dim lime bags, 5 pale chartreuse bags, 1 posh tan bag.
        faded gray bags contain 4 light crimson bags, 3 muted turquoise bags.
        dark red bags contain 5 muted green bags, 4 mirrored maroon bags.
        clear crimson bags contain 2 muted olive bags, 5 striped chartreuse bags.
        vibrant lime bags contain 1 dim crimson bag, 2 faded coral bags, 3 light crimson bags.
        vibrant bronze bags contain no other bags.
        dotted white bags contain 4 dim purple bags, 2 mirrored chartreuse bags.
        clear indigo bags contain 3 mirrored olive bags, 2 posh brown bags.
        pale lime bags contain 5 faded salmon bags, 5 striped tan bags, 4 light white bags, 3 pale chartreuse bags.
        vibrant coral bags contain 1 muted orange bag.
        clear teal bags contain 1 posh plum bag.
        wavy white bags contain 2 dim chartreuse bags, 1 dull tomato bag, 1 dull fuchsia bag, 4 faded silver bags.
        dull yellow bags contain 2 mirrored gray bags, 2 shiny olive bags, 4 clear beige bags, 2 dim crimson bags.
        posh fuchsia bags contain 3 dull teal bags.
        dotted teal bags contain 3 dull white bags, 5 pale gray bags.
        vibrant tomato bags contain 4 dull green bags.
        dull purple bags contain 3 shiny red bags, 1 dim crimson bag, 5 drab turquoise bags.
        vibrant aqua bags contain 1 bright cyan bag.
        clear plum bags contain 5 drab magenta bags, 2 mirrored salmon bags.
        dark tomato bags contain 1 dull beige bag, 1 faded violet bag.
        bright violet bags contain 3 dim lime bags, 4 muted cyan bags, 4 dull gold bags.
        dim teal bags contain 3 mirrored orange bags.
        dark magenta bags contain 2 light tan bags, 5 bright violet bags, 4 dim aqua bags, 5 bright teal bags.
        faded silver bags contain 2 dotted gold bags.
        light lavender bags contain 5 mirrored chartreuse bags.
        vibrant chartreuse bags contain 1 pale indigo bag, 2 drab tan bags, 2 striped bronze bags.
        dotted blue bags contain 3 faded gray bags, 3 muted coral bags, 4 drab red bags.
        drab lavender bags contain 1 dull bronze bag.
        wavy green bags contain 2 vibrant brown bags.
        bright gold bags contain 5 shiny blue bags.
        dull lavender bags contain 4 vibrant beige bags, 4 wavy purple bags.
        shiny tomato bags contain 5 plaid olive bags.
        faded aqua bags contain 5 mirrored olive bags.
        clear beige bags contain 4 shiny fuchsia bags, 5 wavy bronze bags.
        pale black bags contain 1 shiny lavender bag, 4 muted olive bags, 3 striped gold bags.
        faded beige bags contain 3 clear yellow bags, 1 bright turquoise bag.
        dull salmon bags contain 1 plaid tomato bag, 1 dull coral bag, 4 dotted coral bags.
        drab aqua bags contain 5 muted olive bags.
        plaid fuchsia bags contain 2 wavy lime bags, 3 mirrored gray bags, 3 clear crimson bags.
        pale turquoise bags contain 3 bright cyan bags, 3 posh blue bags, 3 dark olive bags.
        dotted red bags contain 3 pale black bags, 3 light blue bags, 4 clear gold bags, 4 pale olive bags.
        dark olive bags contain 5 shiny coral bags.
        dull white bags contain no other bags.
        shiny silver bags contain 3 posh plum bags, 4 posh brown bags, 4 dull chartreuse bags, 1 drab beige bag.
        muted gray bags contain 5 posh coral bags.
        light magenta bags contain 3 vibrant cyan bags, 1 striped tan bag, 5 dark maroon bags, 2 wavy cyan bags.
        dim brown bags contain 3 dull green bags, 2 dull beige bags, 2 wavy gold bags, 5 wavy bronze bags.
        vibrant brown bags contain 1 striped violet bag, 2 dull beige bags.
        pale chartreuse bags contain 5 shiny gold bags, 4 dotted gold bags.
        vibrant plum bags contain 4 mirrored gray bags, 1 bright silver bag, 3 bright cyan bags, 2 dull gray bags.
        muted bronze bags contain 2 mirrored beige bags.
        plaid green bags contain 3 striped tan bags, 4 drab maroon bags.
        dark orange bags contain 4 drab beige bags, 1 striped beige bag, 1 dim indigo bag.
        bright olive bags contain 4 bright turquoise bags.
        drab indigo bags contain 4 striped tan bags, 5 dotted gold bags, 4 shiny crimson bags, 2 dull chartreuse bags.
        light teal bags contain 5 dotted orange bags, 3 posh brown bags, 3 shiny gold bags.
        dotted crimson bags contain 5 posh turquoise bags, 1 clear salmon bag, 5 faded salmon bags.
        shiny red bags contain 4 bright blue bags, 2 posh lime bags, 5 shiny plum bags.
        dark brown bags contain 5 posh magenta bags.
        drab violet bags contain 5 posh indigo bags, 2 light chartreuse bags, 2 vibrant crimson bags.
        plaid beige bags contain 3 drab olive bags, 5 dim fuchsia bags, 5 wavy turquoise bags.
        bright plum bags contain 2 mirrored salmon bags, 4 faded tan bags.
        plaid lavender bags contain 2 striped coral bags, 1 light coral bag.
        shiny brown bags contain 2 wavy tan bags, 1 pale salmon bag, 2 clear bronze bags.
        clear turquoise bags contain 2 dotted beige bags.
        wavy orange bags contain 4 shiny green bags, 1 pale magenta bag, 4 dark plum bags, 4 mirrored olive bags.
        vibrant turquoise bags contain 3 dotted black bags, 4 wavy salmon bags.
        posh olive bags contain 1 dull black bag.
        pale red bags contain 5 plaid tomato bags.
        dim gold bags contain 5 wavy violet bags.
        dotted fuchsia bags contain 4 pale plum bags, 2 dim salmon bags, 2 clear salmon bags, 4 vibrant blue bags.
        wavy indigo bags contain 3 muted fuchsia bags, 1 drab maroon bag.
        clear chartreuse bags contain 3 mirrored olive bags, 1 posh yellow bag, 1 faded salmon bag, 5 drab salmon bags.
        drab red bags contain 2 faded lime bags, 3 bright fuchsia bags, 5 bright olive bags, 2 striped maroon bags.
        dotted turquoise bags contain 5 dull white bags, 3 bright olive bags, 4 clear crimson bags.
        muted coral bags contain 1 posh green bag, 4 dim violet bags, 2 faded silver bags, 3 dim plum bags.
        plaid olive bags contain 2 striped cyan bags, 4 drab red bags, 2 clear beige bags, 5 plaid coral bags.
        vibrant indigo bags contain 1 vibrant maroon bag.
        clear olive bags contain 3 vibrant purple bags, 3 plaid green bags.
        light blue bags contain 5 plaid lavender bags, 1 mirrored violet bag, 4 muted yellow bags.
        muted turquoise bags contain 3 plaid brown bags, 5 clear aqua bags, 5 drab silver bags.
        muted cyan bags contain 5 shiny fuchsia bags.
        plaid aqua bags contain 3 posh green bags, 2 dull crimson bags.
        dull teal bags contain 2 drab red bags.
        dim olive bags contain 3 dark plum bags.
        bright black bags contain 4 shiny salmon bags, 3 dull white bags, 4 clear brown bags.
        mirrored maroon bags contain 1 drab turquoise bag, 2 plaid red bags, 3 faded black bags.
        pale plum bags contain 1 dark salmon bag.
        posh magenta bags contain 4 bright tan bags.
        faded tan bags contain 1 pale magenta bag, 1 drab beige bag, 2 dull beige bags, 1 shiny silver bag.
        dark coral bags contain 4 shiny orange bags, 2 dull green bags, 2 dim crimson bags.
        plaid silver bags contain 2 dim black bags, 2 mirrored tan bags, 4 shiny plum bags, 4 wavy teal bags.
        dim gray bags contain 3 dull green bags, 3 dull white bags, 2 clear yellow bags.
        clear magenta bags contain 5 pale chartreuse bags, 5 light magenta bags, 4 mirrored gray bags.
        posh coral bags contain 1 muted plum bag, 4 dim turquoise bags.
        dim yellow bags contain 3 striped white bags.
        mirrored tan bags contain 1 dim cyan bag, 3 wavy purple bags.
        vibrant olive bags contain 5 striped fuchsia bags, 3 shiny silver bags.
        pale cyan bags contain 5 vibrant bronze bags, 2 clear crimson bags, 1 dim violet bag.
        vibrant teal bags contain 1 pale white bag, 5 clear gold bags, 2 striped white bags.
        shiny gold bags contain 1 shiny coral bag, 5 posh white bags, 3 wavy cyan bags.
        dim lime bags contain 1 bright turquoise bag.
        posh salmon bags contain 1 dotted aqua bag, 3 faded cyan bags.
        vibrant yellow bags contain 4 dim violet bags, 2 striped bronze bags, 3 clear crimson bags.
        dull magenta bags contain 5 clear green bags.
        bright orange bags contain 1 bright indigo bag, 3 clear tan bags, 5 dark brown bags.
        mirrored blue bags contain 3 dotted aqua bags, 4 dotted magenta bags.
        clear salmon bags contain 5 striped chartreuse bags, 5 drab brown bags.
        light tan bags contain 3 drab orange bags, 5 posh purple bags, 3 faded plum bags.
        dark purple bags contain 2 dim plum bags, 4 dark beige bags, 1 dull tomato bag, 4 dull gray bags.
        shiny maroon bags contain 3 dotted aqua bags.
        faded lime bags contain 2 light turquoise bags.
        mirrored yellow bags contain 4 muted orange bags, 4 shiny black bags, 1 shiny green bag.
        bright yellow bags contain 1 plaid bronze bag, 2 shiny gold bags.
        striped crimson bags contain 5 dotted black bags.
        """

        # when
        result = Day7.how_many_bags(input)

        # then
        assert result == 289
    end

    test "part 2" do
        # given
        input = """
        light red bags contain 1 bright white bag, 2 muted yellow bags.
        dark orange bags contain 3 bright white bags, 4 muted yellow bags.
        bright white bags contain 1 shiny gold bag.
        muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.
        shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.
        dark olive bags contain 3 faded blue bags, 4 dotted black bags.
        vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.
        faded blue bags contain no other bags.
        dotted black bags contain no other bags.
        """

        # when
        result = Day7.part2(input)

        # then
        assert result == 32
    end
end