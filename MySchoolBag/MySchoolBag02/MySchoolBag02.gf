abstract MySchoolBag02 = {

    flags
        startcat = S ;
    
    cat
        S ;
        StatementS ;
        RequestS ;
        -- InstructS ;
        OpenableObject ;
        DrawingInstrument ;
        ColouringInstrument ;
        PaintingInstrument ;
        StickingInstrument ;
        CuttingInstrument ;
        PlayingInstrument ;
        UseableObject ;
        UseObject ;
        Actor ;

    fun
        Statement : StatementS -> S ;
        Request : RequestS -> S ;
        -- Instruction : InstructS -> S ;

        -- OpenOpenableObjectPoss : Actor -> OpenableObject -> StatementS ;
        OpenOpenableObject : Actor -> OpenableObject -> StatementS ;
        -- OpenInstruction : Actor -> OpenableObject -> InstructS ;

        -- DrawS : Actor -> StatementS ;
        -- WriteS : Actor -> StatementS ;
        -- ColourS : Actor -> StatementS ;
        -- PaintS : Actor -> StatementS ;
        -- CutS : Actor -> StatementS ;
        -- PlayS : Actor -> StatementS ;

        DrawWith : Actor -> DrawingInstrument -> StatementS ;
        WriteWith : Actor -> DrawingInstrument -> StatementS ;
        ColourWith : Actor -> ColouringInstrument -> StatementS ;
        PaintWith : Actor -> PaintingInstrument -> StatementS ;
        CutWith : Actor -> CuttingInstrument -> StatementS ;
        PlayWith : Actor -> PlayingInstrument -> StatementS ;

        -- UseDrawingObject : Actor -> DrawingInstrument -> StatementS ;
        -- UseWritingObject : Actor -> DrawingInstrument -> StatementS ;
        -- UseColouringObject : Actor -> ColouringInstrument -> StatementS ;
        -- UsePaintingObject : Actor -> PaintingInstrument -> StatementS ;
        -- UseCuttingObject : Actor -> CuttingInstrument -> StatementS ;

        -- DrawWithPoss : Actor -> DrawingInstrument -> StatementS ;
        -- WriteWithPoss : Actor -> DrawingInstrument -> StatementS ;
        -- ColourWithPoss : Actor -> ColouringInstrument -> StatementS ;
        -- PaintWithPoss : Actor -> PaintingInstrument -> StatementS ;
        -- CutWithPoss : Actor -> CuttingInstrument -> StatementS ;

        -- UseDrawingObjectPoss : Actor -> DrawingInstrument -> StatementS ;
        -- UseWritingObjectPoss : Actor -> DrawingInstrument -> StatementS ;
        -- UseColouringObjectPoss : Actor -> ColouringInstrument -> StatementS ;
        -- UsePaintingObjectPoss : Actor -> PaintingInstrument -> StatementS ;
        -- UseCuttingObjectPoss : Actor -> CuttingInstrument -> StatementS ;

        Use : Actor -> UseableObject -> StatementS ;
        BorrowRequest : UseObject -> RequestS ;

        DrawingUseObject : DrawingInstrument -> UseableObject ;
        ColouringUseObject : ColouringInstrument -> UseableObject ;
        PaintingUseObject : PaintingInstrument -> UseableObject ;
        CuttingUseObject : CuttingInstrument -> UseableObject ;

        SchoolBag : OpenableObject ;
        Book : OpenableObject ;
        LunchBox : OpenableObject ;
        Bottle : OpenableObject ;
        PencilCase : OpenableObject ;

        Pencil : DrawingInstrument ;
        ColouredPencil : DrawingInstrument ;
        -- Koki : DrawingInstrument ;
        Pen : DrawingInstrument ;
        Crayon : DrawingInstrument ;
        Ink : DrawingInstrument ;

        Paintbrush : PaintingInstrument ;

        Scissors : CuttingInstrument ;
        Clay : PlayingInstrument ;
        -- Blocks : PlayingInstrument ;

        Glue : UseObject ;
        Tape : UseObject ;
        Eraser : UseObject ;
        Ruler : UseObject ;
        String : UseObject ;
        Paint : UseObject ;

        I : Actor ;
        You : Actor ;
        She : Actor ;

}