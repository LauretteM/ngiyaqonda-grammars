incomplete concrete PictureDictionaryOpenAfrX of PictureDictionaryOpen = open MiniGrammarAfr,MiniSyntaxAfr,MiniParadigmsAfr,ParamX,Prelude in {

    lincat
        PD_Loc = MiniGrammarAfr.VP ;
        PD_LocAdv = MiniGrammarAfr.Adv ;
        PD_Temp = MiniGrammarAfr.Tense ;
    
    lin
        PD_UttS = MiniGrammarAfr.UttS ;
        PD_UttImpSg = MiniGrammarAfr.UttImpSg ;
        PD_UttImpPl = MiniGrammarAfr.UttImpSg ;

        PD_ImpVP = MiniGrammarAfr.ImpVP ;

        PD_ExistNP np = MiniGrammarAfr.UseCl MiniGrammarAfr.Pres MiniGrammarAfr.Pos (MiniGrammarAfr.ExistCl np) ;
        PD_UseCl = MiniGrammarAfr.UseCl ;
        PD_UseRCl = MiniGrammarAfr.UseRCl ;
        PD_PredVP = MiniGrammarAfr.PredVP ;
        PD_RelVP = MiniGrammarAfr.RelVP ;

        PD_IdRP = MiniGrammarAfr.IdRP ;

        PD_AdvVP = MiniGrammarAfr.AdvVP ;

        PD_ComplV2 = MiniGrammarAfr.ComplV2 ;
        PD_UseV = MiniGrammarAfr.UseV ;
        PD_ComplVV = MiniGrammarAfr.ComplVV ;

    --     PD_CopAP : AP -> VP ; -- (isokisi) elinye ; (umfana) mkhulu
        PD_CopNP = MiniGrammarAfr.CompNP ; 
        PD_CopNPAssoc np = MiniGrammarAfr.ComplV2 (mkV2 (mkV "hê" "het" "het" "gehad" "gehad")) np ; 
        PD_CopLocative loc = loc ; -- ngisekhishini

        PD_InstrAdv np = MiniGrammarAfr.PrepNP (mkPrep "met") np ; -- ka mmotoro
        PD_AssocAdv np = MiniGrammarAfr.PrepNP (mkPrep "saam met") np ; -- le mpša
        PD_atNPAdv np = MiniGrammarAfr.PrepNP MiniGrammarAfr.at_Prep np ;
        PD_inNPAdv np = MiniGrammarAfr.PrepNP MiniGrammarAfr.in_Prep np ;
        PD_toNPAdv np = MiniGrammarAfr.PrepNP MiniGrammarAfr.to_Prep np ;
        PD_fromNPAdv np = MiniGrammarAfr.PrepNP MiniGrammarAfr.from_Prep np ;
        PD_onNPAdv np = MiniGrammarAfr.PrepNP MiniGrammarAfr.on_Prep np ;

        PD_LocAdvLoc = MiniGrammarAfr.CompAdv ; -- ngisekhishini
        PD_LocAdvAdv ladv = ladv ; -- (ufuna) ekhishini

        -- PD_APModNP det ap cn = DetCN det (ModCN ap cn) ;

        -- PD_PossNP : CN -> NP -> CN ;
        PD_DetCN = MiniGrammarAfr.DetCN ;
        PD_RelNP = MiniGrammarAfr.RelNP ; -- isicathulo esisodwa ; ihembe elinsundu

        PD_UseN = MiniGrammarAfr.UseN ;

        PD_PositA = MiniGrammarAfr.UseA ;

        PD_ProDrop p = p ;

        PD_DetNumSg = theSg_Det ;
        PD_DetNumPl = thePl_Det ;
        PD_DetNonspecSg = aSg_Det ;
        PD_DetNonspecPl = aPl_Det ;

        PD_UsePron pron = MiniGrammarAfr.UsePron pron ;

        PD_PPos = MiniGrammarAfr.Pos ;
        PD_PNeg = MiniGrammarAfr.Neg ;
        PD_TPastTemp = MiniGrammarAfr.Past ;
        PD_TPresTemp = MiniGrammarAfr.Pres ;
        PD_TFutTemp = MiniGrammarAfr.Fut ;

        PD_i_Pron = i_Pron ;
        PD_youSg_Pron = youSg_Pron ;
        PD_he_Pron = he_Pron ;
        PD_she_Pron = she_Pron ;
        PD_we_Pron = we_Pron ;
        PD_youPl_Pron = youPl_Pron ;
        PD_they_Pron = they_Pron ;

}