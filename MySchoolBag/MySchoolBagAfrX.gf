--# -path=.:..
incomplete concrete MySchoolBagAfrX of MySchoolBag = open MiniGrammarAfr,MiniSyntaxAfr,MiniParadigmsAfr,ParamX,Prelude in {

    lincat
        S = Utt;
        StatementS = S ;
        RequestS = QS ;
        -- InstructS = Imp ;
        OpenableObject = CN ;
        DrawingInstrument = CN ;
        ColouringInstrument = CN ;
        PaintingInstrument = CN ;
        StickingInstrument = CN ;
        CuttingInstrument = CN ;
        PlayingInstrument = { cn : CN ; det : Det } ;
        UseableObject = NP ;
        UseObject = CN ;
        Actor = Pron ;
    
    lin
        Statement s = mkUtt s ;
        Request r = mkUtt r ;
        OpenOpenableObjectPoss actor obj = mkS (mkCl (mkNP actor) (mkVP open_V2 (mkNP actor obj))) ;
        OpenOpenableObject actor obj = mkS (mkCl (mkNP actor) (mkVP open_V2 (mkNP theSg_Det obj))) ;
        -- OpenInstruction actor obj = mkImp (mkVP open_V2 (mkNP actor obj)) ;

        DrawS actor = mkS (mkCl (mkNP actor) (mkVP draw_V)) ;
        WriteS actor = mkS (mkCl (mkNP actor) (mkVP write_V)) ;
        ColourS actor = mkS (mkCl (mkNP actor) (mkVP colour_V)) ;
        PaintS actor = mkS (mkCl (mkNP actor) (mkVP paint_V)) ;
        CutS actor = mkS (mkCl (mkNP actor) (mkVP cut_V)) ;
        PlayS actor = mkS (mkCl (mkNP actor) (mkVP play_V)) ;

        DrawWith actor instr = with_sentence actor instr draw_V ;
        WriteWith actor instr = with_sentence actor instr write_V ;
        ColourWith actor instr = with_sentence actor instr colour_V ;
        PaintWith actor instr = with_sentence actor instr paint_V ;
        CutWith actor instr = with_sentence actor instr cut_V ;
        PlayWith actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP play_V) (MiniSyntaxAfr.mkAdv with_Prep (mkNP instr.det instr.cn)))) ;

        UseDrawingObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP theSg_Det instr) (mkVP draw_V))) ;
        UseWritingObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP theSg_Det instr) (mkVP write_V))) ;
        UseColouringObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP theSg_Det instr) (mkVP colour_V))) ;
        UsePaintingObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP theSg_Det instr) (mkVP paint_V))) ;
        UseCuttingObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP theSg_Det instr) (mkVP cut_V))) ;

        DrawWithPoss actor instr = with_poss_sentence actor instr draw_V ;
        WriteWithPoss actor instr = with_poss_sentence actor instr write_V ;
        ColourWithPoss actor instr = with_poss_sentence actor instr colour_V ;
        PaintWithPoss actor instr = with_poss_sentence actor instr paint_V ;
        CutWithPoss actor instr = with_poss_sentence actor instr cut_V ;

        UseDrawingObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP actor instr) (mkVP draw_V))) ;
        UseWritingObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP actor instr) (mkVP write_V))) ;
        UseColouringObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP actor instr) (mkVP colour_V))) ;
        UsePaintingObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP actor instr) (mkVP paint_V))) ;
        UseCuttingObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP actor instr) (mkVP cut_V))) ;

        Use actor obj = mkS (mkCl (mkNP actor) (mkVP use_V2 obj)) ;
        -- BorrowRequest obj = mkQS (mkQCl (mkCl (mkNP i_Pron) (mkVP can_VV (mkVP borrow_V2 (mkNP youSg_Pron obj))))) ;

        DrawingUseObject instr = mkNP theSg_Det instr ;
        ColouringUseObject instr = mkNP theSg_Det instr ;
        PaintingUseObject instr = mkNP theSg_Det instr ;
        CuttingUseObject instr = mkNP theSg_Det instr ;

        DrawingUseObjectPoss actor instr = mkNP actor instr ;
        ColouringUseObjectPoss actor instr = mkNP actor instr ;
        PaintingUseObjectPoss actor instr = mkNP actor instr ;
        CuttingUseObjectPoss actor instr = mkNP actor instr ;

        SchoolBag = mkCN (mkN "skooltas") ;
        Book = mkCN (mkN "boek") ;
        LunchBox = mkCN (mkN "kosblik") ;
        Bottle = mkCN (mkN "bottel") ;
        PencilCase = mkCN (mkN "pennesakkie") ;

        Pencil = mkCN (mkN "potlood") ;
        ColouredPencil = mkCN (mkN "kleurpotlood") ;
        Koki = mkCN (mkN "koki") ;
        Pen = mkCN (mkN "pen") ;
        Crayon = mkCN (mkN "kryt") ;
        Ink = mkCN (mkN "ink") ;

        Paintbrush = mkCN (mkN "kwas") ;
        
        Scissors = mkCN (mkN "skêr") ;

        Clay = {
            cn = mkCN (mkN "klei") ;
            det = theSg_Det
        } ;

        Glue = mkCN (mkN "gom") ;
        Tape = mkCN (mkN "kleefband") ;
        Eraser = mkCN (mkN "uitveër") ;
        Ruler = mkCN (mkN "liniaal") ;
        String = mkCN (mkN "tou") ;
        Paint = mkCN (mkN "verf") ;

        I = i_Pron ;
        You = youSg_Pron ;
        She = she_Pron ;
    
    oper

        with_sentence : Pron -> CN -> V -> S = \actor,instr,verb -> 
            mkS (mkCl (mkNP actor) (mkVP (mkVP verb) (MiniSyntaxAfr.mkAdv with_Prep (mkNP theSg_Det instr)))) ;
        
        with_poss_sentence : Pron -> CN -> V -> S = \actor,instr,verb -> 
            mkS (mkCl (mkNP actor) (mkVP (mkVP verb) (MiniSyntaxAfr.mkAdv with_Prep (mkNP actor instr)))) ;

        use_V2V = mkV2V "gebruik" ;
        can_VV = mkVV (mkV "kan") ;

        open_V2 = mkV2 "maak" "oop" ;
        borrow_V2 = mkV2 "leen" ;
        use_V2 = mkV2 "gebruik" ;

        draw_V = mkV "teken";
        write_V = mkV "skryf" ;
        colour_V = mkV "kleur" "in" ;
        paint_V = mkV "verf" ;
        stick_V = mkV "plak" ;
        cut_V = mkV "sny" ;
        play_V = mkV "speel" ;
}