page 50205 "LABPet Owner Card"
{
    Caption = 'Ficha del propietario';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = LABPetOwners;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'Número';
                    ApplicationArea = All;
                    ToolTip = 'Número del propietario';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                    ToolTip = 'Nombre del propietario';
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Dirección';
                    ApplicationArea = All;
                    ToolTip = 'Dirección del propietario';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'Número de teléfono';
                    ApplicationArea = All;
                    ToolTip = 'Número de teléfono del propietario';
                }
                field("E-mail"; Rec."E-mail")
                {
                    Caption = 'E-mail';
                    ApplicationArea = All;
                    ToolTip = 'E-mail del propietario';
                }
                field("How Many Pets"; Rec."How Many Pets")
                {
                    Caption = '¿Cuantas mascotas?';
                    ApplicationArea = All;
                    ToolTip = '¿Cuantas mascotas vivas tiene el propietario?';
                }
            }
        }
    }

}