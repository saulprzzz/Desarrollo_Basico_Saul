page 50208 "LABPet Card"
{
    Caption = 'Ficha mascota';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = LABPets;
    CardPageId = LABVisits;

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
                    ToolTip = 'Número de mascota';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                    ToolTip = 'Nombre de la mascota';
                }
                field("Date of birth"; Rec."Date of birth")
                {
                    Caption = 'Fecha de nacimiento';
                    ApplicationArea = All;
                    ToolTip = 'Fecha de nacimiento de la mascota';
                }
                field(Age; Rec.Age)
                {
                    Caption = 'Edad';
                    ApplicationArea = All;
                    ToolTip = 'Edad de la mascota';
                }
                field(Microchip; Rec.Microchip)
                {
                    Caption = 'Microchip';
                    ApplicationArea = All;
                    ToolTip = 'Microchip de la mascota';
                }
                field(Sex; Rec.Sex)
                {
                    Caption = 'Sexo';
                    ApplicationArea = All;
                    ToolTip = 'Sexo de la mascota';
                }
                field(Species; Rec.Species)
                {
                    Caption = 'Especie';
                    ApplicationArea = All;
                    ToolTip = 'Especie de la mascota';
                }
                field(Breed; Rec.Breed)
                {
                    Caption = 'Raza';
                    ApplicationArea = All;
                    ToolTip = 'Raza de la mascota';
                }
                field("Preferred Veterinary"; Rec."Preferred Veterinary")
                {
                    Caption = 'Veterinario preferido';
                    ApplicationArea = All;
                    ToolTip = 'Veterinario preferido del propietario de la mascota';

                }
                field("Veterinary Name"; Rec."Veterinary Name")
                {
                    Caption = 'Nombre del veterinario';
                    ApplicationArea = All;
                    ToolTip = 'Nombre del veterinario de la mascota';
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
                    ToolTip = 'Número del propietario';

                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Owner Name"; Rec."Owner Name")
                {
                    Caption = 'Nombre del propietario';
                    ApplicationArea = All;
                    ToolTip = 'Nombre del propietario de la mascota';

                }
                field("Owner address"; Rec."Owner address")
                {
                    Caption = 'Dirección del propietario';
                    ApplicationArea = all;
                    ToolTip = 'Dirección del propietario de la mascota';
                }
                field("Owner Phone No."; Rec."Owner Phone No.")
                {
                    Caption = 'Numero de teléfono del propietario';
                    ApplicationArea = all;
                    ToolTip = 'Numero de teléfono del propietario';
                }
                field("Owner E-Mail"; Rec."Owner E-Mail")
                {
                    Caption = 'E-mail del propietario';
                    ApplicationArea = all;
                    ToolTip = 'Correo electronico del propietario';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Visitas)
            {
                Caption = 'Visitas';
                ApplicationArea = All;
                ToolTip = 'Visitas';
                Image = Calendar;
                trigger OnAction()
                var
                    v: Record "LABVisits Header";
                begin
                    v.SetRange("Pet No.", Rec."No.");
                    Page.Run(Page::"LABVisit List", v);
                end;
            }
        }
    }
}