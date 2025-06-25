incomplete concrete PictureDictionaryOpenEngX of PictureDictionaryOpen = open SyntaxEng,ParadigmsEng,ParamX,Prelude in {

    lincat
        PD_Loc = VP ;
        PD_LocAdv = Adv ;
        PD_Temp = SyntaxEng.Tense ;

    lin
        PD_UttS s = mkUtt s ;
        PD_UttImpSg pol imp = mkUtt pol imp ;
        PD_UttImpPl pol imp = mkUtt pol imp ;

        PD_ImpVP vp = mkImp vp ;

        PD_ExistNP np = mkS (mkCl np) ;
        PD_UseCl temp pol cl = mkS temp pol cl ;
        PD_UseRCl temp pol rcl = mkRS temp pol rcl ;
        PD_PredVP np vp = mkCl np vp ;
        PD_RelVP rp vp = mkRCl rp vp ;

        PD_IdRP = which_RP ;

        PD_AdvVP vp adv = mkVP vp adv ;

        PD_ComplV2 v2 np = mkVP v2 np ;
        PD_UseV v = mkVP v ;
        PD_ComplVV vv vp = mkVP vv vp ;

        PD_CopAP ap = mkVP ap ;
        PD_CopNP np = mkVP np ;
        PD_CopNPAssoc np = mkVP (mkV2 (mkV "have" "has" "had" "had" "having")) np ; 
        PD_CopLocative vp = vp ;

        PD_InstrAdv np = SyntaxEng.mkAdv with_Prep np ;
        PD_AssocAdv np = SyntaxEng.mkAdv with_Prep np ;
        PD_atNPAdv np = SyntaxEng.mkAdv (ParadigmsEng.mkPrep "at") np ;
        PD_inNPAdv np = SyntaxEng.mkAdv in_Prep np ;
        PD_toNPAdv np = SyntaxEng.mkAdv to_Prep np ;
        PD_fromNPAdv np = SyntaxEng.mkAdv from_Prep np ;
        PD_onNPAdv np = SyntaxEng.mkAdv on_Prep np ;

        PD_LocAdvLoc l = mkVP l ;
        PD_LocAdvAdv a = a ;

        PD_APModNP det ap cn = mkNP det (mkCN ap cn) ;

        PD_PossNP cn np = mkCN cn np ;
        PD_DetCN det cn = mkNP det cn ;
        PD_RelNP np rs = mkNP np rs ;

        PD_UseN n = mkCN n ;

        PD_PositA a = mkAP a ;

        PD_ProDrop p = p ;

        PD_DetNumSg = theSg_Det ;
        PD_DetNumPl = thePl_Det ;
        PD_DetNonspecSg = aSg_Det ;
        PD_DetNonspecPl = aPl_Det ;

        PD_UsePron p = mkNP p ;

        PD_PPos = positivePol ;
        PD_PNeg = negativePol ;
        PD_TPastTemp = pastTense ;
        PD_TPresTemp = presentTense ;
        PD_TFutTemp = futureTense ;

        PD_i_Pron = i_Pron ;
        PD_youSg_Pron = youSg_Pron ;
        PD_he_Pron = he_Pron ;
        PD_she_Pron = she_Pron ;
        PD_we_Pron = we_Pron ;
        PD_youPl_Pron = youPl_Pron ;
        PD_they_Pron = they_Pron ;

}