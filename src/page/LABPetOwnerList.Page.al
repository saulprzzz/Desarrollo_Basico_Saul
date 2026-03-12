page 50204 "LABPet Owner List"
{
    Caption = 'Propietarios';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LABPetOwners;
    Editable = false;
    CardPageId = "LABPet Owner List";

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
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'Número de teléfono';
                    ApplicationArea = All;
                }
                field("How Many Pets"; Rec."How Many Pets")
                {
                    Caption = '¿Cuantas mascotas?';
                    ApplicationArea = All;
                }
            }
        }

    }
    actions
    {
        area(Processing)
        {
            action(GeneralAct)
            {
                Caption = 'General';
                Tooltip = 'Open general information';
                Image = Edit;
                trigger OnAction()
                begin
                    Message('Action executed');
                end;
            }
        }
    }
}