--# -path=.:..
concrete NgifunaIsokisiLamiLexZul of NgifunaIsokisiLamiLex = CatZul, CatSBantuZul ** open SyntaxSBantuZul,ResZul, ParadigmsZul,Prelude in {

    lin
        Vusi_N = mkN "Vusi" C1a_2a ;
        Lebogang_N = mkN "Lebogang" C1a_2a ;

        bed_N = mkN "bhede" C3_4 ;
        box_N = mkN "bhokisi" C5_6 ;
        clothing_N = mkN "gubo" C9_10 ;
        cupboard_N = mkN "khabethe" C5_6 ;
        drawer_N = mkN "dilowa" C5_6 ;
        goods_N = mkN "phahla" C9_10 ;
        his_sister_N = mkN "dadewabo" C1a_2a ;
        hour_N = mkN "hora" C5_6 ;
        jersey_N = mkN "jezi" C5_6 ;
        kitchen_N = mkN "khishi" C5_6 ;
        pants_N = mkN "khindi" C7_8 ;
        place_N = mkN "khundla" C7_8 ;
        pot_N = mkN "bhodwe" C5_6 ;
        room_N = mkN "gumbi" C5_6 ;
        school_N = mkN "kole" C7_8 ;
        shirt_N = mkN "hembe" C5_6 ;
        shoe_N = mkN "cathulo" C7_8 ;
        six_N = mkN "thupha" C7_8 ;
        snake_N = mkN "nyoka" C9_10 ;
        spider_N = mkN "feleba" C1a_2a ;
        sock_N = mkN "sokisi" C5_6 ;
        table_N = mkN "tafula" C5_6 ;
        time_N = mkN "khathi" C7_8 ;
        two_N = mkN "bili" C7_8 ;

        search_V = mkV "fun" ;
        go_V = mkV "y" ;
        sleep_V = mkV "lal" ;
        wash_V = mkV "gez" ;
        cross_over_V = mkV "wel" ;

        find_V2 = mkV2 "thol" ;
        open_V2 = mkV2 "vul" ;
        put_on_V2 = mkV2 "gqok" ;
        search_V2 = mkV2 "fun" ;

        get_ready_for_VV = mkVV "lungiselel" ;
        want_to_VV = mkVV "fun" ;

        maybe_Adv = mkAdv "mhlawumbe" ;
        -- here_Adv = mkAdv "lapha" ;

        under_LocAdv = lin LocAdv { s = "ngaphansi" ; reqLocS = False } ;
        on_top_LocAdv = lin LocAdv { s = "ngaphezulu" ; reqLocS = False } ;
        behind_2_LocAdv = lin LocAdv { s = "ngemuva" ; reqLocS = False } ;
        outside_LocAdv = lin LocAdv { s = "ngaphandle" ; reqLocS = False } ;

        other_A = mkA "nye" ;

        white_A = mkRelA "mhlophe" ;
        grey_A = mkRelA "mpunga" ;
        brown_A = mkRelA "nsundu" ;
        black_A = mkRelA "mnyama" ;
        green_blue_A = mkRelA "luhlaza" ;

        of_the_sky_AdA = lin AdA { s = "okwesibhakabhaka" } ;
        of_the_grass_AdA = lin AdA { s = "okotshani" } ;

        in_the_morning_Adv = mkAdv "ekuseni" ;
        in_the_afternoon_Adv = mkAdv "ntambama" ;
        in_the_evening_Adv = mkAdv "kusihlwa" ;

}