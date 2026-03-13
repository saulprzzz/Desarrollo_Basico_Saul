page 50209 "LABVisit List"
{
    PageType = List;
    Caption = 'Visitas';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "LABVisits Header";

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
                ToolTip = 'Información de la mascota';
                PromotedCategory = Process;
                Image = Administration;

                trigger OnAction()
                var
                    v: Record LABPets;

                begin
                    if v.Get(Rec."Pet No.") then
                        Page.Run(Page::"LABPet Card", v);

                end;
            }
            action(Propietario)
            {
                Caption = 'Propietario';
                ApplicationArea = All;
                ToolTip = 'Información del propietario de la mascota';
                Image = User;
                trigger OnAction()
                var
                    v2: Record LABPetOwners;
                begin
                    if v2.Get(Rec."Pet Owner") then
                        Page.Run(Page::"LABPet Owner Card", v2);
                end;
            }
        }
    }
}