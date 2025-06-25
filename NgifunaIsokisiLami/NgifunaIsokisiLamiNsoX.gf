--# -path=.:..
incomplete concrete NgifunaIsokisiLamiNsoX of NgifunaIsokisiLami = open LangSBantuNso, NgifunaIsokisiLamiLexNso in {

  lincat
    Sentence = Utt ;
    _Sentence = S ;
    Predicate = VP ;
    _Predicate = VP ;

    Someone = NP ;
    Clothing = NP ;
    Time = NP ;

    Somewhere = LocAdv ; -- somewhere you can go to or search
    Place = NP ; -- somewhere you can go
    ClothingPlace = NP ;

    TimeOfDay = Adv ;
    HourNumber = NP ;
    OrdNumber = N ;

    SpacialIndication = LocAdv ;
    SpacialThing = NP ;
    ContainerThing = NP ;
    _ContainerThing = CN ;

    ClothingItem = { cn : CN ; n : Number } ;
    _ClothingItem = { cn : CN ; n : Number } ;
    PairedClothingItem = CN ;
    NonClothing = NP ;
    _NonClothing = CN;

    RoomAction = VP ;

    Color = AP ;

  lin
    MaybeS s = mkUtt (mkS maybe_Adv s) ;
    SimpleS s = mkUtt s ;

    TimeS t = mkUtt (mkS t) ;
    SomeoneDoesPred s pred = mkUtt (pres_pos_clause (mkCl s pred)) ;
    SomeoneDoesNotFindClothing s c = mkUtt (pres_neg_clause (mkCl s (mkVP find_V2 c))) ;
    SomeoneSearchesSomewhere so sw = mkUtt (pres_pos_clause (mkCl so (mkVP (mkVP search_V) (SyntaxSBantuNso.mkAdv sw)))) ;
    SomeoneSearchesForClothing so c = mkUtt (pres_pos_clause (mkCl so (mkVP search_V2 c))) ;
    SomeoneSearchesForClothingSomewhere so c sw = mkUtt (pres_pos_clause (mkCl so (mkVP (mkVP search_V2 c) (SyntaxSBantuNso.mkAdv sw)))) ;
    SomeoneGoesSomewhere s p = mkUtt (pres_pos_clause (mkCl s (mkVP (mkVP go_V) (SyntaxSBantuNso.mkAdv (locativisedNoun p))))) ;
    -- ClothingIsNotHere c = mkUtt (pres_neg_clause (mkCl (mkNP (ProDrop it17_Pron)) (mkVP (mkVPNonspec khal_V2 c) here_Adv))) ;
    ClothingIsNotHere c = mkUtt (pres_neg_clause (mkCl c (mkVP (mkLoc here_Adv)))) ;
    ClothingIsNotSomewhere c s = mkUtt (pres_neg_clause (mkCl c (mkVP (mkLoc s)))) ;
    InsteadOfClothingSomeoneFinds s c nc = mkUtt (mkS (SyntaxSBantuNso.mkAdv (locativisedNoun (mkNP (mkCN (mkCN place_N) c)))) (pres_pos_clause (mkCl s (mkVP find_V2 nc)))) ;
    SomeoneFindsNonClothing s nc = mkUtt (pres_pos_clause (mkCl s (mkVP find_V2 nc))) ;
    ClothingWasSomewhereAllThisTime c s = mkUtt (pres_pos_clause (mkCl c (mkVP (mkVP (mkLoc s)) (directAdv (mkNP (mkCN (mkPredet all_QuantPron this_Quant) time_N)))))) ;
    SomeoneOpensAContainer s ct = mkUtt (pres_pos_clause (mkCl s (mkVP open_V2 ct))) ;

    SomeoneIsInAPlaceS s p = pres_pos_clause (mkCl s (mkVP (mkLoc (locativisedNoun p)))) ;
    ClothingIsSomewhere c s = pres_pos_clause (mkCl c (mkVP (mkLoc s))) ;

    GetsReadyToPred p = mkVP get_ready_for_VV p ;
    WantsToPred p = mkVP want_to_VV p ;
    SimplePred p = p ;
    PutOnPred c = mkVP put_on_V2 c ;

    NumAdvTime h a = mkNP h a ;
    NumTime h = h ;
    OClock o = mkNP (mkCN (mkCN hour_N) (mkNP (mkCN o))) ;
    Six = six_N ;
    Two = two_N ;

    PlaceSomewhere p = locativisedNoun p ;

    SpacialThingSomewhere si st = locativisedNoun si st ;
    ContainerSomewhere ct = insideLocAdv (locativisedNoun ct) ;

    Pyjamas = mkNP aPl_Det (mkCN (mkCN clothing_N) (mkNP (mkVP sleep_V))) ;
    Bed = mkNP (mkCN bed_N) ;
    Table = mkNP (mkCN table_N) ;
    Pots = mkNP aPl_Det (mkCN pot_N) ;

    Under = under_LocAdv ;
    OnTop = on_top_LocAdv ;
    Behind = behind_2_LocAdv ;

    ColoredContainerThing c ct = mkNP (add_color ct c) ;
    SimpleContainerThing ct = mkNP ct ;
    Cupboard = mkCN cupboard_N ; -- ekhabetheni
    GoodsCupBoard = mkCN (mkCN cupboard_N) (mkNP aPl_Det (mkCN goods_N)) ; -- ekhabetheni lezimpahla
    Drawer = mkCN drawer_N ;
    Box = mkCN box_N ;

    SomeonesBedroom s = mkNP (mkCN (mkCN (mkCN room_N) s) (mkNP (mkVP sleep_V))) ;
    RoomForDoingSomething ra = mkNP (mkCN (mkCN room_N) (mkNP ra)) ;
    Outside = outside_LocAdv ;

    ColoredClothing ci c = mkNP (mkDet (get_num ci.n)) (add_color ci.cn c ) ;
    SimpleClothing ci = mkNP (mkDet (get_num ci.n)) ci.cn ;
    FirstOfPairClothing pci = { cn = mkCN one_Enum pci ; n = Sg } ; -- isokisi elilodwa
    SecondOfPairClothing pci = { cn = mkCN (mkAP other_A) pci ; n = Sg } ; -- isokisi elinye

    PlaceClothingItem ci cp = { cn = mkCN ci.cn cp ; n = ci.n } ;
    SimpleClothingItem ci = ci ;
    SomeonesClothingItem ci s = { cn = mkCN ci.cn s ; n = ci.n } ;

    Shirt = { cn = mkCN shirt_N ; n = Sg } ;
    Pants = { cn = mkCN pants_N ; n = Sg } ;
    Jersey = { cn = mkCN jersey_N ; n = Sg } ;
    Sock = { cn = mkCN sock_N ; n = Sg } ;
    Shoe = { cn = mkCN shoe_N ; n = Sg } ;
    Socks = { cn = mkCN sock_N ; n = Pl } ;
    Shoes = { cn = mkCN shoe_N ; n = Pl } ;
    OneSock = mkCN sock_N ;
    OneShoe = mkCN shoe_N ;

    White = mkAP white_A ;
    Grey = mkAP grey_A ;
    Brown = mkAP brown_A ;
    Black = mkAP black_A ;
    Blue = mkAP green_blue_A ;
    Green = mkAP green_A ;

    Sleep = mkVP sleep_V ;
    Wash = mkVP wash_V ;

    Kitchen = mkNP (mkCN kitchen_N) ;
    School = mkNP (mkCN school_N) ;

    Vusi = mkNP (mkCN Vusi_N) ;
    I = mkNP i_Pronoun ;
    I_Drop = mkNP i_drop_Pronoun ;
    He = mkNP he_Pronoun ;
    He_Drop = mkNP he_drop_Pronoun ;

    Morning = in_the_morning_Adv ;
    Afternoon = in_the_afternoon_Adv ;
    Evening = in_the_evening_Adv ;

    ColorNonClothing c nc = mkNP (add_color nc c) ;
    SimpleNonClothing nc = mkNP nc ;
    Sister = mkNP (mkCN his_sister_N) ;
    Snake = mkCN snake_N ;
    Spider = mkCN spider_N ;

  param
    Number = Sg | Pl ;

  oper
    add_color : CN -> AP -> CN  = \cn,color -> mkCN color cn ;
    get_num : Number -> Num = \n -> case n of {
      Sg => sg_Num ;
      Pl => pl_Num
    } ;

    pres_pos_clause : Cl -> S = \cl -> mkS presentTense positivePol cl ;
    pres_neg_clause : Cl -> S = \cl -> mkS presentTense negativePol cl ;

}
