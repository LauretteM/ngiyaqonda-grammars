incomplete concrete SepediSALXNso of SepediSAL = open SepediSALLexNso,SyntaxSBantuNso in {

    lincat
        Sentence = Utt ;
        Person = Pron ;
        Meal = NP ;
        Kitchenware = CN ;
        Kitchenware_ = { sg : NP ; pl : NP } ;
        KitchenPlace = Adv ;
        KitchenState = VP ;
    
    lin

        BringAKitchenware ware = mkUtt (mkVP bring_V2 ware.sg) ;
        TakeBackAKitchenware ware = mkUtt (mkVP take_V2 ware.sg) ;
        BringKitchenwares ware = mkUtt (mkVP bring_V2 ware.pl) ;
        TakeBackKitchenwares ware = mkUtt (mkVP take_V2 ware.pl) ;
        PutKitchenware ware place = mkUtt (mkVP (mkVP put_V2 ware.sg) place) ;
        PutKitchenwares ware place = mkUtt (mkVP (mkVP put_V2 ware.pl) place) ;
        KitchenwareIsState ware state = mkUtt (mkS pastTense positivePol(mkCl (mkNP sg_Num ware) state)) ;
        KitchenwaresAreState ware state = mkUtt (mkS pastTense positivePol(mkCl (mkNP pl_Num ware) state)) ;
        EatAMeal person meal = mkUtt (mkS (mkNP person) (mkVP eat_V2 meal)) ; -- re ja sefihlolo

        Breakfast = mkNP breakfast_N ;
        Lunch = mkNP pl_Num lunch_N ;
        Dinner = mkNP dinner_N ;

        DescribeKitchenware ware state = {
            sg = mkNP (mkNP sg_Num ware) (mkRS pastTense positivePol state) ;
            pl = mkNP (mkNP sg_Num ware) (mkRS pastTense positivePol state)
        } ;
        SimpleKitchenware ware = {
            sg = mkNP sg_Num ware ;
            pl = mkNP pl_Num ware
        } ;

        TableCloth = mkCN (mkCN cloth_N) (mkNP table_N) ;
        Napkin = mkCN napkin_N ;
        Knife = mkCN knife_N ;
        Fork = mkCN fork_N ;
        Spoon = mkCN spoon_N ;
        SidePlate = mkCN small_A plate_N ;
        DinnerPlate = mkCN big_A plate_N ;
        Cup = mkCN cup_N ;
        PorridgeBowl = mkCN porridge_bowl_N ;
        Saucer = mkCN saucer_N ;
        SugarPot = mkCN (mkCN pot_N) (mkNP sugar_N) ;
        Teapot = mkCN (mkCN pot_N) (mkNP tea_N) ;
        SaltPot = mkCN (mkCN pot_N) (mkNP salt_N) ;
        PepperPot = mkCN (mkCN pot_N) (mkNP pepper_N) ;

        OnTheTable = mkAdv (mkNP table_N) ;
        InTheCupboard = mkAdv (insideLocAdv (mkNP cupboard_N)) ;

        Clean = mkVP clean_V ;
        Dirty = mkVP make_dirty_V ;

        We = we_Pron ;
        YouPl = youPl_Pron ;
        They = they_Pron ;
        He = he_Pron ;
        YouSg = youSg_Pron ;
        I = i_Pron ;
}