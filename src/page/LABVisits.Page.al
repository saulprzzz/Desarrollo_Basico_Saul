page 50211 "LABVisits"
{
    PageType = Document;
    Caption = 'Visitas';
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "LABVisits Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                    Caption = 'Número';
                    ToolTip = 'Número de la visita';
                }
                field("Pet No."; Rec."Pet No.")
                {
                    ApplicationArea = all;
                    Caption = 'Número de la mascota';
                    ToolTip = 'Número de la mascota';
                }
                field("Visit Date"; Rec."Visit Date")
                {
                    ApplicationArea = all;
                    Caption = 'Fecha de la visita';
                    ToolTip = 'Fecha de la visita';
                }
                field(Veterinary; Rec.Veterinary)
                {
                    ApplicationArea = all;
                    Caption = 'Veterinario';
                    ToolTip = 'Veterinario encargado de la visita';
                }
                field("Pet Name"; Rec."Pet Name")
                {
                    ApplicationArea = all;
                    Caption = 'Nombre de la mascota';
                    ToolTip = 'Nombre de la mascota';
                }

            }

            part(Lines; "LABVisit Subform")
            {
                ApplicationArea = all;
                SubPageLink = "Visit No." = field("No.");
            }

            group(Comunicación)
            {
                field("Pet Owner"; Rec."Pet Owner")
                {
                    ApplicationArea = all;
                    Caption = 'Dueño de la mascota';
                    ToolTip = 'Nombre del dueño de la mascota';
                }
                field("Pet Address"; Rec."Pet Address")
                {
                    ApplicationArea = all;
                    Caption = 'Dirección del dueño';
                    ToolTip = 'Dirección del dueño de la mascota';
                }
                field("Pet Phone No"; Rec."Pet Phone No")
                {
                    ApplicationArea = all;
                    Caption = 'Teléfono del dueño';
                    ToolTip = 'Número de teléfono del dueño de la mascota';
                }
            }
        }
    }
}