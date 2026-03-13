page 50209 "LABVisit List"
{
    PageType = List;
    Caption = 'Visitas';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LABVisits Header";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'Número';
                    ApplicationArea = All;
                    ToolTip = 'Número de la visita';
                }
                field("Pet No."; Rec."Pet No.")
                {
                    Caption = 'Número mascota';
                    ApplicationArea = all;
                    ToolTip = 'Número de la mascota';
                }
                field("Pet Name"; Rec."Pet Name")
                {
                    Caption = 'Nombre mascota';
                    ApplicationArea = All;
                    ToolTip = 'Nombre de la masctoa';
                }
                field("Pet Owner"; Rec."Pet Owner")
                {
                    ApplicationArea = All;
                    Caption = 'Dueño de la mascota';
                    ToolTip = 'Dueño de la mascota';
                }
                field("Visit Date"; Rec."Visit Date")
                {
                    ApplicationArea = all;
                    Caption = 'Fecha de visita';
                    ToolTip = 'Fecha de la visita';
                }
                field(Veterinary; Rec.Veterinary)
                {
                    ApplicationArea = all;
                    Caption = 'Veterinario';
                    ToolTip = 'Veterinario de la mascota';
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Mascota)
            {
                Caption = 'Mascota';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Administration;
                trigger OnAction()
                begin
                end;
            }
            action(Propietario)
            {
                Caption = 'Propietario';
                ApplicationArea = All;
                Image = User;
                trigger OnAction()
                begin
                end;
            }
        }
    }
}