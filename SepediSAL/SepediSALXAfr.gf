incomplete concrete SepediSALXAfr of SepediSAL = open MiniGrammarAfr,MiniSyntaxAfr,MiniParadigmsAfr,ParamX,Prelude,SepediSALLexAfr in {

    lincat
        Sentence = Utt ;
        Person = Pron ;
        Meal = NP ;
        Kitchenware = CN ;
        Kitchenware_ = { sg : NP ; pl : NP } ;
        KitchenPlace = Adv ;
        KitchenState = AP ;
    
    lin

        BringAKitchenware ware = mkUtt (mkVP bring_V2 ware.sg) ;
        TakeBackAKitchenware ware = mkUtt (mkVP take_V2 ware.sg) ;
        BringKitchenwares ware = mkUtt (mkVP bring_V2 ware.pl) ;
        TakeBackKitchenwares ware = mkUtt (mkVP take_V2 ware.pl) ;
        PutKitchenware ware place = mkUtt (mkVP (mkVP put_V2 ware.sg) place) ;
        PutKitchenwares ware place = mkUtt (mkVP (mkVP put_V2 ware.pl) place) ;
        KitchenwareIsState ware state = mkUtt (mkS (mkCl (mkNP theSg_Det ware) (mkVP state))) ;
        KitchenwaresAreState ware state = mkUtt (mkS (mkCl (mkNP thePl_Det ware) (mkVP state))) ;
        EatAMeal person meal = mkUtt (mkS (mkCl (mkNP person) (mkVP eat_V2 meal))) ; -- re ja sefihlolo

        Breakfast = mkNP breakfast_N ;
        Lunch = mkNP lunch_N ;
        Dinner = mkNP dinner_N ;

        DescribeKitchenware ware state = {
            sg = mkNP theSg_Det (mkCN state ware) ;
            pl = mkNP thePl_Det (mkCN state ware)
        } ;
        SimpleKitchenware ware = {
            sg = mkNP theSg_Det ware ;
            pl = mkNP thePl_Det ware
        } ;

        TableCloth = mkCN table_cloth_N ;
        Napkin = mkCN napkin_N ;
        Knife = mkCN knife_N ;
        Fork = mkCN fork_N ;
        Spoon = mkCN spoon_N ;
        SidePlate = mkCN side_plate_N ;
        DinnerPlate = mkCN dinner_plate_N ;
        Cup = mkCN cup_N ;
        PorridgeBowl = mkCN porridge_bowl_N ;
        Saucer = mkCN saucer_N ;
        SugarPot = mkCN (mkN sugar_N pot_N) ;
        Teapot = mkCN (mkN tea_N pot_N) ;
        SaltPot = mkCN (mkN salt_N pot_N) ;
        PepperPot = mkCN (mkN pepper_N pot_N) ;

        OnTheTable = MiniSyntaxAfr.mkAdv (mkPrep "op") (mkNP theSg_Det table_N) ;
        InTheCupboard = MiniSyntaxAfr. mkAdv in_Prep (mkNP theSg_Det cupboard_N) ;

        Clean = mkAP clean_A ;
        Dirty = mkAP dirty_A ;

        We = we_Pron ;
        YouPl = youPl_Pron ;
        They = they_Pron ;
        He = he_Pron ;
        YouSg = youSg_Pron ;
        I = i_Pron ;

}