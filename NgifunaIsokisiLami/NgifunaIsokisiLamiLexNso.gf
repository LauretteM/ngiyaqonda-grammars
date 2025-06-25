--# -path=.:..
concrete NgifunaIsokisiLamiLexNso of NgifunaIsokisiLamiLex = CatNso,CatSBantuNso ** open ResNso in {

    lin
        Vusi_N = mkNoun "Vusi" C1a_2a ;
        Lebogang_N = mkNoun "Lebogang" C1a_2a ;

        bed_N = mkNoun "lao" C14_6 ;
        box_N = mkNoun "pokisi" C5_6 ;
        clothing_N = mkNoun "aparo" C7_8 ;
        cupboard_N = mkNoun "khapoto" C9_10 ;
        drawer_N = mkNoun "laiki" C9_10 ;
        goods_N = mkNoun "thoto" C9_10 ;
        his_sister_N = mkNoun "kgaetšediagwe" C1a_2a ;
        hour_N = mkNoun "iri" C9_10 ;
        jersey_N = mkNoun "jesi" C9_10 ;
        kitchen_N = mkNoun "rala" C3_4 ;
        pants_N = mkNoun "borokgo" C14_6 ;
        place_N = mkNoun "felo" C5_6 ;
        pot_N = mkNoun "pitša" C9_10 ;
        room_N = mkNoun "phapoši" C9_10 ;
        school_N = mkNoun "kolo" C7_8 ;
        six_N = mkNoun "tshelela" C14_6 ;
        shirt_N = mkNoun "gempe" C9_10 ;
        shoe_N = mkNoun "eta" C7_8 ;
        snake_N = mkNoun "noga" C9_10 ;
        spider_N = mkNoun "gokgo" C7_8 ;
        sock_N = mkNoun "sokisi" C5_6 ;
        table_N = mkNoun "tafola" C9_10 ;
        time_N = mkNoun "nako" C9_10 ;
        two_N = mkNoun "bedi" C14_6 ;

        search_V = mkVerb "nyak" ;
        go_V = mkVerb "y" ;
        sleep_V = mkVerb "robal" ;
        wash_V = mkVerb "hlaph" ;
        cross_over_V = mkVerb "selel" ;

        find_V2 = mkVerb "hwetš" ;
        open_V2 = mkVerb "bul" ;
        put_on_V2 = mkVerb "rwal" ;
        search_V2 = mkVerb "nyak" ;

        get_ready_for_VV = mkVerb "lokišetš" ;
        want_to_VV = mkVerb "nyak" ;

        maybe_Adv = { s = "mohlomongwe" } ;
        -- here_Adv = { s = "mo" } ;

        under_LocAdv = { s = "fase" } ;
        on_top_LocAdv = { s = "godimo" } ;
        behind_2_LocAdv = { s = "morago" } ;
        outside_LocAdv = {s = "ntle" } ;

        one_Enum = regAdj "tee" ; -- TODO: Poulos p 112
        -- other_A = regAdj "ngwe" ;

        white_A = regAdj "šweu" ;
        grey_A = regAdj "pududu" ;
        brown_A = regAdj "sootho" ;
        black_A = regAdj "so" ;
        green_blue_A = regAdj "tala" ;
        green_A = regAdj "talamorogo" ;

        in_the_morning_Adv = { s = "mesong" } ;
        in_the_afternoon_Adv = { s = "ka thapama" } ;
        in_the_evening_Adv = { s = "ka mantšiboa" } ;
}