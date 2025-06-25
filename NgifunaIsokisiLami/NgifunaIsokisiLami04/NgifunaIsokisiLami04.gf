abstract NgifunaIsokisiLami04 = {

  flags
    startcat = Sentence ;

  cat
    Sentence ;
    _Sentence ;
    Predicate ;
    _Predicate ;

    Someone ;
    Clothing ;
    Time ;

    Somewhere ; -- somewhere you can go to or search
    Place ; -- somewhere you can go
    ClothingPlace ;

    TimeOfDay ;
    HourNumber ;
    OrdNumber ;

    SpacialIndication ;
    SpacialThing ;
    ContainerThing ;
    _ContainerThing ;

    ClothingItem ;
    _ClothingItem ;
    PairedClothingItem ;
    NonClothing ;
    _NonClothing ;

    RoomAction ;

    Color ;

  fun
    MaybeS : _Sentence -> Sentence ;
    SimpleS : _Sentence -> Sentence ;

    TimeS : Time -> Sentence ;
    SomeoneDoesPred : Someone -> Predicate -> Sentence ;
    SomeoneDoesNotFindClothing : Someone -> Clothing -> Sentence ; -- akalitholi / angilitholi
    SomeoneSearchesSomewhere : Someone -> Somewhere -> Sentence ;
    SomeoneSearchesForClothing : Someone -> Clothing -> Sentence ;
    SomeoneSearchesForClothingSomewhere : Someone -> Clothing -> Somewhere -> Sentence ;
    SomeoneGoesSomewhere : Someone -> Place -> Sentence ;
    ClothingIsNotHere : Clothing -> Sentence ;
    ClothingIsNotSomewhere : Clothing -> Somewhere -> Sentence ;
    InsteadOfClothingSomeoneFinds: Someone -> Clothing -> NonClothing -> Sentence ;
    SomeoneFindsNonClothing : Someone -> NonClothing -> Sentence ;
    ClothingWasSomewhereAllThisTime : Clothing -> Somewhere -> Sentence ;
    SomeoneOpensAContainer : Someone -> ContainerThing -> Sentence ;

    SomeoneIsInAPlaceS : Someone -> Place -> _Sentence ;
    ClothingIsSomewhere : Clothing -> Somewhere -> _Sentence ;

    GetsReadyToPred : _Predicate -> Predicate ;
    WantsToPred : _Predicate -> Predicate ;
    SimplePred : _Predicate -> Predicate ;
    PutOnPred : Clothing -> _Predicate ;

    NumAdvTime : HourNumber -> TimeOfDay -> Time ;
    NumTime : HourNumber -> Time ;
    OClock : OrdNumber -> HourNumber ;
    Six : OrdNumber ;
    Two : OrdNumber ;

    PlaceSomewhere : Place -> Somewhere ;

    SpacialThingSomewhere : SpacialIndication -> SpacialThing -> Somewhere ; -- ngaphansi kwetafula
    ContainerSomewhere : ContainerThing -> Somewhere ;

    Pyjamas : SpacialThing ;
    Bed : SpacialThing ;
    Table : SpacialThing ;
    Pots : SpacialThing ;

    Under : SpacialIndication ;
    OnTop : SpacialIndication ;
    Behind : SpacialIndication ;

    ColoredContainerThing : Color -> _ContainerThing -> ContainerThing ;
    SimpleContainerThing : _ContainerThing -> ContainerThing ;
    Cupboard : _ContainerThing ; -- ekhabetheni
    GoodsCupBoard : _ContainerThing ; -- ekhabetheni lezimpahla
    Drawer : _ContainerThing ;
    Box : _ContainerThing ;

    -- SomeonesBedroom : Someone -> Place ;
    RoomForDoingSomething : RoomAction -> Place ;
    -- Outside : Somewhere ;

    ColoredClothing : ClothingItem -> Color -> Clothing ;
    SimpleClothing : ClothingItem -> Clothing ;
    FirstOfPairClothing : PairedClothingItem -> ClothingItem ; -- isokisi elilodwa
    SecondOfPairClothing : PairedClothingItem -> ClothingItem ; -- isokisi elinye

    PlaceClothingItem : _ClothingItem -> ClothingPlace -> ClothingItem ;
    SimpleClothingItem : _ClothingItem -> ClothingItem ;
    -- SomeonesClothingItem : _ClothingItem -> Someone -> ClothingItem ;

    Shirt : _ClothingItem ;
    Pants : _ClothingItem ;
    Jersey : _ClothingItem ;
    Socks : _ClothingItem ;
    Sock : _ClothingItem ;
    Shoe : _ClothingItem ;
    Shoes : _ClothingItem ;
    OneSock : PairedClothingItem ;
    OneShoe : PairedClothingItem ;

    White : Color ;
    Grey : Color ;
    Brown : Color ;
    Black : Color ;
    Blue : Color ;
    Green : Color ;

    Sleep : RoomAction ;
    Wash : RoomAction ;

    Kitchen : Place ;

    School : ClothingPlace ;

    Vusi : Someone ;
    -- I : Someone ;
    I_Drop : Someone ;
    -- He : Someone ;
    He_Drop : Someone ;

    Morning : TimeOfDay ;
    Afternoon : TimeOfDay ;
    Evening : TimeOfDay ;

    ColorNonClothing : Color -> _NonClothing -> NonClothing ;
    SimpleNonClothing : _NonClothing -> NonClothing ;
    Sister : NonClothing ;
    Snake : _NonClothing ;
    Spider : _NonClothing ;

}
