page 50207 "LABPet List"
{
    Caption = 'Mascotas';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;  //Searchable
    SourceTable = LABPets;
    Editable = false;
    CardPageId = "LABPet Card";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                field(Age; Rec.Age)
                {
                    Caption = 'Edad';
                    ApplicationArea = All;
                }
                field(Microchip; Rec.Microchip)
                {
                    Caption = 'Microchip';
                    ApplicationArea = All;
                }
                field("Owner Name"; Rec."Owner Name")
                {
                    Caption = 'Nombre del propietario';
                    ApplicationArea = All;
                }
                field("Owner Phone No."; Rec."Owner Phone No.")
                {
                    Caption = 'Número de teléfono del propietario';
                    ApplicationArea = All;
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Vistas)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}