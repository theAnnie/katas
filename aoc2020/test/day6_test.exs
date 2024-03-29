defmodule Day6Test do
    use ExUnit.Case

    test "test 1" do
        # given
        input = """
        abc

        a
        b
        c

        ab
        ac

        a
        a
        a
        a

        b
        """

        # when
        result = Day6.calc(input)

        # then
        assert result == 11
    end

    test "test 2" do
        # given
        input = """
        gqraplu
        jmwftidynvozkhe
        
        cbhejsplztndvig
        duzpteclshfgbinvj
        zvbhdtnigplsej
        ztsbdixmegljhnvapy
        
        syrulqjamnixpwz
        yrjinauqxlz
        yrazqnujxli
        zlnorxjiayqhu
        
        n
        gn
        n
        
        yx
        oxh
        fx
        
        joewxkpzyvldqfricsn
        xqfsnyevltrmcdpiwz
        pvyxdlnzcqwrseif
        cagnvpqwfbzxuyreidl
        
        lqbpai
        quplimxcojkrt
        
        sziyc
        lsvkuhei
        kctsidr
        xkmousi
        sbjnqgafwi
        
        ur
        nu
        u
        u
        u
        
        kgehjantorqdumzfwpivlb
        dvziasuthgmplfwnrqok
        
        ejo
        zs
        
        fgbmsua
        gimuqbfv
        lfzugbm
        uvbfmgp
        iagmbpfhu
        
        bqntdexkfvpwl
        evjblkfxcduyn
        trmxfbvklynz
        svginkxflabh
        
        gdtafy
        dtygafo
        dagfyt
        ydaftg
        gdatyf
        
        ygwkouhpmqseb
        plokghuzxwybeam
        hncokugxmbpsye
        ogfkejuvbmyhp
        hmpnlcregoukqysb
        
        qgm
        xhgjcpmt
        elswfzdgvnoyiu
        mgx
        kagbr
        
        jxiaofcy
        vrtpbkhles
        
        d
        d
        d
        n
        d
        
        yidoljquknxpeaz
        jxevznrpdlkqsiumao
        opilqzajdxnemukr
        hewjdganufopkizxlqb
        
        prwydlbnkhgoqvsxmafeuj
        hwegbjqxrlmfpvysnakduo
        
        ntdzifwmhxkcpg
        gmciznhtu
        
        bvrcmgo
        gvbrcom
        movrbgc
        vrmobgc
        
        uq
        qeu
        yequ
        qpbumck
        nqu
        
        m
        wlgkmze
        m
        
        ytazsmxvhpw
        wphytzvax
        zaxwyfthvpc
        aphzswtxvyok
        
        xmd
        xmd
        
        q
        u
        u
        y
        
        nrwzuibkxy
        yjekmus
        
        iah
        liah
        hapimu
        auhi
        whtia
        
        waxngytpedkcohu
        nicsaypkvztwujleofxrh
        qhopntywekxabuc
        cpawenqyokthxu
        
        ztpgmojkuasni
        tkgipajonszum
        snzpkiaugmojt
        uzniostakjpgm
        
        uvlxwrgyb
        unywtravxlg
        frglqxuiwy
        
        hnybo
        nhyo
        onhy
        
        qbiayve
        tbmrhxc
        
        ifgubhacvkwndempsqyto
        oeikgsmwvathyfqupzdnrb
        aopbwqgtxfeikhvsdnumy
        
        sdcoulxfwkyh
        ylshkufxod
        kdptsfuohvxly
        
        lpinkvcmbjgfzstoyr
        yonrjzpktmfbisc
        ifkzmcopsrybtjn
        zscptibfykromjn
        
        djfzwn
        lsvbyqth
        cfxed
        dnzgw
        
        ukbx
        bh
        
        mrxewvdultgp
        pkwvlgjtmxid
        
        pax
        xa
        rjlxa
        axp
        
        blpq
        uyfaqwbpls
        lnbqp
        qplbzn
        bnqpl
        
        viezwmdhxnbpcuq
        snwlzhdycvbikqpu
        
        xjoarpudhzcqvbklsf
        puqhzfxcraobkvsdl
        svalkqorzuhxndcpfb
        zqhkvusbcoalprfdx
        
        qrav
        qrav
        avqr
        avqr
        vqar
        
        mgizycqbaksjofwtdphn
        qshodcwfbygpmtikjna
        gbhdawmjyofsqtnckpi
        mgufwjpithybodqscnak
        
        drkwnmigxc
        xndwkrmi
        kdxranwim
        krxdwiynm
        
        nzvgidp
        dzvpig
        vzgdp
        vpgdzh
        pvzgd
        
        owzvyrsqlaefxut
        afslqrywvueoztx
        wzxqartvuioyelsf
        evqlwzxustarfyo
        zetoqsulxyfvawr
        
        rvydefukzonxmshw
        yhxenwmdvsfz
        hnzwxivsmdfbey
        
        hzqkpmrgeldniwo
        nelihzrkpwmgdoq
        zhdixrmpownegqbkl
        lpjkgzhnurwymodesiq
        hrgevlonqmbcdzikwp
        
        zmxskldyfobp
        efwzjdyok
        zyihvutofadk
        dokzeryfgc
        
        inbs
        bsni
        snib
        sbni
        inkbs
        
        kuhimvsfetnobjayzrxpclq
        mpyqbtfncerkujzlivaxhos
        khxmojcyuvpqrbitlafzesn
        yjckvrfontsphzabmleuixq
        lhpjmaefbnkyciuortsqxzv
        
        zrlyvkgwsinbteaxcuqdmf
        sqnagelwkbydrxtmufcizv
        dicxqvlgoenabwrtkufsymz
        exvqrkmulnsayzbwdcfgti
        vkgulsxywafinecrbtzdmq
        
        whpx
        hwpxtme
        nwrvhpx
        hpwx
        rwxhp
        
        q
        vz
        q
        x
        
        wyaum
        ouzj
        
        nrqsahcif
        bnia
        nzia
        
        neditjrwlm
        ncovfirzdl
        qrhabpxkus
        
        ypbtzriv
        dsgj
        bfk
        nq
        
        xuegjwzf
        xbjonevumgf
        
        stxl
        tsl
        lstyf
        
        vcpja
        pjacv
        cvajp
        jyacpv
        
        hurbisxv
        vrusibhwx
        khxiqsbturgl
        szbahofeinjurx
        
        cdgbs
        smpb
        
        nxapgmhuise
        hlgafojqykxpwuv
        rbhigaceuxmp
        
        ia
        ia
        ia
        ia
        ai
        
        romdclz
        sbpyaqjeicfxwv
        ogdhrcun
        dklct
        
        bwpjlzmakrhtgcyd
        lywtdgmrpzahkcj
        zcywdpokjahmgrlt
        thkcypzljgfadrmw
        ahtdmzlrygpjfkcw
        
        lqozhpxswn
        aegvhkjo
        
        mvrhzutxkewbyfdnqjgoics
        efnzyojvstdhgqrcxwukbim
        
        eiqctujxmbovyapflhsnrd
        amlunxrvdkpswzfcyoebqjti
        
        ftmj
        fxntmhgzyva
        rpamxuvse
        trsxyfbg
        wdcqkoli
        
        xsovbqdiaztnm
        mjospzaqdcbvlyixn
        obdqizsmavnx
        
        lyqonstrvwk
        oswnltrkqvy
        oqvlnkyswtr
        
        pzyxdkcb
        msuyp
        
        jbtfnimyhgeau
        ubjenfatihg
        ipheugjnatbf
        
        bohtinfxd
        whiofqdx
        ifjgmrdeco
        
        i
        i
        i
        ji
        i
        
        ojvu
        juv
        ujv
        jvu
        ujvn
        
        qvjyraeugi
        jaigryeuqv
        auirgyvejq
        
        l
        l
        l
        l
        
        wcvneqijzlu
        jpfmawgnrts
        tndmxhwjo
        
        ikybgcsdhfjqewramz
        zdyiuchgwkreqbjafxp
        
        hwxbvmodf
        vwfmbxdoh
        bovxmfdwh
        hofvwmdbx
        wodvfbmxh
        
        kvqer
        kverq
        vqrke
        kevqrmg
        
        lmcprdquzfojbwg
        uzdljoqrphgcbfm
        rpmnvlucjgzbfdqox
        
        anevrywoscfgmd
        pkorawscmf
        rcumfipoaws
        
        udfjiq
        urqvjitfd
        jfduqi
        
        al
        l
        
        hqmtedniw
        tnqdihmwez
        
        y
        qy
        y
        ley
        
        ph
        hp
        
        czogpbqrswyemujkdxvh
        hbycpwtxueksovzrdgmnqj
        ukoegrcvsbpwqymdjhxz
        
        ihly
        nyd
        vydw
        
        sjvkuolzixacqnbfm
        milvqkuzfaxbjcnos
        
        vptqewkl
        
        jitqrhcebp
        hmdjfebzynqoic
        jehbiqsxcvw
        
        yvejfgpdhwr
        sclkjzqgdaitbx
        
        molycdpuqtezsaikfgb
        rawhmiuxgbsjkqpftzceyldo
        ykpfmgcadezvsqtuboil
        
        cfy
        fyc
        fycjz
        ycf
        
        nvgokp
        dvlrym
        vbxq
        viec
        
        tshpkilmfn
        rahptloqnmwze
        hcdtgmlpjn
        
        warkbezshofylgpvc
        smfyaicelhvpk
        chpnfkyeaxqvsluj
        hcqpatlmdvsfkyei
        
        mdvxgrpbnaeohkitc
        cmkixqptgeo
        mflsxckyzgjpuoe
        pmdcxqevkorg
        
        jsqdlxcmrnkahgwipfeuz
        zmbjurenytxsaglqpvfwhkic
        ipxjszkgrwdhufaqcelnm
        kelwzuhjsmxngripqfcda
        
        qjeilf
        li
        mswnadl
        
        edlsrkoungwibthcp
        skwbtjpcervoldi
        fseklbitcpomwqr
        ktcprsbzweihol
        
        htdqfkovwjyezu
        thobwyfzuldvjem
        yvduezhfjtow
        eyhwunjzkdvfto
        fhejnzdytovwixu
        
        fwhtnj
        hjwfntl
        ftujnwh
        hbtwjnf
        
        t
        e
        t
        t
        z
        
        nqxcusyotzefvph
        yeocxkiutgmsqf
        ckjyemquxsofwtgd
        
        tmzfevydagckuhqlx
        byvufxtmcrlaqzed
        upctzjfxaleysmdvq
        evcxlnmfdtuyqza
        tqoecfdzivxmuyabl
        
        shgxmojtwil
        dzkqounrelcxw
        bwfyohxl
        
        mcvryskujtwfegnqzpoabl
        kqviphnbclosfegjw
        
        cm
        cm
        icm
        
        bgaxzljdmnikfwty
        inflydazkjwrvmcb
        mblkduehjyaqziwfn
        ifbmwdjznyxgakol
        imfdlwabhkynzj
        
        jlrwutvxeh
        jlrdwhtvxeu
        rjkhluwetxpv
        
        lwikdzhvmc
        cyredwfnkizs
        
        gxb
        x
        x
        
        yeguzh
        zgh
        hpzc
        
        paglzktcsyewuvboq
        cgloauxwzvqsyktepb
        
        y
        m
        b
        b
        
        jogqmp
        imogpj
        mgnpjoa
        
        icgwq
        cwig
        
        piyuamfk
        idyufmopea
        acfuzgniypm
        
        ipkmh
        ibhklmp
        phimk
        tihpkm
        pcvkhuzmyni
        
        jugsl
        lujh
        luyirmj
        ljgsu
        jlu
        
        gzbesjik
        pzisbjekg
        zjksigbe
        
        mdp
        mdcp
        omd
        xqmwcdp
        ikrfdyjlm
        
        wgdjmfbrntluzkysipq
        pfiknrqtbzglyuwjsmd
        
        wgbfixvksaejo
        jph
        
        wtsyo
        ysw
        qyl
        
        ulsbickanygpxqwzhmjf
        faqugxicyljwpzhsnkbm
        
        zhrdfgxw
        xgzqfmd
        flkjdgxz
        yzfcbdxvneg
        ndxfgzo
        
        ilkpncyqfbvorhtwexjds
        iaebcyqudfprh
        mqefrdbhcpyi
        cdrhypiefbgq
        
        zefqwirsglpjv
        hdivwsnqb
        
        vzcexgstnfk
        farxkgzcsbnevt
        sfczvtgnxke
        txepoknzgsvfc
        ksnevtfxcgz
        
        yrlnqwvpmeiuxt
        xqpirlhnymowuv
        
        xan
        jpfa
        aczoup
        cja
        aibgwevkh
        
        m
        sml
        opu
        
        rdbchfwvyamizs
        bofxszcamyrjdh
        rzsntcpmalgyh
        
        ftevgjrbkxmnuidsaqz
        gexasrutkivfbdzqnjm
        dnimrtkeugfzajsxvqb
        quaxkivgnjdrtfbzems
        qxriuendmbagfjzvkst
        
        wthspyrxaijgbkzumvolqe
        ovrgyukexzmpqjhflwit
        tizgwxorvepjkyhlqum
        urlwhtzkvjdqgoximype
        revuqwpogzimyhlxtkj
        
        edpukhotxswnb
        dstnhbueokwpx
        
        yhqwopgnutivk
        qiotnupkvyw
        
        znjofavtsgrkh
        jvahkzotsfgnr
        vhfnrsgtkzoaj
        gfathnzrkosjv
        tvzfsrkjohnga
        
        evyutzwhmxdk
        zxrmsqvfbiwojpg
        
        re
        ktrhjfiz
        c
        aldugvpqybnx
        
        waexnqfbrul
        ertydvxu
        urxe
        echxuor
        rxeu
        
        qtnxbpklyjiw
        dmvocgqbp
        berqpiuz
        hrbkzqp
        jrypbsqa
        
        brhqpmziaxfgle
        rwuzlfenmihpg
        lfcmprhazeig
        
        suzhwbrpe
        clpusebrwai
        pbeasgrofnwu
        dvjwstpxqerkymub
        
        kbouvjnqaysmgrhtwp
        szdvbjhwpxygunfomkt
        gtkleonjbyhmipvsw
        
        mub
        bmu
        
        cfhsjuqrin
        jfinqcrbshu
        nwyjcuflmsrgxdeqhi
        fhiucqjrnso
        
        kdznqiyxu
        emzsrpac
        cszabv
        
        idvqsgemlu
        sdlmevqu
        qlmspeudv
        
        lo
        ol
        
        zcdu
        bcqmdupjzr
        luazkdc
        
        wrju
        wuj
        jauw
        cuwgj
        jurw
        
        sypfjcxmkzh
        vrgpzcytm
        pcdzmyo
        brmwegzynqcp
        auzvcpqmy
        
        qdtxj
        dpjq
        qluajd
        
        bgvldaj
        cxb
        bxc
        rubxf
        
        ziadtsbvuchlofeyjg
        oajlevkdyirbtgqc
        egldjvaiqtybkcor
        litcrbeaojmdvgyx
        
        itcn
        csjftqn
        ntwc
        tncw
        
        aqlmydwfn
        nwliqmfjca
        qwhlmnfa
        nfamqlw
        
        igxtv
        gvxt
        
        dlrkztoe
        gbcdeotf
        dyeoit
        gcdetxo
        
        yuso
        xaesw
        zfsy
        su
        
        wq
        wq
        wq
        qxtw
        qw
        
        fynaektqvcbozhdxpuw
        wzirdbecylampuqs
        
        r
        wcpazh
        pbnyxkt
        lgk
        evdsiuq
        
        tshrjadlymb
        hrftismyjald
        emwljutyarqsdgho
        stjxdhrlmapy
        tajsdhmlrpy
        
        amb
        jvadbm
        fms
        ramjv
        hgtnqywzmkx
        
        skmwcopgnfhuab
        mpjvx
        mrtp
        tympq
        mp
        
        j
        vjtu
        scf
        t
        
        avwomuriqfelzsdnhjybptkg
        yeltqzspmdkihnjvuwfgboar
        
        nhkequsi
        huifnmwsqg
        mnosihugp
        iuyhaslbjvntxr
        piuzshno
        
        rdguywbhevoaf
        aojdgvhbrqyew
        
        dtcipqw
        dktic
        cetsfid
        idctm
        citd
        
        xjnzvmlpi
        vduwgtsy
        
        xfybrjwtkndm
        guxtyvfabjn
        jetfoqnxplyzi
        
        brosek
        soberk
        borsek
        skrboxdze
        
        uadtqoi
        itaqud
        udqtia
        
        ijqrfe
        ijqe
        oqvj
        
        vernidqwmzpho
        wpvzhmoeid
        mviodhpzwe
        
        ikultrxhjoz
        kihjlutzx
        xihkzlujt
        tuixjzhelk
        jxhlutzik
        
        ztnmevyjlbisdfupgkrwq
        iaxytmouwljksngh
        
        ya
        y
        y
        y
        y
        
        dfizts
        fvslqiwtc
        xdsgzitf
        siptfmh
        iskrnutyfe
        
        czlaqjrxoeivgpbsnkym
        bxwldzaikpemjfyosqtgvhcrn
        sqgaroynvkcbejiuzxlpm
        
        adtcenfvy
        ajmwvsdkf
        
        hgpyaov
        fqnaidbgruokxzhy
        oawshgty
        
        vztswelufacbk
        adkfuvmo
        
        ceqrx
        ylgrm
        xr
        zihukwvrno
        rjfm
        
        c
        c
        c
        c
        cy
        
        nkzfxij
        pevkoxydw
        uamtrbhlgcsq
        
        k
        vk
        xgk
        nk
        rk
        
        rokqypnfjm
        fvkrpjygnibqmo
        mpqykofjrn
        fjnpqkmoyr
        jqoymprnfkw
        
        sgpv
        pumasyv
        
        euhbkzytq
        khqdzyeno
        gsfmzkhjeil
        
        g
        g
        g
        
        xnmucpeqvjizwhklbg
        hesokupzcjlrt
        uypfachlzejk
        ekjuchltdfpz
        
        pwaefhvgskymuql
        pykgwvcsqomhfbnajzeu
        reqmsxkgpyfuwvaih
        agqumvpyfktshxdwe
        
        npokjeqbiucfamxyrtw
        haglxndtebiqojymwuzfr
        iymxjtonrfbweqau
        ecwbxyarjmtoqnuif
        
        wmv
        qmof
        
        lvno
        rupsvno
        vfon
        vdno
        
        r
        rf
        
        cruektys
        ckwuqeltbyr
        cektyur
        
        omwygfcpaliuqvteshzdxn
        vqbctzumoikefahdpnwglsx
        litasvmxnoeudqgfphzwjc
        desovqwhuimxzptngrflac
        
        zmyebqukpivjhorctsnldxag
        snckjqrluyzwihaxmvpdoe
        
        awtsrxfhc
        tiqphvdywaz
        ihwta
        
        rfqnegxpmjtzcihskvab
        etmvrxifkqsgjnpbzcah
        
        nabdje
        aezxjn
        bnezoa
        ean
        qrenga
        
        rlhxpyo
        r
        mnorl
        tgwizrqvcbe
        dr
        
        vpqbjyseizrtn
        bljrtepdyqnvszi
        zbtrnysjpvqei
        bhgyqpvjenrtzis
        
        hkzcxmwug
        wygxkuzm
        wumxzgk
        
        rq
        pq
        fu
        ibzwnx
        hr
        
        duabykztcwnqxmflpse
        qxzdpbnfwmstcuakryl
        nlbctapxmkzuwdsyqf
        dyslfpuwbitqnzxahjckom
        
        qoacdtzusvixrh
        euzrowdtglmcikav
        
        outyzds
        bdlyztwso
        kbosyzwedgvjlt
        
        a
        a
        a
        a
        a
        
        poejxws
        jwoexsq
        exjsow
        oexswj
        
        iwqaesxpufgmr
        uxpwmfsaigq
        awmuxpisgqf
        
        ycxhlrfpmnwtab
        rulhtdsf
        
        jbgewroydxaiqfmkzv
        kdvyifqtazmocnws
        ktvhwaoiydqmfz
        vmdokzqwayif
        tkfwaimdzyoqv
        
        sjqhftbamkzwyorlpve
        rsefbmpzhwvkajtqoyl
        ajpmbotsqhevlyrwkzf
        tmslfhqerjkvgxwayopnzb
        tpseohzrvqyjmwlkabf
        
        rtuekjwpcabm
        krbupeminyha
        
        lcgnpwvkeuaxsqhimzorbydft
        hpjksmytlavfzcrundigqboexw
        vhpbzfqemyockrxgniadtuwls
        yowhvzpldfbtqgsxamcnkireu
        kvfbynscmrdaupegltzixwohq
        
        g
        igk
        mwfen
        
        bujfzi
        fbj
        rfjb
        
        kzxnlwcj
        cyezomtkwlj
        cujwlzak
        lawjczk
        ckwsjlzx
        
        fwhyzdn
        qjhcdaew
        
        ibrx
        uqosfw
        xiyre
        gixryl
        
        ck
        kcs
        ukca
        cks
        
        ex
        w
        ijmhbvkoe
        alhq
        
        at
        ta
        uat
        ga
        
        dcgitapjnokhsx
        cbrxumnqijlfvozsy
        
        wfvcx
        kop
        ygensbhta
        crqi
        mdz
        
        dwhcuniof
        ihwmnfu
        ohnudfwi
        kpnirgwjhuef
        ihnwufq
        
        rlga
        sparg
        
        hytsabludcfv
        jewgmrznp
        
        vlmqbx
        pwrcexfhkzgyns
        
        w
        w
        
        av
        zvma
        
        cpjklr
        dyvns
        a
        
        yn
        ny
        gcyn
        umznyhv
        yn
        
        wnvsafjgr
        wfngjiasrv
        
        ievwnudhstf
        fsuvhtiew
        bheutiswvf
        
        udtnwkbheaf
        kucylwvjxiqt
        
        hljtmwnzcdkrfisv
        wdjhtlcnrskivz
        wjdvntscexqlripkbzhgay
        
        bkjmqivtuanscydxp
        cwqxidgpvbntusmakjy
        tbjkvyaixsdcpmqun
        
        ftl
        e
        e
        u
        
        hkjcgexiqbs
        kbehocig
        higkycoblet
        nblicogkeh
        gehikzbc
        
        waingcjboqylezdsu
        nmyukizxdbwvoqgcaspf
        tyqdnbgcsoujiazrw
        
        lfchjito
        vlutojfcsh
        
        jovtwiuheqkrdxapcsfgm
        cvawpxumglirokdtfqjhs
        
        kswydazphxc
        xwhsayzkncde
        
        lahity
        vfgipmabtyrn
        yhidtsa
        yati
        aitqyh
        
        d
        g
        
        rphofvxebzy
        uzqfyd
        
        xyowpfhvtdkjersgalzi
        bgalejwmkrhycopfvtidsxz
        jauyptlhwrvgszfoexkind
        rvkihpgyfawtlzdjxseo
        
        uqbnrhlasgdopwcvfemztkyjix
        oafnpqgtdezrwlxkvmhcubsijy
        
        kgrovfpiatd
        sdrxfik
        hfibczyekmqrlu
        
        oydl
        dohl
        doyl
        
        bkvnawhqodjcrzpfxtl
        lmxcgkfbtqnwyphrouzjvia
        twpvoxkhaqzsnjlrfbc
        
        no
        bnix
        nabv
        tdumsrc
        a
        
        k
        qsj
        aqjs
        
        tzfuo
        fzvxspjamchgio
        fozbq
        ozf
        
        atnxcrdus
        rinqbdasxf
        caursxdnl
        zandsxr
        
        saryuioetn
        apemtnioyr
        alotvfiyngerq
        ntpaoweruidy
        
        q
        it
        c
        q
        
        hzoiptgj
        wzpd
        hpzdj
        bzqkpv
        
        zsa
        za
        
        ol
        o
        h
        
        xf
        zndqlyf
        fk
        
        ubaplvgsfqn
        vlbqefsgpn
        bqlsgnpfv
        lbpvqgnsf
        
        nphoablwjs
        hubyic
        zfmgibxeh
        hdbuyrg
        
        mtdi
        dhntuckim
        dtim
        sfmeidt
        dipxftm
        
        fxwnjhitovpde
        vokwtfjspmedib
        gqftcrelpovyzwid
        dwepovfitan
        
        naphmuwlztbxsiqy
        brpnyfqxto
        dqtrnpykbxe
        npdbjtoyxq
        dvpqtbxyn
        
        tlhrgk
        tkjh
        cxbtov
        tjy
        
        ukjgpahefm
        eiajkdwmt
        dxawynmebikj
        
        ozpmc
        pmzco
        pcmofz
        mcpojz
        zmovdcp
        
        szyamqourexh
        qesympcalfokh
        
        fmlotwur
        zdgwyiqmnk
        
        cyeqwlbki
        dnufjzstpvhr
        
        w
        w
        w
        
        efzqnjvhplgrmy
        bzmovalwqkyjgrxpf
        riydsvtqcufp
        
        tclrg
        rlycb
        edzkrlc
        clr
        
        ljpfkhrzgmno
        zlhpkojfmrnxg
        hgprkymfnzljo
        dbhrgzklvnpioajtmf
        
        vybn
        vybn
        bynv
        vnyb
        vnyb
        
        pvakljgcefuyxzwr
        uwcevpkflrxjgzay
        
        d
        d
        d
        d
        d
        
        siy
        z
        c
        
        fpusnocme
        okum
        wmubojtyiazg
        lfxrkuqmdo
        xoum
        
        z
        i
        i
        
        exoimtjhqap
        xzbmulsdo
        
        nrkvlyhj
        rqhjnkyv
        nhkeyrvj
        
        fgdilbrjovqkxe
        riknjxmocevudl
        koyixrdeljv
        
        fv
        vf
        fv
        ovf
        vf
        
        e
        qcdu
        yk
        aiwrtg
        
        aosmzekcfbg
        cogzvamfkestxb
        wucsqojzbfynrekgmap
        mszbokgefalc
        cbegakfsomz
        
        l
        lr
        l
        l
        
        ipbrflxjntmyzwh
        xthbpywzonkidrfj
        vxtzirpjbnfwkyh
        jbzfaiwtnuxyhgcspr
        tkqhyxbnfizpjwr
        
        idz
        ngmuvotyjqlw
        fdpbz
        bi
        sfk
        
        u
        u
        
        xiwtjalesvy
        itsvdehxwy
        wzbkiovpnesmxgrt
        
        hqalfwptvmydruokzejincgbsx
        fuyjneqibopgvmdlratwhxkscz
        
        soehbfdlunqayzixpcg
        djfeosucbgplqh
        svpwhkurtfgqbdoe
        
        srjgvqtldz
        vzqrdgoljt
        lzsjqgdvrt
        trlvdjzqg
        
        v
        h
        p
        p
        
        cjnm
        mcjn
        pncjm
        mncj
        mjcn
        
        iok
        iok
        iko
        iko
        
        xcwgjue
        kgju
        azogjuft
        jgmuxwc
        
        msajntrlkxqeiohfv
        getnrvjoflqxma
        hfqmjnvagxlotre
        jyovtledxrnfmqab
        qxtverwjialonmf
        
        hksfi
        beqrfzgoul
        
        czlmtbnrqjduah
        rdzgbnmhiauslct
        tcazsudprlhnbm
        nwctrlxbhvudzmfea
        tbcqnyzdrlmuha
        
        s
        m
        m
        
        qmxkiv
        sqcxm
        
        kvtbyfazojer
        rofevztkyajb
        tkazojvbfery
        
        jrwld
        ijward
        jpyrdbwe
        rjwd
        rdwjm
        
        iwartbsghcj
        itgwajlzs
        
        uoebjyairqxpn
        ijauenbyxorq
        arobqyxieunj
        ruhiodexbyqja
        jibecuxoryqa
        
        nk
        nm
        n
        mwn
        nw
        
        rkzdeiufl
        knibderzmufl
        
        ophtrmdneysl
        oelpndymtsrh
        ptndroyehslm
        trsendlympho
        tmpnhyseolrd
        
        vjdes
        avps
        vs
        
        lrokj
        rlvgocjwmnhpxye
        ljrof
        jqfzlro
        jrlo
        
        ajz
        mztjnk
        dojlgbzv
        jzy
        
        nqg
        xgef
        
        qytgos
        qgt
        
        uixtyzmjskabndwl
        xzkujfpqrwtmdsioanb
        gdztwsjmkxieuan
        zwumkxqjdaivstn
        
        ybekpljqhwaozrsunvc
        wabijepnshzvlmkucqoyr
        
        ywq
        vwa
        
        ozxvnabjchsurkyit
        hrcxntaiujfkbsvy
        cvytrqdikuahbsjxgn
        vkybjratchnfxius
        
        xkozfm
        fthk
        ujyprq
        
        dmavqeft
        facmbgevqtk
        qaftmev
        
        nqftsomeiwkh
        kodtfarsqmpnwzev
        gnwfskouxqmte
        kqymjenlstowf
        gqwmeckxfobstn
        
        w
        f
        f
        f
        f
        
        ynouhdazs
        uhndzsqaoy
        dyarhuzsnwo
        
        twvzmsuek
        tulsmekz
        sxmlidpuekz
        zmsenujko
        
        pyid
        pidy
        irsmdz
        
        nglvrjkmh
        altmnwkhfro
        jrlzntym
        unqrimlexbsc
        
        rzmfbjnvtuhalspydkq
        kdctavibrufjzmpwhseql
        
        quj
        uq
        uirqdc
        uq
        
        csorknptwzehgvx
        olzknwjieyhv
        aebwnhvqkoz
        
        onqbzfcsykjrhpuelmdvwt
        gyunqefdoszkptcjlmhwb
        aqbywdnxhjfuselkztopcm
        pnlcosjfhymdwzvbutqeikr
        
        ncs
        ey
        dc
        ypt
        qhvgowiuabkrx
        
        o
        o
        o
        o
        
        si
        s
        sq
        ezsaux
        rsf
        
        mxtindkegroflbps
        wopfiexsrnylgd
        
        cdpszukwehnqyotbarjg
        gohpwlyketrsza
        hyokzsrgeapxltw
        
        ozbaxtrhsnjydpqfmlvckw
        ykpqahmucslrzfwxodtv
        
        dro
        dolr
        idro
        odr
        drojmps
        
        f
        f
        j
        f
        f
        
        x
        cxs
        xm
        xm
        yx
        
        lmjxn
        cdou
        aqekouwci
        
        asqkcwirotd
        iqctslwpkagro
        qwvfrjeixoctasdk
        ksfvrtcaoweuqi
        
        rcxjokgweimzaqlsyvh
        eiszkpamocvhux
        
        svbneghqi
        wlngkm
        
        yx
        yx
        yx
        yx
        
        zgmtedunpharcvifyxsq
        cdwyhxupfamtgzqjnosrevlik
        rtshdumnvfxieypcgbqaz
        nepzuxfaqbtmyrdhgiscv
        yvcmtepxzqadfhrnuisg
        
        odvngjmuw
        nmjguvo
        ipsjlgvboumnyh
        ujvmgond
        
        ibte
        lbj
        
        vnyazpoqm
        nyvouxaepms
        mpgyvjoacwn
        dymapvnkoh
        
        zvqmtfcbeikxwsgjudo
        zjodgqbamcwnevukftx
        tdwevmbqojukzfcxg
        qwykzudcbgmofexajvt
        
        hagrex
        egrxah
        
        z
        z
        
        gmx
        wxtmg
        
        vh
        izshx
        
        vejrthqgixubla
        xwroqnjvzkptfbh
        
        ngpauyltq
        qftxapncled
        qnpbwyualght
        pytqnal
        pwhqktlnua
        
        ofelsiqtakyvgcdubhprm
        arucvsxkezgifobqp
        
        sybhmruftp
        qmbyfrphsu
        qyfrphbusm
        fpusrhymb
        
        haekngcs
        gahj
        
        ycatzehdimog
        fvh
        hqk
        hq
        
        at
        i
        v
        v
        v
        
        fwsecblarvdo
        sdoravlewcfb
        ewjofrlavcdsbz
        drfwcaoslvbe
        
        rwetumkldsgjfbqianohzv
        svfkorqaduhlzigjtwben
        nfwougzjylprdqtvhsbaeki
        
        zdwskmcux
        tcpmxog
        fudcnzxm
        
        wmcleqrfozgstuhandipbykv
        wrfugkoblvazmsxpycjhtdqine
        okzimeadcrpwybvlghstqunf
        
        croutqsxvyfg
        qelbwgca
        gcq
        gqcilm
        gqbpwcz
        
        vbjx
        xfeojybgw
        jbxu
        ujxb
        
        humzypcl
        mlcuh
        mlchu
        mwclhu
        mcuhl
        
        slqntvhwxeby
        vhwxbltseyqn
        wtsxhvblneqy
        
        ikby
        i
        it
        i
        
        loheyfgpaibvmkxn
        auivtdszjelhmcgxp
        iykrlbagmevnhxp
        
        itnaqvyzbjluexgposwc
        xcoqgbusthpnvakzwlyie
        unqgycsvtwozxiblpea
        inzlgatuybvewqcxops
        xtlqgaezvcuyionwbsp
        
        sdbugmnzcwfqyvakjerx
        rebfqgcdmunxsyavwzjk
        szdwkavcbujngmryexfpq
        qevfkmrbxyungjzscadw
        gquzdwsykraxjnhelfvmcb
        
        zocknmwfbitjuv
        cbiojlnuzwt
        nyzbcwitjuo
        zocxjqntwiub
        oajubtzrncwi
        
        iys
        syi
        wzispyhgb
        insy
        
        udpvgixzhyobecns
        hugvxskpeoc
        sgpfoemxcujhvlw
        gxcqoeuvhsp
        coavprushteqygx
        
        zsqtvr
        hqej
        sicqg
        hetqad
        qlkmpyxuowbfn
        
        lopqfgtzsbny
        puyfqbnlzsio
        jnblqypsofzm
        sbyzolfqpn
        pfqblykunsoz
        
        iegjxynurlcftbzkph
        gynlhpdrfezukxcjbst
        cuzteyghlrxikfnbjp
        kzenfpyhrugblxtvcj
        
        hlupx
        fqpsux
        xsqup
        pxuwf
        
        gzt
        zmgt
        ngrmzlt
        zgtcs
        
        nsp
        s
        is
        s
        
        zsixudhgpcfblnqmve
        qxgpsczindufeblvmht
        xfnueqghlmsdbvcpiz
        qibfmhgselxcdznpvu
        
        fkxcogmz
        cxfmkogz
        gxfokmcz
        ayhgxkoqfclmz
        ocxfkgmz
        
        qxtd
        hxmwdgt
        cdtix
        
        vfyb
        epdk
        p
        npz
        
        bkvrjsygeczfpqomhuwdi
        wlrodcybkztqujmheapig
        
        kftsrqpxazb
        zfkxpqbs
        
        guysto
        ysf
        sfy
        ysh
        ys
        
        sh
        o
        vi
        z
        uh
        
        lbqrpxwsuvdec
        fselpdtqkvbrgu
        
        hmwjzxectfnsiqyl
        isxtqjywcnhfmze
        
        uefgopcqnktavdhljir
        dvceuhtlqnkpfi
        ficqudvlhntkep
        invtfpzhldcuemkq
        
        gjlhmdyun
        hlujdmgny
        
        zupwyo
        wyonzpu
        yozpuw
        yojwpzu
        ywpuzoq
        
        atculpzvwro
        vazwctrpuo
        tapwuzgvroc
        
        kwaxzer
        kwerxza
        wkrxeza
        akzerxw
        xwezark
        
        pazsg
        apwsz
        
        tshprib
        phisbr
        pihrbs
        phbsir
        hrsibp
        
        ishtmycqw
        thymsc
        smtchy
        ytscmh
        
        fwuhmsnvjclaipgbd
        huogmlpcvdjwniazs
        givwhcujkmsdnlzpax
        
        kfi
        f
        f
        f
        
        rotszqynjuwvdcmb
        utodajecnvhy
        
        xhmqfursgt
        uthagrnfxscm
        sqhtmfgwixrlyu
        lwrfxytpgushm
        
        l
        l
        l
        j
        l
        
        jfgqrstv
        izaod
        
        rdzqnehxmwlpobuskvjiy
        uhkxpldyqnbwoszmiverj
        zrgpckwdusmixnebvloyfqhj
        uobekwirqxynzdmhvlspj
        
        qauvodcszfhleypxbgjrknt
        yvfdoahkxjnslpgqbrcuzet
        uqrdlzsnpyahtfboxcgvejk
        yjqelcdxrzusghfabktnpov
        oetuxsfzyvlrkhgbnqcdpja
        
        lsgzdmvcykr
        zblvifkcpesjda
        qulndsmtcwzokv
        
        gyvnbcsaljqrfo
        jhbfxlmqizayrswnu
        blsfnraqpyj
        afhylsrjnbq
        
        gaklz
        kaz
        zatnkc
        
        ksgcejpyt
        vtisnmp
        ontfspa
        tsp
        
        gpnklyvzdei
        iylnwvzke
        ziketylvun
        vznyklebi
        kvziajyqnhmcsel
        
        r
        o
        r
        o
        z
        
        ug
        lug
        ug
        
        ydgtezlosuirxqhck
        zhgsqoeyxidctukrl
        ritqhczsuekgdyxlo
        reluzxtksoycdhqig
        dcrziheolgsqkxuyt
        
        pxgmjlwzycrtuonv
        xvrnlpyjzoutwgcm
        lxgtpyuzojcwnvrm
        ncvrlpmyjgzwutxo
        lgcvojwxnuzmrpty
        
        tklvywfzjhx
        uzkftyhvlbxw
        ykhwftxzvl
        
        jukhnepb
        nbukephj
        puenjkhb
        punjherbk
        
        ixsmkpvzqryd
        xifdkpoejy
        
        ghldsu
        orutphgf
        uhgc
        
        pnkdgfcbmwlqjxh
        uwkgyhnsjblmqcd
        
        cui
        iucqvj
        uxprfci
        iwxcu
        iurcx
        
        fomuvtrxj
        txjumv
        uvtyjmx
        mujxtpkvd
        utfyemxvqhj
        
        kahpnit
        zdgtbcjehip
        guwjihbtplr
        mtxsivpqh
        
        hbmuerdji
        pqjyxrlhnbi
        
        blup
        fupb
        bpu
        pub
        ubwmp
        
        ntyhgwjekrxsudz
        bvdkzoprfutcjqgn
        gsaekrjtnmzud
        gnktzjxudr
        nzgtjkulidr
        
        kvamjswfgoul
        fmagujslv
        jcugaslvfm
        
        bdtqeimuzpnhgavrw
        ptmhzulsvqgnfrwkd
        kcyturwmqhzgvdpn
        
        lkvzyhnug
        zuglkyef
        
        xnsqbdhtiagwvrlpezyf
        dlntjkpzugsqwaxeryhf
        rpehgncayztmsqbfiwodlx
        
        fsbv
        ryoptdf
        
        ebxfakjriydp
        yijedfkprqba
        praekbjifdy
        ibaejpfrkdy
        
        myfvdnqsxiazjpg
        jefvmxpaisdozlbcqn
        hkxqjdpnafrmsztv
        
        faoknlebqpy
        kpfylnaoeqb
        oankeqybflp
        nyeqkpfblao
        kobelfpaqyn
        
        b
        qierm
        by
        
        rdhgxubnkcot
        kbcouhmxtgd
        smbtgcahuikyoxd
        
        csuqvbzmopehfanytxlrwkdigj
        qrexnzoakupicfgthdsjybvmwl
        wpfkachnjtxgdysboilmuezrqv
        
        ul
        lu
        lu
        
        qrb
        bycr
        pwe
        
        sbfiuhzw
        msouybvlzrhwdfj
        ihvzblw
        xpbcqazwtekgn
        
        vouxdfiamelztswy
        iflgzytmwsbduxe
        iyfkjmspzwutxlde
        ncldmpithsuyekwfbxgz
        
        ijxcbyp
        jbpiycx
        xybijpc
        
        wanuhtdyskljicxzebmfpvq
        lyguehpfsvcmtbkndwao
        pkbdywhsvmealfctrun
        
        ahbftkwivsczonj
        nwkzvahfbycjitos
        jmznkbieoswtvafhc
        vztkiqjanhsbfwco
        
        olxzgkrjcandtwupehsqbify
        rzcaekovyijgxtwnbdsqhpul
        
        azhycqgnxjpudrvfko
        oxfnhvkqpdcrzjgay
        hrebsqyjpaoglktdxznmcfv
        rjvzcyhdqpagfonxk
        jygkqxfhrcvodznpa
        
        pqkfrztwhgybncd
        yhgpobeuwatmkzqxnrd
        dzqgrvbyptkhnw
        snyhilgrzwvqctkpdjb
        
        zcljnxvohbuqtyf
        cyqlfrhnxujobz
        bwxzhyoeusclfqnjmi
        
        gixeoy
        igoeyx
        gxoeyi
        
        xvfowdzkineas
        dpinwxejkfsavoz
        evkoxiznadfws
        
        pfrxj
        dqearfgnt
        
        sfhkce
        nvbdk
        knv
        
        oxpa
        poxa
        nxvah
        pxa
        xam
        
        lafch
        hafnxlc
        
        dorcjz
        aolei
        
        nszybcuheqmt
        szhjpvencm
        zhnedscmp
        
        wfdatxbsk
        ucwklisqtfn
        
        vguconbkqjmw
        jnqvmgkwu
        nqjwukgvm
        jwvguqnmk
        
        grajfdibqoknsu
        xecwhajtilpz
        yihpzjam
        
        kjzlpfao
        eprntujdzhxwql
        vjlmcyazsp
        
        eyvi
        tiye
        iey
        
        mjlgsacntvyzqrdufhxpk
        ftlzrhsjgvmnkupdxcqay
        dyvhtcruxmapsnljzqkfg
        
        shj
        lzsvj
        sjh
        msj
        js
        
        zhoselpidtvnqac
        cqitodanpuxvzh
        
        ih
        tzhe
        whe
        mrdvh
        
        htacu
        niatchu
        yucath
        
        adhflbns
        plhbdfas
        afshldb
        sdvhaiolqbgf
        ksfdlhba
        
        frsy
        frsy
        srfy
        
        dcq
        dkmeqcv
        qdc
        cdq
        cdyq
        
        awgp
        wp
        fpyw
        
        kjph
        xhkjp
        
        fjplvwnihqotkcsyd
        tdvusiypqkjcfowlh
        
        quyzmxeprlgona
        hwkseitjocfxr
        dzpqolenxr
        brpeyox
        
        bnjhzetoldk
        ftnizogykhamjbul
        zobtjesnklh
        qbkrtjlnohsz
        kbjpwoqznstlh
        
        w
        t
        wgq
        sanxjuzypkf
        
        wkpzeigcxqob
        wbgipzkqeoxc
        ceqkgxbpizwo
        qbozgixckepw
        
        vibupghywqco
        vwiqhcgbpyou
        vycqgohubiwp
        obcguhvipqyw
        pbujhvewogqyic
        
        qol
        los
        oghrfxa
        
        slorfjctxvw
        jdfcyrtoxv
        xuozvcernibftj
        vcjfxwoytr
        
        awrehc
        aicze
        caeh
        
        qxvuhyp
        hxvcpy
        """

        # when
        result = Day6.calc(input)

        # then
        assert result == 7283
    end
end