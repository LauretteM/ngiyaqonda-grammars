--# -path=.:..
abstract PictureDictionaryOpen04 = PictureDictionaryOpenLex ** {

    flags
        startcat = Utt ;

    cat
        PD_Loc ;
        PD_LocAdv ;
        PD_Temp ;
    
    fun
        PD_UttS : S -> Utt ;
        PD_UttImpSg  : Pol -> Imp -> Utt ;
        PD_UttImpPl  : Pol -> Imp -> Utt ;

        PD_ImpVP : VP -> Imp ;

        PD_ExistNP : NP -> S ;
        PD_UseCl   : PD_Temp -> Pol -> Cl -> S ;
        PD_UseRCl : PD_Temp -> Pol -> RCl -> RS ;
        PD_PredVP : NP -> VP -> Cl ;
        PD_RelVP : RP -> VP -> RCl ;

        PD_IdRP : RP ; -- (which)

        PD_AdvVP : VP -> Adv -> VP ;

        PD_ComplV2 : V2 -> NP -> VP ;
        PD_UseV : V -> VP ;
        PD_ComplVV : VV -> VP -> VP ;

        -- PD_CopAP : AP -> VP ; -- (isokisi) elinye ; (umfana) mkhulu
        PD_CopNP : NP -> VP ;
        PD_CopNPAssoc : NP -> VP ; 
        PD_CopLocative : PD_Loc -> VP ; -- ngisekhishini

        PD_InstrAdv : NP -> Adv ; -- ka mmotoro
        PD_AssocAdv : NP -> Adv ; -- le mpša
        PD_atNPAdv : NP -> PD_LocAdv ;
        PD_inNPAdv : NP -> PD_LocAdv ;
        PD_toNPAdv : NP -> PD_LocAdv ;
        PD_fromNPAdv : NP -> PD_LocAdv ;
        PD_onNPAdv : NP -> PD_LocAdv ;

        PD_LocAdvLoc : PD_LocAdv -> PD_Loc ; -- ngisekhishini
        PD_LocAdvAdv : PD_LocAdv -> Adv ; -- (ufuna) ekhishini

        -- PD_APModNP : Det -> AP -> CN -> NP ;

        PD_PossNP : CN -> NP -> CN ;
        PD_DetCN : Det -> CN -> NP ;
        PD_RelNP : NP -> RS -> NP ; -- isicathulo esisodwa ; ihembe elinsundu

        PD_UseN : N -> CN ;

        -- PD_PositA : A -> AP ; -- adjectives and relative primitive stems

        PD_ProDrop : Pron -> Pron ;

        PD_DetNumSg : Det ;
        PD_DetNumPl : Det ;
        PD_DetNonspecSg : Det ;
        PD_DetNonspecPl : Det ;

        PD_UsePron : Pron -> NP ;

        PD_PPos, PD_PNeg : Pol ;
        PD_TPastTemp, PD_TPresTemp, PD_TFutTemp : PD_Temp ;

        PD_i_Pron : Pron ;
        PD_youSg_Pron : Pron ;
        PD_he_Pron : Pron ;
        PD_she_Pron : Pron ;
        PD_we_Pron : Pron ;
        PD_youPl_Pron : Pron ;
        PD_they_Pron : Pron ;
}