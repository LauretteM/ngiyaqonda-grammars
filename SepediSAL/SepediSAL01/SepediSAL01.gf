abstract SepediSAL01 = {

    cat
        Sentence ;
        Person ;
        Meal ;
        Kitchenware ;
        Kitchenware_ ;
    
    fun

        BringAKitchenware : Kitchenware_ -> Sentence ;
        TakeBackAKitchenware : Kitchenware_ -> Sentence ;
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

        We : Person ;
        YouPl : Person ;
        They : Person ;
        He : Person ;
        YouSg : Person ;
        I : Person ;
}