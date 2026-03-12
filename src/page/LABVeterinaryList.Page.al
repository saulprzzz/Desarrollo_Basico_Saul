page 50202 "LABVeterinary List"
{
    Caption = 'Veterinarios';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LABVeterinary;
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
                    ToolTip = 'Número del veterinario';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                    ToolTip = 'Nombre del veterinario';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'Número de teléfono';
                    ApplicationArea = All;
                    ToolTip = 'Número de teléfono del veterinario';
                }
            }
        }
    }
}