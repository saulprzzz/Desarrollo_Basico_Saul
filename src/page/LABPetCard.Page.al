page 50208 "LABPet Card"
{
    Caption = 'Ficha mascota';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = LABPets;

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
                field("Date of birth"; Rec."Date of birth")
                {
                    Caption = 'Fecha de nacimiento';
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
                field(Sex; Rec.Sex)
                {
                    Caption = 'Sexo';
                    ApplicationArea = All;
                }
                field(Species; Rec.Species)
                {
                    Caption = 'Especie';
                    ApplicationArea = All;
                }
                field(Breed; Rec.Breed)
                {
                    Caption = 'Raza';
                    ApplicationArea = All;
                    ToolTip = 'Raza de la mascota';
                }
                field("Preferred Veterinary"; Rec."Preferred Veterinary")
                {
                    Caption = 'Veterinaria preferida';
                    ApplicationArea = All;
                }
                field("Veterinary Name"; Rec."Veterinary Name")
                {
                    Caption = 'Nombre de la veterinaria';
                    ApplicationArea = All;
                }
                field(Deceased; Rec.Deceased)
                {
                    Caption = '¿Fallecido?';
                    ApplicationArea = All;
                    ToolTip = '¿El animal ha fallecido?';
                }

            }
            group(Propietario)
            {
                field("Owner No."; Rec."Owner No.")
                {
                    Caption = 'Número del propietario';
                    ApplicationArea = all;

                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Owner Name"; Rec."Owner Name")
                {
                    Caption = 'Nombre propietario';
                    ApplicationArea = All;
                }
                field("Owner address"; Rec."Owner address")
                {
                    Caption = 'Dirección del dueño';
                    ApplicationArea = all;
                }
                field("Owner Phone No."; Rec."Owner Phone No.")
                {
                    Caption = 'Numero de teléfono del propietario';
                    ApplicationArea = all;
                }
                field("Owner E-Mail"; Rec."Owner E-Mail")
                {
                    Caption = 'E-mail del propietario';
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
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