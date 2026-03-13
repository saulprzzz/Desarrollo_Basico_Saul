page 50210 "LABVisit Subform"
{
    PageType = ListPart;
    Caption = 'Líneas';
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "LABVisits Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'Numero';
                    ToolTip = 'Numero de visita';
                    ApplicationArea = all;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Descripción';
                    ApplicationArea = all;
                    ToolTip = 'Descripción';
                }
                field(Quantity; Rec.Quantity)
                {
                    Caption = 'Cantidad';
                    ApplicationArea = all;
                    ToolTip = 'Cantidad';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'Precio unitario';
                    ApplicationArea = all;
                    ToolTip = 'Precio unitario';
                }
                field(Amount; Rec.Amount)
                {
                    Caption = 'Total';
                    ApplicationArea = all;
                    ToolTip = 'Total';
                }
                field("Visit No."; Rec."Visit No.")
                {
                    ApplicationArea = all;
                    Caption = 'Numero de visita';
                    ToolTip = 'Numero de visita';
                    Editable = false;
                    Visible = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = all;
                    Caption = 'Numero de linea';
                    ToolTip = 'Numero de linea';
                    Editable = false;
                    Visible = false;
                }
            }
        }
    }
}