incomplete concrete PictureDictionaryOpenNsoX of PictureDictionaryOpen = PictureDictionaryOpenLexNso ** open GrammarSBantuNso in {

    lincat
        PD_Loc = GrammarSBantuNso.Loc ;
        PD_LocAdv = GrammarSBantuNso.LocAdv ;
        PD_Temp = GrammarSBantuNso.Temp ;
    
    lin
        PD_UttS = GrammarSBantuNso.UttS ;
        PD_UttImpSg = GrammarSBantuNso.UttImpSg ;
        PD_UttImpPl = GrammarSBantuNso.UttImpPl ;

        PD_ImpVP = GrammarSBantuNso.ImpVP ;

        PD_ExistNP = GrammarSBantuNso.ExistNP ;
        PD_UseCl = GrammarSBantuNso.UseCl ;
        PD_UseRCl = GrammarSBantuNso.UseRCl ;
        PD_PredVP = GrammarSBantuNso.PredVP ;
        PD_RelVP = GrammarSBantuNso.RelVP ;

        PD_IdRP = GrammarSBantuNso.IdRP ; -- (which)

        PD_AdvVP = GrammarSBantuNso.AdvVP ;

        PD_ComplV2 = GrammarSBantuNso.ComplV2 ;
        PD_UseV = GrammarSBantuNso.UseV ;
        PD_ComplVV = GrammarSBantuNso.ComplVV ;

        PD_CopAP = GrammarSBantuNso.CopAP ; -- (isokisi) elinye ; (umfana) mkhulu
        PD_CopNP = GrammarSBantuNso.CopNP ;
        PD_CopNPAssoc = GrammarSBantuNso.CopNPAssoc ; 
        PD_CopLocative = GrammarSBantuNso.CopLocative ; -- ngisekhishini

        PD_InstrAdv = GrammarSBantuNso.InstrAdv ; -- ka mmotoro
        PD_AssocAdv = GrammarSBantuNso.AssocAdv ; -- le mpša
        PD_atNPAdv = GrammarSBantuNso.LocativisedNounAdv ;
        PD_inNPAdv = GrammarSBantuNso.LocativisedNounAdv ;
        PD_toNPAdv = GrammarSBantuNso.LocativisedNounAdv ;
        PD_fromNPAdv = GrammarSBantuNso.LocativisedNounAdv ;
        PD_onNPAdv = GrammarSBantuNso.LocativisedNounAdv ;

        PD_LocAdvLoc = GrammarSBantuNso.LocAdvLoc ; -- ngisekhishini
        PD_LocAdvAdv = GrammarSBantuNso.LocAdvAdv ; -- (ufuna) ekhishini

        -- APModNP : Det -> AP -> CN -> NP ;
        PD_APModNP det ap cn = DetCN det (GrammarSBantuNso.AdjCN ap cn) ;

        PD_PossNP = GrammarSBantuNso.PossNP ;
        PD_DetCN = GrammarSBantuNso.DetCN ;
        PD_RelNP = GrammarSBantuNso.RelNP ; -- isicathulo esisodwa ; ihembe elinsundu

        PD_UseN = GrammarSBantuNso.UseN ;

        PD_PositA = GrammarSBantuNso.PositA ; -- adjectives and relative primitive stems

        PD_ProDrop = GrammarSBantuNso.ProDrop ;

        PD_DetNumSg = GrammarSBantuNso.DetNum NumSg ;
        PD_DetNumPl = GrammarSBantuNso.DetNum NumPl ;
        PD_DetNonspecSg = GrammarSBantuNso.DetNum NumSg ;
        PD_DetNonspecPl = GrammarSBantuNso.DetNum NumPl ;

        PD_UsePron = GrammarSBantuNso.UsePron ;

        PD_PPos = GrammarSBantuNso.PPos ;
        PD_PNeg = GrammarSBantuNso.PNeg ;
        PD_TPastTemp = GrammarSBantuNso.TPastTemp ;
        PD_TPresTemp = GrammarSBantuNso.TPresTemp ;
        PD_TFutTemp = GrammarSBantuNso.TFutTemp ;

        PD_i_Pron = GrammarSBantuNso.i_Pron ;
        PD_youSg_Pron = GrammarSBantuNso.youSg_Pron ;
        PD_he_Pron = GrammarSBantuNso.he_Pron ;
        PD_she_Pron = GrammarSBantuNso.she_Pron ;
        PD_we_Pron = GrammarSBantuNso.we_Pron ;
        PD_youPl_Pron = GrammarSBantuNso.youPl_Pron ;
        PD_they_Pron = GrammarSBantuNso.they_Pron ;

}