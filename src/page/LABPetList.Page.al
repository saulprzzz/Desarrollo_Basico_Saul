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
                    ToolTip = 'Número de mascota';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                    ToolTip = 'Nombre de la mascota';
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
                field("Owner Name"; Rec."Owner Name")
                {
                    Caption = 'Nombre del propietario';
                    ApplicationArea = All;
                    ToolTip = 'Nombre del propietario';
                }
                field("Owner Phone No."; Rec."Owner Phone No.")
                {
                    Caption = 'Número teléfono del propietario';
                    ApplicationArea = All;
                    ToolTip = 'Número de teléfono del propietario';
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
                ToolTip = 'Visitas de la mascota';
                ApplicationArea = All;
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