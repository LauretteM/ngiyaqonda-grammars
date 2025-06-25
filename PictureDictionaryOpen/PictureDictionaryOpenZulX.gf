incomplete concrete PictureDictionaryOpenZulX of PictureDictionaryOpen = PictureDictionaryOpenLexZul ** open GrammarSBantuZul in {

    lincat
        PD_Loc = GrammarSBantuZul.Loc ;
        PD_LocAdv = GrammarSBantuZul.LocAdv ;
        PD_Temp = GrammarSBantuZul.Temp ;
    
    lin
        PD_UttS = GrammarSBantuZul.UttS ;
        PD_UttImpSg = GrammarSBantuZul.UttImpSg ;
        PD_UttImpPl = GrammarSBantuZul.UttImpPl ;

        PD_ImpVP = GrammarSBantuZul.ImpVP ;

        PD_ExistNP = GrammarSBantuZul.ExistNP ;
        PD_UseCl = GrammarSBantuZul.UseCl ;
        PD_UseRCl = GrammarSBantuZul.UseRCl ;
        PD_PredVP = GrammarSBantuZul.PredVP ;
        PD_RelVP = GrammarSBantuZul.RelVP ;

        PD_IdRP = GrammarSBantuZul.IdRP ; -- (which)

        PD_AdvVP = GrammarSBantuZul.AdvVP ;

        PD_ComplV2 = GrammarSBantuZul.ComplV2 ;
        PD_UseV = GrammarSBantuZul.UseV ;
        PD_ComplVV = GrammarSBantuZul.ComplVV ;

        PD_CopAP = GrammarSBantuZul.CopAP ; -- (isokisi) elinye ; (umfana) mkhulu
        PD_CopNP = GrammarSBantuZul.CopNP ;
        PD_CopNPAssoc = GrammarSBantuZul.CopNPAssoc ; 
        PD_CopLocative = GrammarSBantuZul.CopLocative ; -- ngisekhishini

        PD_InstrAdv = GrammarSBantuZul.InstrAdv ; -- ka mmotoro
        PD_AssocAdv = GrammarSBantuZul.AssocAdv ; -- le mpša
        PD_atNPAdv = GrammarSBantuZul.LocativisedNounAdv ;
        PD_inNPAdv = GrammarSBantuZul.LocativisedNounAdv ;
        PD_toNPAdv = GrammarSBantuZul.LocativisedNounAdv ;
        PD_fromNPAdv = GrammarSBantuZul.LocativisedNounAdv ;
        PD_onNPAdv = GrammarSBantuZul.LocativisedNounAdv ;

        PD_LocAdvLoc = GrammarSBantuZul.LocAdvLoc ; -- ngisekhishini
        PD_LocAdvAdv = GrammarSBantuZul.LocAdvAdv ; -- (ufuna) ekhishini

        PD_APModNP det ap cn =
            RelNP (DetCN det cn) (UseRCl TPresTemp PPos (RelVP IdRP (CopAP ap))) ;

        PD_PossNP = GrammarSBantuZul.PossNP ;
        PD_DetCN = GrammarSBantuZul.DetCN ;
        PD_RelNP = GrammarSBantuZul.RelNP ; -- isicathulo esisodwa ; ihembe elinsundu

        PD_UseN = GrammarSBantuZul.UseN ;

        PD_PositA = GrammarSBantuZul.PositA ; -- adjectives and relative primitive stems

        PD_ProDrop = GrammarSBantuZul.ProDrop ;

        PD_DetNumSg = GrammarSBantuZul.DetNum NumSg ;
        PD_DetNumPl = GrammarSBantuZul.DetNum NumPl ;
        PD_DetNonspecSg = GrammarSBantuZul.DetNum NumSg ;
        PD_DetNonspecPl = GrammarSBantuZul.DetNum NumPl ;

        PD_UsePron = GrammarSBantuZul.UsePron ;

        PD_PPos = GrammarSBantuZul.PPos ;
        PD_PNeg = GrammarSBantuZul.PNeg ;
        PD_TPastTemp = GrammarSBantuZul.TPastTemp ;
        PD_TPresTemp = GrammarSBantuZul.TPresTemp ;
        PD_TFutTemp = GrammarSBantuZul.TFutTemp ;

        PD_i_Pron = GrammarSBantuZul.i_Pron ;
        PD_youSg_Pron = GrammarSBantuZul.youSg_Pron ;
        PD_he_Pron = GrammarSBantuZul.he_Pron ;
        PD_she_Pron = GrammarSBantuZul.she_Pron ;
        PD_we_Pron = GrammarSBantuZul.we_Pron ;
        PD_youPl_Pron = GrammarSBantuZul.youPl_Pron ;
        PD_they_Pron = GrammarSBantuZul.they_Pron ;

}