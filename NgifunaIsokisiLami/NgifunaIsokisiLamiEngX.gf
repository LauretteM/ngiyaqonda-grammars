--# -path=.:..
incomplete concrete NgifunaIsokisiLamiEngX of NgifunaIsokisiLami = open SyntaxEng,ParadigmsEng,ParamX,Prelude in {

  lincat
    Sentence = Utt ;
    _Sentence = S ;
    Predicate = VP ;
    _Predicate = VP ;

    Someone = NP ;
    Clothing = { cn : CN ; num : Number ; det : Det ; useDet : Bool } ;
    Time = Adv ;

    Somewhere = { np : NP ; adv : Adv } ; -- somewhere you can go to or search
    Place = { np : NP ; adv : Adv } ; -- somewhere you can go
    ClothingPlace = A ;

    TimeOfDay = Adv ;
    HourNumber = Str ;
    OrdNumber = Str ;

    SpacialIndication = Prep ;
    SpacialThing = NP ;
    ContainerThing = NP ;
    _ContainerThing = CN ;

    ClothingItem = { cn : CN ; num : Number ; det : Det ; a : A ; useDet : Bool } ; -- he puts on shoes vs he searches for the shoes
    _ClothingItem = { n : N ; num : Number } ;
    PairedClothingItem = N ;
    NonClothing = NP ;
    _NonClothing = N;

    RoomAction = N ;

    Color = AP ;

  lin
    MaybeS s = mkUtt (mkS maybe_Adv s) ;
    SimpleS s = mkUtt s ;

    TimeS t = mkUtt (mkS (mkCl (mkVP t))) ;
    SomeoneDoesPred s pred = mkUtt (mkS (mkCl s pred)) ;
    SomeoneDoesNotFindClothing s c = mkUtt (mkS negativePol (mkCl s (ComplV2 find_V2 (mkNP (num2theDet c.num c.det c.useDet) c.cn)))) ;
    SomeoneSearchesSomewhere so sw = mkUtt (mkS (mkCl so (mkVP (mkVP search_V) sw.adv))) ;
    SomeoneSearchesForClothing so c = mkUtt (mkS (mkCl so (mkVP search_V2 (mkNP (num2theDet c.num c.det c.useDet) c.cn)))) ;
    SomeoneSearchesForClothingSomewhere so c sw = mkUtt (mkS (mkCl so (mkVP (mkVP search_V2 (mkNP (num2theDet c.num c.det c.useDet) c.cn)) sw.adv))) ;
    SomeoneGoesSomewhere s p = mkUtt (mkS (mkCl s (mkVP goes_to_V2 p.np))) ;
    ClothingIsNotHere c = mkUtt (mkS negativePol (mkCl (mkNP (num2theDet c.num c.det c.useDet) c.cn) (mkVP here_Adv))) ;
    ClothingIsNotSomewhere c s = mkUtt (mkS negativePol (mkCl (mkNP (num2theDet c.num c.det c.useDet) c.cn) (mkVP s.adv))) ;
    InsteadOfClothingSomeoneFinds s c nc = mkUtt (mkS (SyntaxEng.mkAdv instead_of_Prep (mkNP (num2theDet c.num c.det c.useDet) c.cn)) (mkS (mkCl s (ComplV2 find_V2 nc)))) ;
    SomeoneFindsNonClothing s nc = mkUtt (mkS (mkCl s (ComplV2 find_V2 nc))) ;
    ClothingWasSomewhereAllThisTime c s = mkUtt (mkS pastTense simultaneousAnt positivePol (mkCl (mkNP (num2theDet c.num c.det c.useDet) c.cn) (mkVP (mkVP s.adv) (mkAdv "all the time")))) ;
    SomeoneOpensAContainer s ct = mkUtt (mkS (mkCl s (ComplV2 open_V2 ct))) ;

    SomeoneIsInAPlaceS s p = mkS (mkCl s (mkVP (SyntaxEng.mkAdv in_Prep p.np))) ;
    ClothingIsSomewhere c s = mkS positivePol (mkCl (mkNP (num2theDet c.num c.det c.useDet) c.cn) (mkVP s.adv)) ;

    GetsReadyToPred p = mkVP prepare_to_VV p ;
    WantsToPred p = mkVP want_VV p ;
    SimplePred p = p ;
    PutOnPred c = mkVP (mkV2 (partV (mkV "put") "on")) (mkNP c.det c.cn) ;

    NumAdvTime h a = mkAdv (h ++ a.s) ;
    NumTime h = mkAdv h ;
    OClock o = o ++ "o'clock" ;
    Six = "six" ;
    Two = "two" ;

    PlaceSomewhere p = p ;

    SpacialThingSomewhere si st = { np = st ; adv = SyntaxEng.mkAdv si st } ;
    ContainerSomewhere ct = { np = ct ; adv = SyntaxEng.mkAdv in_Prep ct } ;

    Pyjamas = mkNP he_Pron (mkN "pyjamas" "pyjamas") ;
    Bed = mkNP theSg_Det (mkN "bed") ;
    Table = mkNP theSg_Det (mkN "table") ;
    Pots = mkNP thePl_Det (mkN "pot") ;

    Under = mkPrep "under" ;
    OnTop = mkPrep "on top of" ;
    Behind = mkPrep "behind" ;

    ColoredContainerThing c ct = mkNP theSg_Det (mkCN c ct) ;
    SimpleContainerThing ct = mkNP theSg_Det ct ;
    Cupboard = mkCN (mkN "cupboard") ; -- ekhabetheni
    GoodsCupBoard = mkCN (mkN "goods cupboard") ; -- ekhabetheni lezimpahla
    Drawer = mkCN (mkN "drawer") ;
    Box = mkCN (mkN "box") ;

  --   SomeonesBedroom s = DetCN (DetNum NumSg) (PossNP (PossNP (UseN gumbi_5_6_N) s) (Deverb15 PPos (UseV lal_V))) ;
    RoomForDoingSomething ra = { np = mkNP theSg_Det ra ; adv = SyntaxEng.mkAdv in_Prep (mkNP theSg_Det ra) } ;
    Outside = { np = mkNP outside_N ; adv = outside_Adv } ;

    ColoredClothing ci c = {
      cn = mkCN ci.a (mkCN c ci.cn) ;
      num = ci.num ;
      det = ci.det ;
      useDet = ci.useDet
    } ;
    SimpleClothing ci = {
      cn = mkCN ci.a ci.cn ;
      num = ci.num ;
      det = ci.det ;
      useDet = ci.useDet
    } ;

    FirstOfPairClothing pci = { cn = mkCN pci ; num = Sg ; det = mkDet (mkNumeral n1_Unit) ; a = mkA "" ; useDet = True } ; -- isokisi elilodwa
    SecondOfPairClothing pci = { cn = pci ; num = Sg ; det = theSg_Det ; a = mkA "other" ; useDet = False } ; -- isokisi elinye

    PlaceClothingItem ci cp = { cn = mkCN cp ci.n ; num = ci.num ; det = num2aDet ci.num ; a = mkA "" ; useDet = False } ;
    SimpleClothingItem ci = { cn = ci.n ; num = ci.num ; det = num2aDet ci.num ; a = mkA "" ; useDet = False } ;
  --   SomeonesClothingItem ci s = DetCN (DetNum (get_num ci.n)) (PossNP ci.cn s) ;

    Shirt = { n = mkN "shirt" ; num = Sg } ;
    Pants = { n = mkN "pants" "pants" ; num = Pl } ;
    Jersey = { n = mkN "jersey" ; num = Sg } ;
    Sock = { n = mkN "sock" ; num = Sg } ;
    Shoe = { n = mkN "shoe" ; num = Sg } ;
    Socks = { n = mkN "sock" ; num = Pl } ;
    Shoes = { n = mkN "shoe" ; num = Pl } ;
    OneSock = mkN "sock" ;
    OneShoe = mkN "shoe" ;

    White = mkAP (mkA "white") ;
    Grey = mkAP (mkA "grey") ;
    Brown = mkAP (mkA "brown") ;
    Black = mkAP (mkA "black") ;
    Blue = mkAP (mkA "blue") ;
    Green = mkAP (mkA "green") ;

    Sleep = bedroom_N ;
    Wash = bathroom_N ;

    Kitchen = {np = mkNP theSg_Det (mkN "kitchen") ; adv = SyntaxEng.mkAdv in_Prep (mkNP theSg_Det (mkN "kitchen")) } ;
    School = mkA "school" ;

    Vusi = mkNP (mkPN "Vusi") ;
    I = mkNP i_Pron ;
    I_Drop = mkNP i_Pron ;
    He = mkNP he_Pron ;
    He_Drop = mkNP he_Pron ;

    Morning = SyntaxEng.mkAdv in_Prep (mkNP theSg_Det (mkN "morning")) ;
    Afternoon = SyntaxEng.mkAdv in_Prep (mkNP theSg_Det (mkN "afternoon")) ;
    Evening = SyntaxEng.mkAdv in_Prep (mkNP theSg_Det (mkN "evening")) ;

    ColorNonClothing c nc = mkNP aSg_Det (mkCN c nc) ;
    SimpleNonClothing nc = mkNP aSg_Det nc;
    Sister = mkNP he_Pron (mkN "sister") ;
    Snake = mkN "snake" ;
    Spider = mkN "spider" ;

  -- param
  --   Number = Sg | Pl ;

  oper

    num2aDet : Number -> Det = \num -> case num of {
      Sg => aSg_Det ;
      Pl => aPl_Det
    } ;

    num2theDet : Number -> Det -> Bool -> Det = \num,det,useDet -> case <useDet,num> of {
      <True,_> => det ;
      <False,Sg> => theSg_Det ;
      <False,Pl> => thePl_Det
    } ;

    -- lexicon opers
    search_V : V = mkV "search" ;

    find_V2 : V2 = mkV2 "find" ;
    search_V2 : V2 = mkV2 "search" "for" ;
    goes_to_V2 : V2 = mkV2 (mkV "go" "went" "gone") "to" ;
    open_V2 : V2 = mkV2 "open" ;

    prepare_to_VV : VV = mkVV (mkV "prepare") ;

    all_the_time_Adv : Adv = mkAdv "all the time" ;
    maybe_Adv : Adv = mkAdv "maybe" ;
    outside_Adv : Adv = mkAdv "outside" ;

    outside_N : N = mkN "outside" ;
    bedroom_N : N = mkN "bedroom" ;
    bathroom_N : N = mkN "bathroom" ;

    instead_of_Prep : Prep = mkPrep "instead of" ;

}
