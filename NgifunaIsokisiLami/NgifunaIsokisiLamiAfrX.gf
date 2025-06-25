--# -path=.:..
incomplete concrete NgifunaIsokisiLamiAfrX of NgifunaIsokisiLami = open MiniGrammarAfr,MiniSyntaxAfr,MiniParadigmsAfr,ParamX,Prelude in {

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
    ClothingPlace = N ;

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
    InsteadOfClothingSomeoneFinds s c nc = mkUtt (mkS (MiniSyntaxAfr.mkAdv instead_of_Prep (mkNP (num2theDet c.num c.det c.useDet) c.cn)) (mkS (mkCl s (ComplV2 find_V2 nc)))) ;
    SomeoneFindsNonClothing s nc = mkUtt (mkS (mkCl s (ComplV2 find_V2 nc))) ;
    ClothingWasSomewhereAllThisTime c s = mkUtt (mkS pastTense positivePol (mkCl (mkNP (num2theDet c.num c.det c.useDet) c.cn) (mkVP (mkVP s.adv) (mkAdv "die heeltyd")))) ;
    SomeoneOpensAContainer s ct = mkUtt (mkS (mkCl s (ComplV2 open_V2 ct))) ;

    SomeoneIsInAPlaceS s p = mkS (mkCl s (mkVP (MiniSyntaxAfr.mkAdv in_Prep p.np))) ;
    ClothingIsSomewhere c s = mkS positivePol (mkCl (mkNP (num2theDet c.num c.det c.useDet) c.cn) (mkVP s.adv)) ;

    GetsReadyToPred p = mkVP prepare_to_VV p ;
    WantsToPred p = mkVP want_VV p ;
    SimplePred p = p ;
    PutOnPred c = mkVP (mkV2 "trek" "aan") (mkNP c.det c.cn) ;

    NumAdvTime h a = mkAdv (h ++ a.s) ;
    NumTime h = mkAdv h ;
    OClock o = o ++BIND++ "uur" ;
    Six = "ses" ;
    Two = "twee" ;

    PlaceSomewhere p = p ;

    SpacialThingSomewhere si st = { np = st ; adv = MiniSyntaxAfr.mkAdv si st } ;
    ContainerSomewhere ct = { np = ct ; adv = MiniSyntaxAfr.mkAdv in_Prep ct } ;

    Pyjamas = mkNP he_Pron (mkN "nagklere" "nagklere") ;
    Bed = mkNP theSg_Det (mkN "bed") ;
    Table = mkNP theSg_Det (mkN "tafel") ;
    Pots = mkNP thePl_Det (mkN "pot") ;

    Under = mkPrep "onder" ;
    OnTop = mkPrep "bo op" ;
    Behind = mkPrep "agter" ;

    ColoredContainerThing c ct = mkNP theSg_Det (mkCN c ct) ;
    SimpleContainerThing ct = mkNP theSg_Det ct ;
    Cupboard = mkCN (mkN "kas") ; -- ekhabetheni
    GoodsCupBoard = mkCN (mkN "koskas") ; -- ekhabetheni lezimpahla
    Drawer = mkCN (mkN "laai") ;
    Box = mkCN (mkN "boks") ;

  --   SomeonesBedroom s = DetCN (DetNum NumSg) (PossNP (PossNP (UseN gumbi_5_6_N) s) (Deverb15 PPos (UseV lal_V))) ;
    RoomForDoingSomething ra = { np = mkNP theSg_Det ra ; adv = MiniSyntaxAfr.mkAdv in_Prep (mkNP theSg_Det ra) } ;
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

    FirstOfPairClothing pci = { cn = mkCN pci ; num = Sg ; det = mkDet "een" ; a = mkA "" ; useDet = True } ; -- isokisi elilodwa
    SecondOfPairClothing pci = { cn = pci ; num = Sg ; det = theSg_Det ; a = mkA "ander" ; useDet = False } ; -- isokisi elinye

    PlaceClothingItem ci cp = { cn = mkCN cp ci.n ; num = ci.num ; det = num2aDet ci.num ; a = mkA "" ; useDet = False } ;
    SimpleClothingItem ci = { cn = ci.n ; num = ci.num ; det = num2aDet ci.num ; a = mkA "" ; useDet = False } ;
  --   SomeonesClothingItem ci s = DetCN (DetNum (get_num ci.n)) (PossNP ci.cn s) ;

    Shirt = { n = mkN "hemp" ; num = Sg } ;
    Pants = { n = mkN "broek" ; num = Sg } ;
    Jersey = { n = mkN "trui" ; num = Sg } ;
    Sock = { n = mkN "sokkie" ; num = Sg } ;
    Shoe = { n = mkN "skoen" ; num = Sg } ;
    Socks = { n = mkN "sokkie" ; num = Pl } ;
    Shoes = { n = mkN "skoen" ; num = Pl } ;
    OneSock = mkN "sokkie" ;
    OneShoe = mkN "skoen" ;

    White = mkAP (mkA "wit" "wit" "wits") ;
    Grey = mkAP (mkA "grys" "grys" "grys") ;
    Brown = mkAP (mkA "bruin" "bruin" "bruins") ;
    Black = mkAP (mkA "swart" "swart" "swarts") ;
    Blue = mkAP (mkA "blou" "blou" "blous") ;
    Green = mkAP (mkA "groen" "groen" "groens") ;

    Sleep = bedroom_N ;
    Wash = bathroom_N ;

    Kitchen = {np = mkNP theSg_Det (mkN "kombuis") ; adv = MiniSyntaxAfr.mkAdv in_Prep (mkNP theSg_Det (mkN "kombuis")) } ;
    School = mkN "skool" ;

    Vusi = mkNP (mkPN "Vusi") ;
    I = mkNP i_Pron ;
    I_Drop = mkNP i_Pron ;
    He = mkNP he_Pron ;
    He_Drop = mkNP he_Pron ;

    Morning = MiniSyntaxAfr.mkAdv in_Prep (mkNP theSg_Det (mkN "oggend")) ;
    Afternoon = MiniSyntaxAfr.mkAdv in_Prep (mkNP theSg_Det (mkN "middag")) ;
    Evening = MiniSyntaxAfr.mkAdv in_Prep (mkNP theSg_Det (mkN "aand")) ;

    ColorNonClothing c nc = mkNP a_Det (mkCN c nc) ;
    SimpleNonClothing nc = mkNP a_Det nc;
    Sister = mkNP he_Pron (mkN "suster") ;
    Snake = mkN "slang" ;
    Spider = mkN "spinnekop" ;

  -- param
  --   Number = Sg | Pl ;

  oper

    num2aDet : Number -> Det = \num -> case num of {
      Sg => a_Det ;
      Pl => aPl_Det
    } ;

    num2theDet : Number -> Det -> Bool -> Det = \num,det,useDet -> case <useDet,num> of {
      <True,_> => det ;
      <False,Sg> => theSg_Det ;
      <False,Pl> => thePl_Det
    } ;

    -- lexicon opers
    search_V : V = mkV "soek" ;

    find_V2 : V2 = mkV2 "vind" ;
    search_V2 : V2 = mkV2 (mkV "soek") "vir" ;
    goes_to_V2 : V2 = mkV2 (mkV "gaan") "na" ;
    open_V2 : V2 = mkV2 "maak" "oop" ;

    prepare_to_VV : VV = mkVV (mkV "maak reg") ;

    all_the_time_Adv : Adv = mkAdv "die heeltyd" ;
    maybe_Adv : Adv = mkAdv "miskien" ;
    outside_Adv : Adv = mkAdv "buite" ;

    outside_N : N = mkN "buite" ;
    bedroom_N : N = mkN "slaapkamer" ;
    bathroom_N : N = mkN "badkamer" ;

    instead_of_Prep : Prep = mkPrep "in plaas van" ;

}
