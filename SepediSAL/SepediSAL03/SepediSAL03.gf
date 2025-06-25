abstract SepediSAL03 = {

    cat
        Sentence ;
        Person ;
        Meal ;
        Kitchenware ;
        Kitchenware_ ;
        KitchenPlace ;
        KitchenState ;
    
    fun

        BringAKitchenware : Kitchenware_ -> Sentence ;
        TakeBackAKitchenware : Kitchenware_ -> Sentence ;
        BringKitchenwares : Kitchenware_ -> Sentence ;
        TakeBackKitchenwares : Kitchenware_ -> Sentence ;
        PutKitchenware : Kitchenware_ -> KitchenPlace -> Sentence ;
        PutKitchenwares : Kitchenware_ -> KitchenPlace -> Sentence ;
        KitchenwareIsState : Kitchenware -> KitchenState -> Sentence ;
        KitchenwaresAreState : Kitchenware -> KitchenState -> Sentence ;
        EatAMeal : Person -> Meal -> Sentence ; -- re ja sefihlolo

        Breakfast : Meal ;
        Lunch : Meal ;
        Dinner : Meal ;

        SimpleKitchenware : Kitchenware -> Kitchenware_ ;

        TableCloth : Kitchenware ;
        Napkin : Kitchenware ;
        Knife : Kitchenware ;
        Fork : Kitchenware ;
        Spoon : Kitchenware ;
        SidePlate : Kitchenware ;
        DinnerPlate : Kitchenware ;
        Cup : Kitchenware ;
        PorridgeBowl : Kitchenware ;
        Saucer : Kitchenware ;
        SugarPot : Kitchenware ;
        Teapot : Kitchenware ;
        SaltPot : Kitchenware ;
        PepperPot : Kitchenware ;

        OnTheTable : KitchenPlace ;
        InTheCupboard : KitchenPlace ;

        Clean : KitchenState ;
        Dirty : KitchenState ;

        We : Person ;
        YouPl : Person ;
        They : Person ;
        He : Person ;
        YouSg : Person ;
        I : Person ;
}