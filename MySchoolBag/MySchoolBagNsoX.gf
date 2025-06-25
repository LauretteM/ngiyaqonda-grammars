incomplete concrete MySchoolBagNsoX of MySchoolBag = open SyntaxSBantuNso,MySchoolBagLexNso,Prelude in {
    
    lincat
        S = Utt ;
        StatementS = S ;
        RequestS = Utt ;
        -- InstructS = Imp ;
        OpenableObject = CN ;
        DrawingInstrument = { cn : CN ; rs : RS ; use_rs : Bool} ;
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
        Request r = r ;
        -- Instruction : InstructS -> S ;

        OpenOpenableObjectPoss actor obj = mkS (mkCl (mkNP actor) (mkVP open_V2 (mkCN obj (mkNP actor)))) ;
        OpenOpenableObject actor obj = mkS (mkCl (mkNP actor) (mkVP open_V2 (mkNP obj))) ;
        -- OpenInstruction : Actor -> OpenableObject -> InstructS ;

        DrawS actor = mkS (mkCl (mkNP actor) (mkVP draw_V)) ;
        WriteS actor = mkS (mkCl (mkNP actor) (mkVP write_V)) ;
        ColourS actor = mkS (mkCl (mkNP actor) (mkVP colour_in_V)) ;
        PaintS actor = mkS (mkCl (mkNP actor) (mkVP paint_V)) ;
        CutS actor = mkS (mkCl (mkNP actor) (mkVP cut_V)) ;
        PlayS actor = mkS (mkCl (mkNP actor) (mkVP play_V)) ;

        DrawWith actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP draw_V) (instrumentalAdv (reconstruct_instrument instr)))) ;
        WriteWith actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP write_V) (instrumentalAdv (reconstruct_instrument instr)))) ;
        ColourWith actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP colour_in_V) (instrumentalAdv (mkNP instr)))) ;
        PaintWith actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP paint_V) (instrumentalAdv (mkNP instr)))) ;
        CutWith actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP cut_V) (instrumentalAdv (mkNP instr)))) ;
        PlayWith actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP play_V) (instrumentalAdv (mkNP instr.det instr.cn)))) ;

        UseDrawingObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (reconstruct_instrument instr) (mkVP draw_V))) ;
        UseWritingObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (reconstruct_instrument instr) (mkVP write_V))) ;
        UseColouringObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP instr) (mkVP draw_V))) ;
        UsePaintingObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP instr) (mkVP draw_V))) ;
        UseCuttingObject actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP instr) (mkVP draw_V))) ;

        DrawWithPoss actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP draw_V) (instrumentalAdv (reconstruct_poss_instrument instr actor)))) ;
        WriteWithPoss actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP write_V) (instrumentalAdv (reconstruct_poss_instrument instr actor)))) ;
        ColourWithPoss actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP colour_in_V) (instrumentalAdv (mkNP actor instr)))) ;
        PaintWithPoss actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP paint_V) (instrumentalAdv (mkNP actor instr)))) ;
        CutWithPoss actor instr = mkS (mkCl (mkNP actor) (mkVP (mkVP cut_V) (instrumentalAdv (mkNP actor instr)))) ;

        UseDrawingObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (reconstruct_poss_instrument instr actor) (mkVP draw_V))) ;
        UseWritingObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (reconstruct_poss_instrument instr actor) (mkVP write_V))) ;
        UseColouringObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP actor instr) (mkVP draw_V))) ;
        UsePaintingObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP actor instr) (mkVP draw_V))) ;
        UseCuttingObjectPoss actor instr = mkS (mkCl (mkNP actor) (mkVP use_V2V (mkNP actor instr) (mkVP draw_V))) ;

        Use actor obj = mkS (mkCl (mkNP actor) (mkVP use_V2 obj)) ;
        -- BorrowRequest obj = subjUtt (mkS (mkCl (mkNP i_Pron) (mkVP borrow_V2 (mkNP youSg_Pron obj)))) ;

        DrawingUseObject instr = reconstruct_instrument instr ;
        ColouringUseObject instr = mkNP instr ;
        PaintingUseObject instr = mkNP instr ;
        CuttingUseObject instr = mkNP instr ;

        DrawingUseObjectPoss actor instr = reconstruct_poss_instrument instr actor ;
        ColouringUseObjectPoss actor instr = mkNP actor instr ;
        PaintingUseObjectPoss actor instr = mkNP actor instr ;
        CuttingUseObjectPoss actor instr = mkNP actor instr ;

        SchoolBag = mkCN bag_N (mkNP pl_Num book_N) ;
        Book = mkCN book_N ;
        LunchBox = mkCN container_N ;
        Bottle = mkCN bottle_N ;
        PencilCase = mkCN bag_N (mkNP pl_Num pen_N) ;

        Pencil = simple_drawing_instrument pencil_N ;
        ColouredPencil = { cn = mkCN pencil_N ; rs = mkRS (assocVP (mkNP colour_N)) ; use_rs = True } ;
        Koki = simple_drawing_instrument koki_N ;
        Pen = simple_drawing_instrument pen_N ;
        Crayon = simple_drawing_instrument crayon_N ;
        Ink = simple_drawing_instrument ink_N ;

        Paintbrush = mkCN brush_N (mkNP paint_N) ;

        Scissors = mkCN scissors_N ;
        Clay = { cn = mkCN clay_N ; det = aSg_Det } ;

        Glue = mkCN glue_N ;
        Tape = mkCN tape_N ;
        Eraser = mkCN eraser_N ;
        Ruler = mkCN ruler_N ;
        String = mkCN string_N ;
        Paint = mkCN paint_N ;

        I = i_Pron ;
        You = youSg_Pron ;
        She = she_Pron ;

    oper
        simple_drawing_instrument : N -> { cn : CN ; rs : RS ; use_rs : Bool} = \n -> {
            cn = mkCN n ;
            rs = mkRS (mkVP dummy_V) ;
            use_rs = False
        } ;

        reconstruct_poss_instrument : { cn : CN ; rs : RS ; use_rs : Bool} -> Pron -> NP = \instr,pron -> case instr.use_rs of {
            True => mkNP (mkNP pron instr.cn) instr.rs ;
            False => mkNP pron instr.cn
        } ;

        reconstruct_instrument : { cn : CN ; rs : RS ; use_rs : Bool} -> NP = \instr -> case instr.use_rs of {
            True => mkNP (mkNP instr.cn) instr.rs ;
            False => mkNP instr.cn
        } ;       


}