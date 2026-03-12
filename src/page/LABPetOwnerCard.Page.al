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
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Dirección';
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'Número de teléfono';
                    ApplicationArea = All;
                }
                field("E-mail"; Rec."E-mail")
                {
                    Caption = 'E-mail';
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

}