page 50203 "LABVisit Concepts List"
{
    Caption = 'Conceptosde visita';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LABVisitConcepts;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'Número';
                    ApplicationArea = All;
                    ToolTip = 'Número del concepto de la visita';
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Descripción';
                    ApplicationArea = All;
                    ToolTip = 'Descripción del concepto de la visita';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'Precio unitario';
                    ToolTip = 'Precio unitario de la visita';
                    ApplicationAreA = All;
                }
            }
        }
    }

}