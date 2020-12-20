defmodule Day20Test do
    use ExUnit.Case

    test "test 1" do
        # given
        input = """
        Tile 2311:
        ..##.#..#.
        ##..#.....
        #...##..#.
        ####.#...#
        ##.##.###.
        ##...#.###
        .#.#.#..##
        ..#....#..
        ###...#.#.
        ..###..###

        Tile 1951:
        #.##...##.
        #.####...#
        .....#..##
        #...######
        .##.#....#
        .###.#####
        ###.##.##.
        .###....#.
        ..#.#..#.#
        #...##.#..

        Tile 1171:
        ####...##.
        #..##.#..#
        ##.#..#.#.
        .###.####.
        ..###.####
        .##....##.
        .#...####.
        #.##.####.
        ####..#...
        .....##...

        Tile 1427:
        ###.##.#..
        .#..#.##..
        .#.##.#..#
        #.#.#.##.#
        ....#...##
        ...##..##.
        ...#.#####
        .#.####.#.
        ..#..###.#
        ..##.#..#.

        Tile 1489:
        ##.#.#....
        ..##...#..
        .##..##...
        ..#...#...
        #####...#.
        #..#.#.#.#
        ...#.#.#..
        ##.#...##.
        ..##.##.##
        ###.##.#..

        Tile 2473:
        #....####.
        #..#.##...
        #.##..#...
        ######.#.#
        .#...#.#.#
        .#########
        .###.#..#.
        ########.#
        ##...##.#.
        ..###.#.#.

        Tile 2971:
        ..#.#....#
        #...###...
        #.#.###...
        ##.##..#..
        .#####..##
        .#..####.#
        #..#.#..#.
        ..####.###
        ..#.#.###.
        ...#.#.#.#

        Tile 2729:
        ...#.#.#.#
        ####.#....
        ..#.#.....
        ....#..#.#
        .##..##.#.
        .#.####...
        ####.#.#..
        ##.####...
        ##..#.##..
        #.##...##.

        Tile 3079:
        #.#.#####.
        .#..######
        ..#.......
        ######....
        ####.#..#.
        .#...#.##.
        #.#####.##
        ..#.###...
        ..#.......
        ..#.###...
        """

        # when
        result = Day20.calc(input)

        # then
        assert result == 20899048083289
    end

    test "test 2" do
        # given
        input = """
        Tile 2053:
        ......#.#.
        #....#....
        #.#.......
        .##.#..#.#
        .##...####
        #.#....#.#
        ##.##.#.#.
        ...##.....
        ####.##..#
        #..##...##

        Tile 1543:
        .####.##..
        .......#.#
        ..........
        ..#.......
        #......#..
        #....##...
        #.#....#..
        #..##....#
        #.#..#....
        #.#...####

        Tile 2441:
        .##.#..##.
        #..#......
        ..#...#.##
        ...#.....#
        #..##.....
        ......##..
        ###.#....#
        ##...#.#..
        ...#...###
        .#..#.##.#

        Tile 3733:
        ..#..#....
        ..#.#.....
        ......#.##
        .#..#.##.#
        ..#....#..
        ......#..#
        .###.#....
        .#.#..#..#
        .#....#...
        #..#..##..

        Tile 2237:
        ###.....#.
        #..#.....#
        ........#.
        #.#.......
        #........#
        ##...#...#
        ..#.......
        #.......##
        ##..#....#
        ...###...#

        Tile 2203:
        ##..#....#
        .....##...
        ...#....##
        .........#
        ##....#..#
        #.#..#.#..
        .......###
        .#....#..#
        ......###.
        ...#..#.##

        Tile 1783:
        #...##..#.
        ........#.
        #..#.###.#
        ....#.##..
        ....#....#
        ..#.#....#
        .........#
        ##.#.....#
        #.#.....##
        #....#..#.

        Tile 1487:
        #.....#...
        #..#.#...#
        ..........
        .........#
        #.....##.#
        ....###.##
        ##...#...#
        ##......##
        ........#.
        ....#####.

        Tile 3209:
        ...#....##
        #...##..#.
        ..#.....##
        #.##...###
        ...#..##.#
        ..#..#....
        ......#.#.
        ..........
        .##...##.#
        #..##.####

        Tile 2557:
        #......#.#
        ...#......
        ##.###.#..
        .###....##
        #.........
        ....#.#...
        .#..###..#
        ...#...##.
        .#.....#.#
        .###.##.#.

        Tile 1009:
        ###.##....
        ###.#..#.#
        #.#....#..
        .....##.##
        ...#.#....
        ..#.##.#..
        #..##.#.##
        #..#......
        #..#...#.#
        #..#.#..##

        Tile 1361:
        #..#..###.
        ....#...#.
        ##.#....##
        ......#..#
        .........#
        ##..##...#
        #...##...#
        #...#.....
        ..##....##
        #..#..####

        Tile 2767:
        .#.###.###
        #.#.......
        ...#...##.
        #..#...#..
        #.#...#...
        .#........
        ##....#...
        #....#.#..
        #.......#.
        #.#.#..#..

        Tile 1109:
        .#..#..#.#
        .....#..#.
        ......#..#
        ..##...#..
        ...#.#..##
        ...#.#..##
        ......##..
        #...#..#..
        #...#.....
        ..#.#.#.#.

        Tile 1493:
        ###..####.
        ....##...#
        #..#.#....
        ##.....#..
        #..#.#..#.
        #.........
        #...#.#.#.
        #.#..#.#.#
        ##.....#.#
        #.#.#.###.

        Tile 2971:
        #####...#.
        ....#.....
        #.......##
        ..#.#...##
        ...#.##..#
        ###.#..###
        #......#.#
        ..........
        ...#..#...
        .....#..##

        Tile 2909:
        .######.##
        ###..#...#
        #....###..
        #.####...#
        ..#.##....
        #.........
        ..#.#....#
        .#.##.##..
        ##.###.#.#
        ...##..#..

        Tile 2551:
        .#.##.#.#.
        ###.#..##.
        #.......#.
        ##.......#
        ..###.....
        #.##..#...
        #.##....#.
        #......#.#
        ......#.##
        #.#...#..#

        Tile 2917:
        ..###.##..
        ..#...#..#
        #........#
        #....##.##
        #.........
        ...##.....
        .###...##.
        #.#...##..
        .#.#.#.##.
        .#.#..####

        Tile 1553:
        ..##..#..#
        #..#...#.#
        #.#....#.#
        ##........
        .###...#..
        #.##.##.##
        .....#..#.
        #.....##..
        .......#.#
        ##.#.#.##.

        Tile 2297:
        .##.##.#..
        .##.#..##.
        ...#.#.###
        ...##...##
        .#..##..##
        ##.#......
        ...#.....#
        #.#.#...#.
        .#......##
        ....#.##.#

        Tile 1789:
        ####....#.
        #.#.#..#..
        ...##.####
        ##.#.#...#
        .###.....#
        .#.#...##.
        #...##.#..
        ##...#...#
        ..#.......
        #######...

        Tile 3079:
        #.##..#.#.
        #........#
        ..#..#....
        ..#..###.#
        .......#.#
        #....#####
        #......##.
        #..##.#...
        #.......#.
        ###..##.##

        Tile 3037:
        ..####.###
        ....##.#..
        .......##.
        ....#...#.
        ..#.#.....
        .#......##
        ##....##..
        #..#.#.#..
        ##......##
        ###..###..

        Tile 2677:
        ##.#..#...
        .#........
        ..###..#.#
        ..##.....#
        .##....#.#
        #.#...#..#
        ......#.##
        .......#.#
        ..........
        #.#.#..###

        Tile 1129:
        .##.#.#.##
        .........#
        #.##.#....
        .#...##..#
        .#...#...#
        ..#..#.#..
        ##..#....#
        ##........
        ..#.##.###
        ##..#.####

        Tile 2647:
        .......#..
        #........#
        .....#.#..
        .......##.
        ##..#.....
        .#.###..#.
        #....#.##.
        #.#....#..
        #.#..#...#
        ..##.###.#

        Tile 2531:
        #.#.##..##
        ##..#...#.
        ..#.......
        ##.......#
        ..........
        .....#...#
        #..###...#
        #........#
        #.........
        .####..##.

        Tile 1663:
        .#.#..#...
        ..#...#...
        ##...##.#.
        ...#...#..
        .##....#..
        #........#
        ...#...#..
        ##....#..#
        #.....#...
        .####.##..

        Tile 1193:
        #......##.
        ..#.#.###.
        #..#.....#
        #.##.....#
        .....#..##
        ....#.#..#
        #..#.....#
        ..........
        ...###....
        #..#.#.###

        Tile 2477:
        .#...#.##.
        #....##..#
        #.##.#...#
        ##..#.....
        .........#
        ..#..#...#
        .##...#.##
        #.###.....
        #..##.....
        ..#.##.#.#

        Tile 2083:
        .#.#.#.#..
        ###.#.....
        .....#..##
        ...#.#....
        #.......#.
        .#.###....
        #.#.#.....
        .##..#.#.#
        #.##.....#
        ..##.#.##.

        Tile 2897:
        ###.####..
        ..##....##
        ###...#...
        .......#..
        #..#.#..#.
        .....###..
        ......##..
        ....##..#.
        .#...##..#
        #.....#..#

        Tile 3797:
        #.....#...
        ..#.####.#
        #....#.#..
        #.....#.##
        ##..#.....
        #....#..##
        ...#...#.#
        .#....####
        ##.##.###.
        ###.#.#...

        Tile 2087:
        #####....#
        ..##...##.
        ...#......
        .##......#
        #..#....#.
        .#..#....#
        ..##......
        #........#
        #.......#.
        #.#.##...#

        Tile 2447:
        #.##....#.
        ##........
        ##........
        #.#...#..#
        ##.#...#..
        #..#..##.#
        #........#
        ........#.
        #...#....#
        #.....#.##

        Tile 1511:
        #...#####.
        ..#.......
        .........#
        ..#......#
        ###.......
        .....#..##
        #..#.....#
        #.##.#....
        ......#..#
        ###.#.#.##

        Tile 1249:
        #.#..##...
        #...#.#.#.
        ......#..#
        #....##...
        ....#.##..
        .#..##...#
        #....###..
        #....#....
        .....#...#
        ...###.##.

        Tile 2741:
        ###..#..#.
        #.##.#...#
        #...#....#
        .....#...#
        #.....#.#.
        #.##.#...#
        #.#..#...#
        ......#.#.
        #...#..#..
        ..####.#..

        Tile 3607:
        #.#####..#
        #..#.#.#.#
        .......##.
        #........#
        #.#..#....
        #..##.####
        ...#..#.#.
        ........##
        ..#...#.#.
        ...#..#..#

        Tile 3877:
        ###..##...
        ##...#....
        #.........
        ........##
        #....#...#
        #...#....#
        .....#....
        ...#...#.#
        #..#.#...#
        .##...###.

        Tile 1277:
        ..#....#.#
        ####..#...
        #.........
        ..........
        #...#..##.
        ...#.#...#
        #........#
        ....#.....
        ...#..#..#
        ##.#....##

        Tile 3491:
        ..#...##..
        .........#
        #.........
        ...#......
        ...#..#.##
        #...##....
        #....#.#..
        #....##...
        ..#.#..#.#
        #.#.#.#.#.

        Tile 2011:
        ..##...##.
        ....#.#..#
        #..#....##
        ..........
        ..........
        .....#...#
        #..#.#...#
        ........##
        .#.......#
        ##.......#

        Tile 1087:
        #.#.#.#.#.
        ..#..#..##
        #.###.....
        #...#..#.#
        #....#...#
        #....#...#
        ..##..#.##
        #...##....
        ##........
        #......##.

        Tile 3307:
        #..##..#.#
        ...#######
        #......###
        ..#......#
        #....##..#
        .#.#.#...#
        #........#
        #.......##
        ..#..#...#
        #.#..##.#.

        Tile 1949:
        #.###..##.
        #.#......#
        #....#.##.
        ##......#.
        #.......##
        #.##.#...#
        .##....#..
        ..........
        ...###....
        ..#..##..#

        Tile 1061:
        ...#..#..#
        #.....#..#
        ##.#....##
        .#....#..#
        ..........
        #.......##
        .#.#.....#
        ..........
        #.#...#.#.
        ........#.

        Tile 1429:
        ##.#####..
        .#........
        #....#....
        ...#......
        #........#
        ##.....#.#
        ....##.#..
        ....#..##.
        #...#....#
        ###.#.##.#

        Tile 2221:
        ###.#.....
        #.......#.
        ....##.#.#
        ........##
        ..#..#....
        ..###....#
        #........#
        ##.#.#....
        #...#...##
        ##.######.

        Tile 1117:
        ..#.##.#.#
        ##.......#
        ..#.#.....
        .##......#
        .##..#....
        .........#
        ..#.......
        ##.#.#.#.#
        #.#.......
        #.#..#...#

        Tile 1571:
        ..##.##..#
        ...#...#.#
        #.##......
        #..#......
        ..#..#...#
        #.......##
        ...##....#
        ..#.#....#
        #.#..#..##
        .##..#.#..

        Tile 2969:
        .##..#..#.
        ..........
        #......#..
        #...#....#
        ..........
        ..##.#.###
        .....#....
        .......#.#
        ####..#.#.
        ..##..#...

        Tile 2713:
        ####.##.#.
        #.##.#.#..
        #...##....
        #......#..
        #.##.#....
        #.........
        ..##...#.#
        #...#.#.#.
        #.......##
        ..####..##

        Tile 3121:
        ....#.##..
        ..#......#
        ..#..##...
        #.#......#
        #....#..##
        ....##...#
        #..#.#....
        #.....#..#
        ..#...#.#.
        .#..####.#

        Tile 3673:
        .#.##..###
        ..#.#.....
        ...#..#..#
        ..........
        .##....###
        #..#...#..
        #..##..#..
        #...#.....
        ##.#..#..#
        ....##.###

        Tile 2683:
        ..#...#.##
        ..#..##.##
        ###..#....
        ###..#..##
        .......#..
        ..##.....#
        #.....#..#
        #.###.#.#.
        #.#.#.###.
        ..#.#...#.

        Tile 2617:
        .#...#....
        .......###
        .##..#....
        ..#..###.#
        #..##..#.#
        #.#.###..#
        ..#..###.#
        .#....#..#
        ##....#.##
        ..#.#..###

        Tile 2341:
        ......###.
        ..#..#....
        ..#.#...#.
        ..#.#.###.
        ...##.#..#
        ##......#.
        .........#
        #..#...#..
        #.......##
        ###...#...

        Tile 1609:
        ..##.#.#..
        #.......##
        #......#.#
        #.......#.
        ..##...#..
        ...#.#....
        ##......#.
        .###...#..
        .#....#..#
        ....#####.

        Tile 3299:
        #####.####
        .##.....#.
        ..#...#...
        ...#....#.
        #..#.#...#
        #...#...##
        #.....##.#
        ....#.##..
        ##....#...
        .##..##.#.

        Tile 1259:
        ##.#......
        ........#.
        .....#.###
        ....#.#.##
        #.....#.##
        ..#....#.#
        ..........
        .##.##...#
        ....##..#.
        ...#...#..

        Tile 2803:
        .#..#.#..#
        #...###..#
        ..###.####
        #....#.#.#
        ##.......#
        #.#.#.#...
        .#.#.#.#.#
        #....#....
        ....#....#
        ...###..#.

        Tile 1063:
        .#.##.##.#
        ......#.##
        .#..#.##..
        #....###..
        ....###...
        .##....#.#
        #.#.#....#
        .....#..#.
        ##......##
        .######..#

        Tile 2113:
        ..#.######
        ####.....#
        #.#....##.
        ........##
        #.#.....##
        ...#.....#
        #.........
        #.....#..#
        ##.##.#.##
        .##.###.##

        Tile 1531:
        .###..#.##
        #.....##.#
        .......#.#
        ........##
        #.....#...
        #.#.#...#.
        ..#...#..#
        ##.##.##..
        ..........
        #...#...##

        Tile 1289:
        ##.###.###
        ....#..#..
        ####....##
        #.#....#..
        #.........
        #.#....#.#
        ...#......
        .##.......
        ##..#.....
        ...##.####

        Tile 3529:
        ###..#.#.#
        #..###....
        ....#...##
        .#....###.
        ##...#....
        #.##.#.#..
        ####..#.#.
        #....#....
        #.##.##..#
        #.##.#....

        Tile 2389:
        .##.##.#..
        #.###...##
        ..##....##
        #.###.#...
        #.#......#
        .#......##
        ##..#.#..#
        #..#......
        ..###.....
        #.#####..#

        Tile 3727:
        #.#.##..#.
        ##.###.###
        #....##...
        #....#...#
        ..##.....#
        ......#.#.
        #.....#...
        ..........
        #..#....##
        .#.##.#...

        Tile 1013:
        ##.#.#####
        #.####...#
        #..#....#.
        #....##...
        ........##
        .#.#.#....
        #..#..##..
        #.#.#.###.
        ...##..##.
        ##.###...#

        Tile 3373:
        .##..#.###
        .....#....
        ...#..#...
        #...#....#
        #..####..#
        #...#.##.#
        .....##.##
        ....#.....
        ...##....#
        .#..###...

        Tile 3041:
        .#..#.####
        ..........
        .........#
        ..#.....#.
        .....#....
        #..#....#.
        .......#.#
        ..#......#
        ....#..#..
        ..####..##

        Tile 1627:
        .###.#...#
        ...#..#.##
        #...###..#
        ..#.......
        ##...##...
        #.....####
        ##........
        #..#......
        #.##.....#
        ...#...#.#

        Tile 1297:
        #..#...#.#
        #.........
        ..#.#..#..
        ..#......#
        .#..##...#
        ....#..#.#
        #...###...
        #...#....#
        #..#..#..#
        ##..#.#..#

        Tile 1787:
        ####.....#
        .....##..#
        ..........
        #...#.....
        ..........
        ..#..#.#..
        #..#..###.
        #......##.
        ...##..#..
        ##.....###

        Tile 3109:
        ##.###..##
        .#.#......
        .#.......#
        #.........
        #.#..#.#..
        #.#....#..
        #.....#..#
        ........##
        ##..#....#
        ##.###..#.

        Tile 3541:
        .##.####.#
        .....#.#.#
        #.........
        .#.##...##
        ..........
        #.......##
        .#......##
        .....###.#
        ##...##...
        .#...#.##.

        Tile 3347:
        ....##.#.#
        ..#..#..##
        .#..#.##.#
        ....#.....
        ....#.....
        #.....##.#
        #....#....
        ##....#...
        .#.......#
        ####.##.##

        Tile 1721:
        ###.#.##.#
        ##..#.....
        #.......#.
        .#..##..#.
        #.##....##
        ...#....##
        ##...#..#.
        #.#.#.#...
        #.#...#.##
        ..########

        Tile 1847:
        #...##.#.#
        ..#...#...
        ##........
        .##......#
        ........##
        .#.#.#....
        .##.#....#
        #..#......
        .#..#..###
        .#.##..###

        Tile 3329:
        ###......#
        ##....#...
        #.........
        ##.#.##.##
        #.#.......
        ..........
        ##......#.
        ...#...###
        #...#..##.
        #......#..

        Tile 3881:
        .#.#..##..
        ##..#...#.
        .......#..
        #.#..#...#
        #.#..#..##
        #..##.##.#
        #...#..#.#
        #..#......
        ..#...#.#.
        .####..###

        Tile 1709:
        #####.#.#.
        .#.##..###
        ##..##...#
        #####....#
        #..#......
        ....#..#..
        #...#.#...
        #...#.#...
        #..#.....#
        #..#.####.

        Tile 1171:
        ...#.#.#.#
        #.....#...
        #..#......
        .......##.
        .....#....
        #...#...#.
        #........#
        #....#....
        ..#......#
        ...#.#.#..

        Tile 1499:
        ########.#
        #..#.###.#
        ...#.###..
        #......#.#
        ###......#
        ...#......
        #...##.#..
        ....#.#..#
        ###.#.#...
        ####.##..#

        Tile 1283:
        .##.###.#.
        #.........
        ..#..##.##
        ....#.....
        #.#.##..#.
        .##...#..#
        #........#
        ....#...##
        .....##..#
        #.#.###..#

        Tile 1637:
        .#.##.###.
        ....#.....
        #..##.##..
        .###...##.
        ####.....#
        ##.....#..
        #.....##..
        #.#.##.#..
        #........#
        #.#.###.#.

        Tile 3911:
        ##.###....
        #.#.##....
        .#...#...#
        .#.#.#...#
        .#.....#..
        ##....##..
        #.........
        ..#.#.....
        ##....#..#
        ##..###...

        Tile 3259:
        ...#...#.#
        ...#..#..#
        #.#.###...
        #..#...#.#
        #....###.#
        ....#.....
        .#....#..#
        #........#
        #....#..##
        ##...#.##.

        Tile 2099:
        ##.##..###
        .....#.###
        ...##..#.#
        ..#.......
        .###.#...#
        ..##.#.#..
        #.#.......
        #.##.....#
        ...#..###.
        .##..#.#..

        Tile 1237:
        .##..###..
        ###..#....
        #...#.#...
        #......#..
        .....#..#.
        ......##..
        #...#.....
        #.........
        .#......##
        ...##.##..

        Tile 1987:
        #..#.#.###
        ...#...#..
        #.#....#.#
        ..#...#...
        ....#..##.
        #........#
        .#.#.#..#.
        #....###.#
        #.#....#.#
        ..######.#

        Tile 2539:
        ##.#...#..
        ..#..#.##.
        #.....#...
        #...#.#...
        .........#
        #.........
        ......#..#
        #......#.#
        ......#.#.
        .#..##....

        Tile 2269:
        #.##.#..##
        #.......##
        .#...#.##.
        .##......#
        .##.##....
        #..#...#..
        .#..#...#.
        ###.....#.
        #......###
        ...#####.#

        Tile 1583:
        .##.####.#
        ...#....##
        .........#
        .....#...#
        .#...##.##
        #.....#..#
        .#.#.#....
        ...#..#.#.
        #..#.#...#
        #.#..#.###

        Tile 2749:
        .#..#...#.
        ....##.###
        ##...#....
        #.#..##.##
        #.#..#....
        .#.#..#..#
        #...#..#..
        ####..#..#
        #.#.#..#.#
        #..##.##..

        Tile 1613:
        #.#.#.#..#
        ....#.##.#
        ....#.....
        .#...###.#
        .###.##..#
        ###.#.....
        #.#....#.#
        ..#..#...#
        #...#...#.
        #.##.####.

        Tile 1823:
        ...####..#
        #....#...#
        .....##.#.
        ....#.#..#
        .#..##..##
        #####.....
        ....##....
        #....#...#
        ....#.....
        ...#.#.#.#

        Tile 3821:
        .#####.###
        ##....##..
        ##.#.##..#
        .##...#..#
        .##.....##
        ...#..#...
        ......#..#
        .....#...#
        .#.####.#.
        ..#.#....#

        Tile 1451:
        #..#..###.
        ###...#...
        .......##.
        .#......##
        #.#.......
        ...#.....#
        #.........
        ##....##..
        #......###
        ##...###.#

        Tile 1913:
        #########.
        #........#
        #.##..#..#
        .###.....#
        ##.......#
        ###.......
        .....#...#
        #...#.....
        #.##......
        ..#.#..###

        Tile 1307:
        .#.##.#.#.
        #..#..##.#
        #.#...#..#
        ...#..#..#
        #...#.....
        #...#....#
        .......##.
        ....#.....
        ...#.#....
        ##.###.#..

        Tile 1777:
        ..#..##..#
        ##....#...
        #...#..#..
        .##...#..#
        ###.##.#.#
        ........##
        .....#....
        ##.....#..
        ..#..#.#..
        .##..##...

        Tile 3011:
        #.#..##.#.
        #.....#..#
        .###...#..
        ..........
        #.....#...
        ...#.#....
        #..#.....#
        ...#..##.#
        #......#.#
        ...###....

        Tile 2459:
        #.##.##.##
        .##.#....#
        .....#.#.#
        #.##...#..
        .###.#.#..
        .##.......
        #.#..#....
        .#.....#..
        #.#...#.##
        #.####.###

        Tile 1123:
        ....#...##
        ..###.#.#.
        ....#.....
        #.#..#..##
        #.#..#..#.
        .#..#.####
        ....#.###.
        #..#.....#
        ........##
        .####.....

        Tile 3917:
        ##.#.#.###
        .........#
        ........#.
        .....#....
        .#.....#.#
        #.....#.#.
        #..#...#..
        #.........
        #........#
        #####..#.#

        Tile 2287:
        ##.##.###.
        ##.....###
        ..#.....#.
        #.....#.#.
        #..#.#.###
        .#...#...#
        #..###..#.
        #..##.....
        ###...#..#
        #..####.##

        Tile 1471:
        #.##...#..
        .##.#.#..#
        #.......##
        .......###
        ....#.#...
        ##.......#
        #....#...#
        #....###..
        .##.#.##..
        ####.#....

        Tile 2357:
        ####......
        ..#.......
        #.#...#..#
        #.........
        ..........
        ##..#..#..
        .#..###...
        ..#..##...
        ##....###.
        ##...#....

        Tile 1319:
        ###...###.
        ..#..#....
        #..#.....#
        ......#.##
        .........#
        ...#....#.
        ###..#...#
        ###..##..#
        ....##.#..
        #...#.....

        Tile 3467:
        ..#...#...
        .#.....#.#
        ..#......#
        ..#......#
        #..#....#.
        .#....#.#.
        ##..#.....
        ###....#..
        #.....##..
        ##...#...#

        Tile 3407:
        .###..####
        #....#...#
        #.........
        ..#....#.#
        ..#.....##
        .#.....#.#
        ..#.#..#..
        #..#.##...
        .#....##..
        .#####.###

        Tile 2801:
        #..##..##.
        ..#.....##
        .....#....
        ..#...##..
        #.#....#.#
        #....#.#.#
        ..#...#.##
        #.#..##..#
        #...#.#..#
        ##.....#.#

        Tile 1021:
        ......#.#.
        ...#...#..
        #.#......#
        ##..#..#.#
        ##..#.....
        ..#..#..#.
        ......##.#
        ......##..
        ..##......
        ##....#...

        Tile 3677:
        #.#.......
        #...#.##.#
        ....#..#.#
        .#...#....
        ..........
        .........#
        ..#..#.#.#
        #.#.##...#
        ..##.....#
        #.##.##.##

        Tile 1321:
        .#.#...#.#
        #..##...##
        #.#.....#.
        ###.......
        #........#
        .#..#....#
        #.##.##...
        #.#....##.
        .##.....##
        #.#####...

        Tile 1607:
        ....###..#
        ..#...#...
        .#.......#
        #...#.....
        ...#......
        #.........
        #...#.....
        ........##
        ##...#...#
        #....#.#.#

        Tile 1979:
        ##.#.#....
        .#..#...##
        #.......#.
        ..........
        ..#...#...
        .....#...#
        .........#
        ...#..###.
        .###......
        #####..#..

        Tile 2927:
        #.##..###.
        #.#......#
        ......#...
        ...#....##
        #....##...
        ##.......#
        #..#..#...
        ....#..#..
        #...#.#..#
        #.###.....

        Tile 3203:
        #.#..#..#.
        .#.#......
        ....##..#.
        ....######
        #........#
        ..#......#
        ##.#...#..
        #......#.#
        #.....#.##
        .##..###.#

        Tile 3323:
        ##..###.#.
        .......#.#
        .........#
        #.........
        ........#.
        .........#
        ###......#
        ..........
        #...#.#..#
        .##.#.###.

        Tile 1489:
        .#...##.#.
        ........##
        .##.#...##
        .......#.#
        #.##.#.#.#
        .##....##.
        #....#..#.
        #..#.....#
        ##.#.##.##
        .#.#.#....

        Tile 2273:
        ####.#..#.
        ##.#......
        ##..###.##
        .##..#....
        #..#.#...#
        ##...#....
        #.#...#.#.
        #..#.....#
        ##.#..#.#.
        ##...#..#.

        Tile 2293:
        .#.##.#...
        ..#.#.#.#.
        .......###
        #.#....#..
        #......#.#
        ##..##.#.#
        ######..##
        #.....#...
        ##....#..#
        #.#####.##

        Tile 1301:
        #.....##..
        #..#.....#
        #......#.#
        #....#....
        ##.#.#..##
        ......#...
        #.........
        #........#
        #..#.....#
        ###..##...

        Tile 1229:
        .#..####..
        ##.....##.
        ##........
        #...#.....
        .#....#.#.
        #.........
        ..#......#
        ##..##.#.#
        #####....#
        #..#.###..

        Tile 3769:
        .#..#.##.#
        ##.....#.#
        #.#...#..#
        ..#..##..#
        #.##.#####
        .....##.#.
        #.#.####..
        .###...#..
        #.#...#..#
        .#.####...

        Tile 3319:
        ######.###
        ....#...##
        #..##..#.#
        ##.....#..
        #.#.##..#.
        #.#.#.....
        .........#
        #.#.#..###
        ....#..#.#
        ####....#.

        Tile 3547:
        ##..#..##.
        #.....#...
        .#.......#
        .......#.#
        #.....#..#
        #..##.#.#.
        ....#.#...
        ....#..#..
        .....#....
        ...#.#..##

        Tile 3643:
        ....####.#
        ...#......
        .##......#
        #...#.....
        .......##.
        ##.......#
        ......##.#
        #.....#...
        #.#.......
        ######...#

        Tile 1103:
        #...#.#.#.
        .........#
        .....#....
        .......#..
        #......###
        ##......##
        #..#.....#
        #.#.....#.
        #...#...##
        .#.#...#.#

        Tile 2711:
        ###.##.##.
        ....#...#.
        ##.......#
        #.....#...
        #...#.#.##
        #..##.#...
        ..#....###
        ...#....##
        .##.#####.
        .##.##.#.#

        Tile 1871:
        #.###.####
        .........#
        #......#.#
        ..##....##
        #..#..##.#
        #..###...#
        #.#.....##
        ......#.#.
        .#.#.....#
        #.#.#.....

        Tile 3851:
        ..##.##.#.
        .....#.#..
        #....#...#
        #..#..#..#
        ###.....#.
        #.#..#..##
        ..#......#
        .##.#....#
        #....##.#.
        .##..#.#.#

        Tile 1151:
        ###......#
        ...##.....
        ....#.....
        ....#.....
        #..#..#...
        ##....##..
        ..#......#
        .#.....#.#
        ........##
        .##.#..#.#

        Tile 2377:
        .##.##.#.#
        .....##.##
        ###.......
        #....##..#
        ##......#.
        ...#.##..#
        #...#....#
        .##..#.##.
        #.###...#.
        .#.#..##..

        Tile 3581:
        ..#.#....#
        ..#.#..#..
        .##..#.##.
        #.##..##..
        #.....#...
        #..#...###
        ...#......
        #.#.......
        ####......
        #.#...####

        Tile 1303:
        ##.#.#....
        #.#.#.##.#
        ..#......#
        .##.##...#
        ##..#..#..
        #...#.#.##
        ##..#.#..#
        ..##.#....
        #.........
        .#.#..##.#

        Tile 2843:
        ##.##..##.
        #..##.##.#
        #...#....#
        #..#.####.
        #...#.....
        ##....#..#
        #...#.....
        ..#..###..
        #..#..#..#
        ##..##...#

        Tile 3617:
        ##...##..#
        .#..#...#.
        .##......#
        #.####...#
        ##........
        #.........
        #......#..
        ##...#....
        #.##..#..#
        .##..##...

        Tile 1091:
        ######..#.
        ....#.#..#
        .....#...#
        #....#...#
        ......#.##
        ...#.##...
        #...#.....
        ..#.###...
        #....#..##
        #.###..#..

        Tile 1213:
        .##..#.#.#
        .#..#..#..
        ##.#.#....
        #....##..#
        ##........
        ##..#.....
        #...#..#..
        #...#..#..
        #.......#.
        #.....#.##
        """

        # when
        result = Day20.calc(input)

        # then
        assert result == 84116744709593
    end
end